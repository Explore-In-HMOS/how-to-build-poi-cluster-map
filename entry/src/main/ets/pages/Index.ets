import { MapComponent, mapCommon, map } from '@kit.MapKit';
import { AsyncCallback } from '@kit.BasicServicesKit';
import { ArcButton, ArcButtonOptions, ArcButtonStyleMode, ArcButtonPosition, ColorMetrics } from '@kit.ArkUI';
import {
  MOCK_CLUSTER_ITEMS,
  MOCK_MASS_POINTS,
  MAP_CENTER,
  MAP_INITIAL_ZOOM,
  CLUSTER_DISTANCE
} from '../model/MockPoiData';

/**
 * Target APIs demonstrated:
 *   - ClusterOverlay      : groups POI points into tap-able cluster markers
 *   - MarkerClusterInfo   : delivers cluster metadata (count + marker) on tap
 *   - MarkerDelegate      : customises the cluster info window via @BuilderParam
 *   - MassPointOverlay    : renders a lightweight density dot layer + tap events
 *
 * Additional APIs:
 *   - MapComponentController : map init, camera, gesture controls
 *   - MapEventManager        : massPointOverlayClick listener
 *   - animateCamera / newCameraPosition : smooth camera movement
 */
@Entry
@Component
struct Index {
  private mapOptions?: mapCommon.MapOptions;
  private mapCallback?: AsyncCallback<map.MapComponentController>;
  private mapController?: map.MapComponentController;
  private mapEventManager?: map.MapEventManager;
  private clusterOverlay?: map.ClusterOverlay;
  private massPointOverlay?: map.MassPointOverlay;
  @State private showClusterPanel: boolean = false;
  @State private infoClusterCount: number = 0;
  private lastTappedMassPoint: string = '';

  aboutToAppear(): void {
    this.mapOptions = {
      position: {
        target: MAP_CENTER,
        zoom: MAP_INITIAL_ZOOM
      },
      zoomGesturesEnabled: true,
      scrollGesturesEnabled: true,
      zoomControlsEnabled: false,
      compassControlsEnabled: false,
      scaleControlsEnabled: false
    };

    this.mapCallback = async (err, controller) => {
      if (err) {
        console.error('[POIClusterMap] Map init error:', err.message);
        return;
      }
      this.mapController = controller;
      this.mapEventManager = this.mapController.getEventManager();

      const onMapLoad = async () => {
        await this.setupMassPointOverlay();
        await this.setupClusterOverlay();
        this.registerMassPointTapListener();
      };
      this.mapEventManager.on('mapLoad', onMapLoad);
    };
  }

  onPageShow(): void {
    this.mapController?.show();
  }

  onPageHide(): void {
    this.mapController?.hide();
  }

  /**
   * Adds a MassPointOverlay with 200 points across the Europe region.
   * Demonstrates: addMassPointOverlay, setVisible, isVisible.
   */
  private async setupMassPointOverlay(): Promise<void> {
    const items: mapCommon.MassPointItem[] = MOCK_MASS_POINTS.map(
      (p): mapCommon.MassPointItem => ({
        itemId: p.itemId,
        position: p.position,
        title: p.title,
        snippet: p.snippet
      })
    );

    const params: mapCommon.MassPointOverlayParams = {
      id: 'mass_point_layer',
      items: items,
      icon: $rawfile('dot.png')
    };
    try {
      this.massPointOverlay = await this.mapController?.addMassPointOverlay(params);
      console.info('[POIClusterMap] MassPointOverlay added, items:', items.length);
    } catch (e) {
      console.error('[POIClusterMap] addMassPointOverlay failed:', e.message);
    }
  }

  /**
   * Registers a MassPointOverlayClick listener via MapEventManager.
   * Demonstrates: MassPointOverlayCallback, mapEventManager.on.
   */
  private registerMassPointTapListener(): void {
    const massCallback: map.MassPointOverlayCallback = (overlay, item) => {
      console.info(`[POIClusterMap] massPointClick overlayId:${overlay.getId()}, item:${item.title}`);
      this.lastTappedMassPoint = item.title ?? '';
    };
    this.mapEventManager?.on('massPointOverlayClick', massCallback);
  }

  /**
   * Toggles MassPointOverlay visibility.
   * Demonstrates: isVisible(), setVisible().
   */
  private toggleDensityLayer(): void {
    if (!this.massPointOverlay) {
      return;
    }
    const current: boolean = this.massPointOverlay.isVisible();
    this.massPointOverlay.setVisible(!current);
  }

