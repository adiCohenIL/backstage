import {
  createBaseThemeOptions,
  createUnifiedTheme,
  palettes,
} from '@backstage/theme';

export const DrSeussTheme = createUnifiedTheme({
  ...createBaseThemeOptions({
    //palette: palettes.light,
    palette: {
      ...palettes.light,
      primary:    { main: '#0071AD' }, // Dark sea blue
      secondary:  { main: '#ED2011' }, // Red
      background: { default: '#FFFFFF' },
    },
    navigation: {
      background: '#0071AD',
      indicator: '#FFFFFF',
      selectedColor: '#FFFFFF',
      color: '#15C0F7',
    },
    navItem: {
      hoverBackground: '#00507A',
    },

  }),
  
  fontFamily: 'Comic Sans MS',
  defaultPageTheme: 'home',
  
 // 👇 Red and white striped header
  pageTheme: {
    home: {
      backgroundImage: 'repeating-linear-gradient(10deg, #ED2011, #ED2011 23px, #FFFFFF 23px, #FFFFFF 46px)',
      shape: 'wave',
    }
  }
});



     