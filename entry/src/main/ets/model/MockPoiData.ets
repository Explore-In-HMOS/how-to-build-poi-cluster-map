import { mapCommon } from '@kit.MapKit';

/**
 MOCK_CLUSTER_ITEMS  20 Istanbul neighborhood POIs.
 Demonstrates ClusterOverlay grouping within a single city.
 MOCK_MASS_POINTS    points distributed across Europe land area.
 Demonstrates MassPointOverlay bulk dot rendering.
 */

export const MOCK_CLUSTER_ITEMS: Array<mapCommon.ClusterItem> = [
  { position: { latitude: 41.0082, longitude: 28.9784 } },
  { position: { latitude: 41.0369, longitude: 28.985 } },
  { position: { latitude: 41.0138, longitude: 28.955 } },
  { position: { latitude: 41.0451, longitude: 29.0094 } },
  { position: { latitude: 41.0117, longitude: 29.0283 } },
  { position: { latitude: 41.0482, longitude: 28.9231 } },
  { position: { latitude: 40.9905, longitude: 29.0236 } },
  { position: { latitude: 41.0628, longitude: 28.9973 } },
  { position: { latitude: 40.9773, longitude: 28.8717 } },
  { position: { latitude: 41.0773, longitude: 29.0521 } },
  { position: { latitude: 41.02, longitude: 29.1 } },
  { position: { latitude: 40.9948, longitude: 28.7983 } },
  { position: { latitude: 41.1127, longitude: 29.0658 } },
  { position: { latitude: 40.9667, longitude: 29.1167 } },
  { position: { latitude: 41.0951, longitude: 28.9774 } },
  { position: { latitude: 40.9833, longitude: 28.8667 } },
  { position: { latitude: 41.0592, longitude: 29.0613 } },
  { position: { latitude: 40.9414, longitude: 28.9567 } },
  { position: { latitude: 41.0769, longitude: 28.9444 } },
  { position: { latitude: 40.9981, longitude: 29.1478 } }
];