  /**
   * Adds ClusterOverlay with 20 Istanbul POIs.
   * Registers markerClusterClick to receive MarkerClusterInfo on each cluster tap.
   *
   * Demonstrates:
   *   - addClusterOverlay
   *   - ClusterOverlay.on('markerClusterClick')
   *   - MarkerClusterInfo.clusterItems  → POI count
   *   - MarkerClusterInfo.marker        → MarkerDelegate handle → setTitle()
   */
  private async setupClusterOverlay(): Promise<void> {
    const params: mapCommon.ClusterOverlayParams = {
      distance: CLUSTER_DISTANCE,
      clusterItems: MOCK_CLUSTER_ITEMS
    };
    try {
      this.clusterOverlay = await this.mapController?.addClusterOverlay(params);
    } catch (e) {
      console.error('[POIClusterMap] addClusterOverlay failed:', e.message);
      return;
    }

    this.clusterOverlay?.on('markerClusterClick', (markerClusterInfo: map.MarkerClusterInfo) => {
      const count: number = markerClusterInfo.clusterItems.length;
      // MarkerDelegate: markerClusterInfo.marker is the Marker backing this cluster.
      const delegateMarker: map.Marker = markerClusterInfo.marker;
      delegateMarker.setTitle(`${count} spots`);
      // Animate camera to keep the tapped cluster centred
      const clusterCenter: mapCommon.LatLng = delegateMarker.getPosition();
      const camPos: mapCommon.CameraPosition = {
        target: clusterCenter,
        zoom: this.mapController?.getCameraPosition().zoom ?? MAP_INITIAL_ZOOM
      };
      this.mapController?.animateCamera(map.newCameraPosition(camPos), 400);

      this.infoClusterCount = count;
      this.showClusterPanel = true;
    });
  }

  /**
   * MarkerDelegate is used here as the customInfoWindow BuilderParam on MapComponent.
   * The map engine passes a MarkerDelegate object ($$) whenever an info window
   * needs to be rendered — $$.marker gives access to the Marker being displayed.
   *
   * Demonstrates: MarkerDelegate, @Builder, customInfoWindow param on MapComponent.
   */
  @Builder
  customInfoWindowBuilder($$: map.MarkerDelegate) {
    if ($$.marker) {
      Column() {
        Text($$.marker.getTitle())
          .fontSize(13)
          .fontColor($r('app.color.color_info_panel_text'))
          .fontWeight(FontWeight.Bold)
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
      }
      .padding({
        top: 6,
        bottom: 6,
        left: 10,
        right: 10
      })
      .backgroundColor($r('app.color.color_info_panel_bg'))
      .borderRadius(8)
    }
  }

  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      // Pinch zoom drives cluster re-aggregation automatically.
      // dismiss logic is handled by the transparent overlay below instead.
      MapComponent({
        mapOptions: this.mapOptions,
        mapCallback: this.mapCallback,
        customInfoWindow: this.customInfoWindowBuilder
      })
        .width('100%')
        .height('100%')

      if (this.showClusterPanel) {
        Column()
          .width('100%')
          .height('100%')
          .backgroundColor(Color.Transparent)
          .onClick(() => {
            this.showClusterPanel = false;
          })
      }
      if (this.showClusterPanel) {
        Column() {
          Text($r('app.string.label_cluster_info_title'))
            .fontSize(13)
            .fontColor($r('app.color.color_info_panel_text'))
            .fontWeight(FontWeight.Bold)
            .margin({ bottom: 4 })

          Row({ space: 4 }) {
            Text(this.infoClusterCount.toString())
              .fontSize(12)
              .fontColor($r('app.color.color_info_panel_text'))
            Text($r('app.string.label_spots_count'))
              .fontSize(12)
              .fontColor($r('app.color.color_info_panel_text'))
          }
          .margin({ bottom: 2 })

          Text($r('app.string.label_tap_to_dismiss'))
            .fontSize(10)
            .fontColor($r('app.color.color_info_panel_sub'))
        }
        .width('78%')
        .padding({
          top: 10,
          bottom: 10,
          left: 14,
          right: 14
        })
        .backgroundColor($r('app.color.color_info_panel_bg'))
        .borderRadius(12)
        .margin({ bottom: 72 })
        .alignItems(HorizontalAlign.Center)
      }
      ArcButton({
        options: new ArcButtonOptions({
          label: 'Change density',
          position: ArcButtonPosition.BOTTOM_EDGE,
          styleMode: ArcButtonStyleMode.CUSTOM,
          backgroundColor: ColorMetrics.resourceColor($r('app.color.color_toggle_btn_on')),
          fontColor: ColorMetrics.resourceColor($r('app.color.color_toggle_btn_text')),
          onClick: () => {
            this.toggleDensityLayer();
          }
        })
      })

    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.color_map_background'))
  }
}