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
  }),
  
  fontFamily: 'Comic Sans MS',
  defaultPageTheme: 'home',
  
 // 👇 Red and white striped header
  pageTheme: {
    home: {
      backgroundImage: 'repeating-linear-gradient(10deg, #ED2011, #ED2011 23px, #FFFFFF 23px, #FFFFFF 46px)',
      shape: 'wave',
      colors: ['#ED2011', '#FFFFFF'],
      fontColor: '#000000',

    }
  }
});



     