export const MOCK_MASS_POINTS: mapCommon.MassPointItem[] = [
  {
    itemId: 'mp_0',
    position: { latitude: 57.56022, longitude: -7.79948 },
    title: 'Point 0',
    snippet: 'mp_0'
  },
  {
    itemId: 'mp_1',
    position: { latitude: 44.98851, longitude: 1.71412 },
    title: 'Point 1',
    snippet: 'mp_1'
  },
  {
    itemId: 'mp_2',
    position: { latitude: 60.90826, longitude: 23.48158 },
    title: 'Point 2',
    snippet: 'mp_2'
  },
  {
    itemId: 'mp_3',
    position: { latitude: 66.2802, longitude: -4.82694 },
    title: 'Point 3',
    snippet: 'mp_3'
  },
  {
    itemId: 'mp_4',
    position: { latitude: 50.0563, longitude: -7.56973 },
    title: 'Point 4',
    snippet: 'mp_4'
  },
  {
    itemId: 'mp_5',
    position: { latitude: 43.04301, longitude: 15.25705 },
    title: 'Point 5',
    snippet: 'mp_5'
  },
  {
    itemId: 'mp_6',
    position: { latitude: 36.41549, longitude: 0.54421 },
    title: 'Point 6',
    snippet: 'mp_6'
  },
  {
    itemId: 'mp_7',
    position: { latitude: 57.92101, longitude: 17.15719 },
    title: 'Point 7',
    snippet: 'mp_7'
  },
  {
    itemId: 'mp_8',
    position: { latitude: 43.1052, longitude: 19.28475 },
    title: 'Point 8',
    snippet: 'mp_8'
  },
  {
    itemId: 'mp_9',
    position: { latitude: 63.42535, longitude: -8.68806 },
    title: 'Point 9',
    snippet: 'mp_9'
  },
  {
    itemId: 'mp_10',
    position: { latitude: 63.30076, longitude: 24.51069 },
    title: 'Point 10',
    snippet: 'mp_10'
  },
  {
    itemId: 'mp_11',
    position: { latitude: 47.23864, longitude: -1.53698 },
    title: 'Point 11',
    snippet: 'mp_11'
  },
  {
    itemId: 'mp_12',
    position: { latitude: 68.52385, longitude: 7.15654 },
    title: 'Point 12',
    snippet: 'mp_12'
  },
  {
    itemId: 'mp_13',
    position: { latitude: 38.69973, longitude: -4.35761 },
    title: 'Point 13',
    snippet: 'mp_13'
  },
  {
    itemId: 'mp_14',
    position: { latitude: 64.73856, longitude: 19.97885 },
    title: 'Point 14',
    snippet: 'mp_14'
  },
  {
    itemId: 'mp_15',
    position: { latitude: 63.34593, longitude: 26.02713 },
    title: 'Point 15',
    snippet: 'mp_15'
  },
  {
    itemId: 'mp_16',
    position: { latitude: 53.99987, longitude: 37.70956 },
    title: 'Point 16',
    snippet: 'mp_16'
  },
  {
    itemId: 'mp_17',
    position: { latitude: 48.55944, longitude: 17.49795 },
    title: 'Point 17',
    snippet: 'mp_17'
  },
  {
    itemId: 'mp_18',
    position: { latitude: 64.11446, longitude: 20.68895 },
    title: 'Point 18',
    snippet: 'mp_18'
  },
  {
    itemId: 'mp_19',
    position: { latitude: 65.22889, longitude: 18.7129 },
    title: 'Point 19',
    snippet: 'mp_19'
  },
  {
    itemId: 'mp_20',
    position: { latitude: 59.80773, longitude: -6.80043 },
    title: 'Point 20',
    snippet: 'mp_20'
  },
  {
    itemId: 'mp_21',
    position: { latitude: 43.36249, longitude: 4.89062 },
    title: 'Point 21',
    snippet: 'mp_21'
  },
  {
    itemId: 'mp_22',
    position: { latitude: 38.25282, longitude: 2.17396 },
    title: 'Point 22',
    snippet: 'mp_22'
  },
  {
    itemId: 'mp_23',
    position: { latitude: 38.98455, longitude: 4.34273 },
    title: 'Point 23',
    snippet: 'mp_23'
  },
  {
    itemId: 'mp_24',
    position: { latitude: 57.43111, longitude: 8.51194 },
    title: 'Point 24',
    snippet: 'mp_24'
  },
  {
    itemId: 'mp_25',
    position: { latitude: 48.27124, longitude: 1.05634 },
    title: 'Point 25',
    snippet: 'mp_25'
  },
  {
    itemId: 'mp_26',
    position: { latitude: 44.71073, longitude: 35.95942 },
    title: 'Point 26',
    snippet: 'mp_26'
  },
  {
    itemId: 'mp_27',
    position: { latitude: 57.85722, longitude: 20.23829 },
    title: 'Point 27',
    snippet: 'mp_27'
  },
  {
    itemId: 'mp_28',
    position: { latitude: 41.40428, longitude: 25.99809 },
    title: 'Point 28',
    snippet: 'mp_28'
  },
  {
    itemId: 'mp_29',
    position: { latitude: 41.13739, longitude: 9.21386 },
    title: 'Point 29',
    snippet: 'mp_29'
  },
  {
    itemId: 'mp_30',
    position: { latitude: 69.63856, longitude: 21.71999 },
    title: 'Point 30',
    snippet: 'mp_30'
  },
  {
    itemId: 'mp_31',
    position: { latitude: 54.71477, longitude: 23.86148 },
    title: 'Point 31',
    snippet: 'mp_31'
  },
  {
    itemId: 'mp_32',
    position: { latitude: 64.57839, longitude: 28.248 },
    title: 'Point 32',
    snippet: 'mp_32'
  },
  {
    itemId: 'mp_33',
    position: { latitude: 43.40216, longitude: -7.45919 },
    title: 'Point 33',
    snippet: 'mp_33'
  },
  {
    itemId: 'mp_34',
    position: { latitude: 46.38313, longitude: 3.85156 },
    title: 'Point 34',
    snippet: 'mp_34'
  },
  {
    itemId: 'mp_35',
    position: { latitude: 65.73468, longitude: 6.10454 },
    title: 'Point 35',
    snippet: 'mp_35'
  },
  {
    itemId: 'mp_36',
    position: { latitude: 58.11263, longitude: 9.99033 },
    title: 'Point 36',
    snippet: 'mp_36'
  },
  {
    itemId: 'mp_37',
    position: { latitude: 67.05189, longitude: 13.02489 },
    title: 'Point 37',
    snippet: 'mp_37'
  },
  {
    itemId: 'mp_38',
    position: { latitude: 44.63837, longitude: 2.83812 },
    title: 'Point 38',
    snippet: 'mp_38'
  },
  {
    itemId: 'mp_39',
    position: { latitude: 54.8672, longitude: 3.6116 },
    title: 'Point 39',
    snippet: 'mp_39'
  },
  {
    itemId: 'mp_40',
    position: { latitude: 55.66822, longitude: 34.0955 },
    title: 'Point 40',
    snippet: 'mp_40'
  },
  {
    itemId: 'mp_41',
    position: { latitude: 49.27932, longitude: 1.5274 },
    title: 'Point 41',
    snippet: 'mp_41'
  },
  {
    itemId: 'mp_42',
    position: { latitude: 69.91505, longitude: 15.45726 },
    title: 'Point 42',
    snippet: 'mp_42'
  },
  {
    itemId: 'mp_43',
    position: { latitude: 38.63637, longitude: -6.73841 },
    title: 'Point 43',
    snippet: 'mp_43'
  },
  {
    itemId: 'mp_44',
    position: { latitude: 39.28289, longitude: 21.11741 },
    title: 'Point 44',
    snippet: 'mp_44'
  },
  {
    itemId: 'mp_45',
    position: { latitude: 62.82674, longitude: 11.26368 },
    title: 'Point 45',
    snippet: 'mp_45'
  },
  {
    itemId: 'mp_46',
    position: { latitude: 69.86619, longitude: 16.39749 },
    title: 'Point 46',
    snippet: 'mp_46'
  },
  {
    itemId: 'mp_47',
    position: { latitude: 69.0022, longitude: 32.31743 },
    title: 'Point 47',
    snippet: 'mp_47'
  },
  {
    itemId: 'mp_48',
    position: { latitude: 44.70547, longitude: 21.76617 },
    title: 'Point 48',
    snippet: 'mp_48'
  },
  {
    itemId: 'mp_49',
    position: { latitude: 39.34855, longitude: 11.86873 },
    title: 'Point 49',
    snippet: 'mp_49'
  },
  {
    itemId: 'mp_50',
    position: { latitude: 51.15347, longitude: 36.78316 },
    title: 'Point 50',
    snippet: 'mp_50'
  },
  {
    itemId: 'mp_51',
    position: { latitude: 65.71693, longitude: 3.64267 },
    title: 'Point 51',
    snippet: 'mp_51'
  },
  {
    itemId: 'mp_52',
    position: { latitude: 52.77022, longitude: -0.42471 },
    title: 'Point 52',
    snippet: 'mp_52'
  },
  {
    itemId: 'mp_53',
    position: { latitude: 66.98566, longitude: 32.78489 },
    title: 'Point 53',
    snippet: 'mp_53'
  },
  {
    itemId: 'mp_54',
    position: { latitude: 45.79635, longitude: 21.66958 },
    title: 'Point 54',
    snippet: 'mp_54'
  },
  {
    itemId: 'mp_55',
    position: { latitude: 56.50947, longitude: -1.66372 },
    title: 'Point 55',
    snippet: 'mp_55'
  },
  {
    itemId: 'mp_56',
    position: { latitude: 61.80662, longitude: 16.89019 },
    title: 'Point 56',
    snippet: 'mp_56'
  },
  {
    itemId: 'mp_57',
    position: { latitude: 62.36261, longitude: 16.45698 },
    title: 'Point 57',
    snippet: 'mp_57'
  },
  {
    itemId: 'mp_58',
    position: { latitude: 36.17195, longitude: 35.59673 },
    title: 'Point 58',
    snippet: 'mp_58'
  },
  {
    itemId: 'mp_59',
    position: { latitude: 65.8159, longitude: 30.91995 },
    title: 'Point 59',
    snippet: 'mp_59'
  },
  {
    itemId: 'mp_60',
    position: { latitude: 46.10924, longitude: -6.21959 },
    title: 'Point 60',
    snippet: 'mp_60'
  },
  {
    itemId: 'mp_61',
    position: { latitude: 65.79133, longitude: 36.45357 },
    title: 'Point 61',
    snippet: 'mp_61'
  },
  {
    itemId: 'mp_62',
    position: { latitude: 37.88783, longitude: 27.5089 },
    title: 'Point 62',
    snippet: 'mp_62'
  },
  {
    itemId: 'mp_63',
    position: { latitude: 51.89724, longitude: 17.39057 },
    title: 'Point 63',
    snippet: 'mp_63'
  },
  {
    itemId: 'mp_64',
    position: { latitude: 44.64445, longitude: 32.87679 },
    title: 'Point 64',
    snippet: 'mp_64'
  },
  {
    itemId: 'mp_65',
    position: { latitude: 50.09826, longitude: 1.16631 },
    title: 'Point 65',
    snippet: 'mp_65'
  },
  {
    itemId: 'mp_66',
    position: { latitude: 54.10572, longitude: 26.03669 },
    title: 'Point 66',
    snippet: 'mp_66'
  },
  {
    itemId: 'mp_67',
    position: { latitude: 42.43971, longitude: 5.96238 },
    title: 'Point 67',
    snippet: 'mp_67'
  },
  {
    itemId: 'mp_68',
    position: { latitude: 69.83265, longitude: 22.19415 },
    title: 'Point 68',
    snippet: 'mp_68'
  },
  {
    itemId: 'mp_69',
    position: { latitude: 50.61445, longitude: 15.84364 },
    title: 'Point 69',
    snippet: 'mp_69'
  },
  {
    itemId: 'mp_70',
    position: { latitude: 39.67464, longitude: 1.78547 },
    title: 'Point 70',
    snippet: 'mp_70'
  },
  {
    itemId: 'mp_71',
    position: { latitude: 47.16395, longitude: 19.23882 },
    title: 'Point 71',
    snippet: 'mp_71'
  },
  {
    itemId: 'mp_72',
    position: { latitude: 43.43896, longitude: 1.57043 },
    title: 'Point 72',
    snippet: 'mp_72'
  },
  {
    itemId: 'mp_73',
    position: { latitude: 37.94926, longitude: 21.29294 },
    title: 'Point 73',
    snippet: 'mp_73'
  },
  {
    itemId: 'mp_74',
    position: { latitude: 65.15742, longitude: -5.59885 },
    title: 'Point 74',
    snippet: 'mp_74'
  },
  {
    itemId: 'mp_75',
    position: { latitude: 43.71116, longitude: 23.11093 },
    title: 'Point 75',
    snippet: 'mp_75'
  },
  {
    itemId: 'mp_76',
    position: { latitude: 42.89117, longitude: -2.64903 },
    title: 'Point 76',
    snippet: 'mp_76'
  },
  {
    itemId: 'mp_77',
    position: { latitude: 67.77524, longitude: 18.41007 },
    title: 'Point 77',
    snippet: 'mp_77'
  },
  {
    itemId: 'mp_78',
    position: { latitude: 51.80715, longitude: 28.66173 },
    title: 'Point 78',
    snippet: 'mp_78'
  },
  {
    itemId: 'mp_79',
    position: { latitude: 38.84411, longitude: 11.69046 },
    title: 'Point 79',
    snippet: 'mp_79'
  },
  {
    itemId: 'mp_80',
    position: { latitude: 50.11346, longitude: 13.41718 },
    title: 'Point 80',
    snippet: 'mp_80'
  },
  {
    itemId: 'mp_81',
    position: { latitude: 60.65312, longitude: 23.3215 },
    title: 'Point 81',
    snippet: 'mp_81'
  },
  {
    itemId: 'mp_82',
    position: { latitude: 69.4537, longitude: -4.27594 },
    title: 'Point 82',
    snippet: 'mp_82'
  },
  {
    itemId: 'mp_83',
    position: { latitude: 49.39043, longitude: 7.28653 },
    title: 'Point 83',
    snippet: 'mp_83'
  },
  {
    itemId: 'mp_84',
    position: { latitude: 65.2277, longitude: 2.9355 },
    title: 'Point 84',
    snippet: 'mp_84'
  },
  {
    itemId: 'mp_85',
    position: { latitude: 42.06221, longitude: 12.53345 },
    title: 'Point 85',
    snippet: 'mp_85'
  },
  {
    itemId: 'mp_86',
    position: { latitude: 50.05492, longitude: 4.37017 },
    title: 'Point 86',
    snippet: 'mp_86'
  },
  {
    itemId: 'mp_87',
    position: { latitude: 44.11832, longitude: 35.31675 },
    title: 'Point 87',
    snippet: 'mp_87'
  },
  {
    itemId: 'mp_88',
    position: { latitude: 50.78801, longitude: 32.34476 },
    title: 'Point 88',
    snippet: 'mp_88'
  },
  {
    itemId: 'mp_89',
    position: { latitude: 54.48622, longitude: -6.57176 },
    title: 'Point 89',
    snippet: 'mp_89'
  },
  {
    itemId: 'mp_90',
    position: { latitude: 69.97525, longitude: 31.12932 },
    title: 'Point 90',
    snippet: 'mp_90'
  },
  {
    itemId: 'mp_91',
    position: { latitude: 68.93037, longitude: 35.46562 },
    title: 'Point 91',
    snippet: 'mp_91'
  },
  {
    itemId: 'mp_92',
    position: { latitude: 52.25462, longitude: 1.25987 },
    title: 'Point 92',
    snippet: 'mp_92'
  },
  {
    itemId: 'mp_93',
    position: { latitude: 49.33589, longitude: -6.1855 },
    title: 'Point 93',
    snippet: 'mp_93'
  },
  {
    itemId: 'mp_94',
    position: { latitude: 48.57457, longitude: 38.29482 },
    title: 'Point 94',
    snippet: 'mp_94'
  },
  {
    itemId: 'mp_95',
    position: { latitude: 44.64951, longitude: 28.63539 },
    title: 'Point 95',
    snippet: 'mp_95'
  },
  {
    itemId: 'mp_96',
    position: { latitude: 51.19779, longitude: 11.30436 },
    title: 'Point 96',
    snippet: 'mp_96'
  },
  {
    itemId: 'mp_97',
    position: { latitude: 68.52746, longitude: 38.78029 },
    title: 'Point 97',
    snippet: 'mp_97'
  },
  {
    itemId: 'mp_98',
    position: { latitude: 54.67401, longitude: 25.4836 },
    title: 'Point 98',
    snippet: 'mp_98'
  },
  {
    itemId: 'mp_99',
    position: { latitude: 40.84049, longitude: 5.24198 },
    title: 'Point 99',
    snippet: 'mp_99'
  },
  {
    itemId: 'mp_100',
    position: { latitude: 68.92047, longitude: 18.80065 },
    title: 'Point 100',
    snippet: 'mp_100'
  },
  {
    itemId: 'mp_101',
    position: { latitude: 54.20573, longitude: 26.90283 },
    title: 'Point 101',
    snippet: 'mp_101'
  },
  {
    itemId: 'mp_102',
    position: { latitude: 52.84834, longitude: 31.93055 },
    title: 'Point 102',
    snippet: 'mp_102'
  },
  {
    itemId: 'mp_103',
    position: { latitude: 40.93143, longitude: 37.11739 },
    title: 'Point 103',
    snippet: 'mp_103'
  },
  {
    itemId: 'mp_104',
    position: { latitude: 38.26385, longitude: -0.0804 },
    title: 'Point 104',
    snippet: 'mp_104'
  },
  {
    itemId: 'mp_105',
    position: { latitude: 56.02871, longitude: 23.4102 },
    title: 'Point 105',
    snippet: 'mp_105'
  },
  {
    itemId: 'mp_106',
    position: { latitude: 43.61453, longitude: -3.24544 },
    title: 'Point 106',
    snippet: 'mp_106'
  },
  {
    itemId: 'mp_107',
    position: { latitude: 66.21491, longitude: 2.81834 },
    title: 'Point 107',
    snippet: 'mp_107'
  },
  {
    itemId: 'mp_108',
    position: { latitude: 56.01091, longitude: 20.73031 },
    title: 'Point 108',
    snippet: 'mp_108'
  },
  {
    itemId: 'mp_109',
    position: { latitude: 49.96326, longitude: 19.01627 },
    title: 'Point 109',
    snippet: 'mp_109'
  },
  {
    itemId: 'mp_110',
    position: { latitude: 53.536, longitude: 35.8659 },
    title: 'Point 110',
    snippet: 'mp_110'
  },
  {
    itemId: 'mp_111',
    position: { latitude: 42.54694, longitude: 25.37721 },
    title: 'Point 111',
    snippet: 'mp_111'
  },
  {
    itemId: 'mp_112',
    position: { latitude: 43.73467, longitude: 9.99772 },
    title: 'Point 112',
    snippet: 'mp_112'
  },
  {
    itemId: 'mp_113',
    position: { latitude: 58.67331, longitude: 5.39986 },
    title: 'Point 113',
    snippet: 'mp_113'
  },
  {
    itemId: 'mp_114',
    position: { latitude: 46.40811, longitude: 27.0895 },
    title: 'Point 114',
    snippet: 'mp_114'
  },
  {
    itemId: 'mp_115',
    position: { latitude: 38.00274, longitude: 12.99771 },
    title: 'Point 115',
    snippet: 'mp_115'
  },
  {
    itemId: 'mp_116',
    position: { latitude: 69.94668, longitude: 38.81263 },
    title: 'Point 116',
    snippet: 'mp_116'
  },
  {
    itemId: 'mp_117',
    position: { latitude: 38.02749, longitude: 1.23141 },
    title: 'Point 117',
    snippet: 'mp_117'
  },
  {
    itemId: 'mp_118',
    position: { latitude: 44.64941, longitude: 35.79645 },
    title: 'Point 118',
    snippet: 'mp_118'
  },
  {
    itemId: 'mp_119',
    position: { latitude: 65.88981, longitude: 33.20497 },
    title: 'Point 119',
    snippet: 'mp_119'
  },
  {
    itemId: 'mp_120',
    position: { latitude: 48.24868, longitude: -1.42815 },
    title: 'Point 120',
    snippet: 'mp_120'
  },
  {
    itemId: 'mp_121',
    position: { latitude: 64.2642, longitude: 24.76992 },
    title: 'Point 121',
    snippet: 'mp_121'
  },
  {
    itemId: 'mp_122',
    position: { latitude: 56.60288, longitude: 38.38719 },
    title: 'Point 122',
    snippet: 'mp_122'
  },
  {
    itemId: 'mp_123',
    position: { latitude: 58.06218, longitude: -8.62449 },
    title: 'Point 123',
    snippet: 'mp_123'
  },
  {
    itemId: 'mp_124',
    position: { latitude: 63.69009, longitude: 5.37018 },
    title: 'Point 124',
    snippet: 'mp_124'
  },
  {
    itemId: 'mp_125',
    position: { latitude: 58.38691, longitude: 36.06864 },
    title: 'Point 125',
    snippet: 'mp_125'
  },
  {
    itemId: 'mp_126',
    position: { latitude: 40.13304, longitude: -3.45942 },
    title: 'Point 126',
    snippet: 'mp_126'
  },
  {
    itemId: 'mp_127',
    position: { latitude: 39.19274, longitude: 17.55473 },
    title: 'Point 127',
    snippet: 'mp_127'
  },
  {
    itemId: 'mp_128',
    position: { latitude: 44.89601, longitude: 20.03183 },
    title: 'Point 128',
    snippet: 'mp_128'
  },
  {
    itemId: 'mp_129',
    position: { latitude: 57.38121, longitude: 3.67123 },
    title: 'Point 129',
    snippet: 'mp_129'
  },
  {
    itemId: 'mp_130',
    position: { latitude: 52.35435, longitude: 34.45615 },
    title: 'Point 130',
    snippet: 'mp_130'
  },
  {
    itemId: 'mp_131',
    position: { latitude: 64.69058, longitude: -4.56967 },
    title: 'Point 131',
    snippet: 'mp_131'
  },
  {
    itemId: 'mp_132',
    position: { latitude: 50.11336, longitude: 4.28065 },
    title: 'Point 132',
    snippet: 'mp_132'
  },
  {
    itemId: 'mp_133',
    position: { latitude: 57.48041, longitude: 3.57385 },
    title: 'Point 133',
    snippet: 'mp_133'
  },
  {
    itemId: 'mp_134',
    position: { latitude: 61.07247, longitude: 17.48066 },
    title: 'Point 134',
    snippet: 'mp_134'
  },
  {
    itemId: 'mp_135',
    position: { latitude: 50.2552, longitude: -8.53585 },
    title: 'Point 135',
    snippet: 'mp_135'
  },
  {
    itemId: 'mp_136',
    position: { latitude: 38.09591, longitude: 33.38911 },
    title: 'Point 136',
    snippet: 'mp_136'
  },
  {
    itemId: 'mp_137',
    position: { latitude: 66.68554, longitude: 17.18833 },
    title: 'Point 137',
    snippet: 'mp_137'
  },
  {
    itemId: 'mp_138',
    position: { latitude: 64.29353, longitude: 18.96046 },
    title: 'Point 138',
    snippet: 'mp_138'
  },
  {
    itemId: 'mp_139',
    position: { latitude: 40.60924, longitude: -2.88262 },
    title: 'Point 139',
    snippet: 'mp_139'
  },
  {
    itemId: 'mp_140',
    position: { latitude: 46.13491, longitude: 34.15111 },
    title: 'Point 140',
    snippet: 'mp_140'
  }
];

export const MAP_CENTER: mapCommon.LatLng = {
  latitude: 41.0082,
  longitude: 28.9784
};

export const MAP_INITIAL_ZOOM: number = 11;
export const CLUSTER_DISTANCE: number = 80;
