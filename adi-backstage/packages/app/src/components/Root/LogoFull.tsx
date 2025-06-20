import CompanyLogoIcon from './logo/dr-seuss-logo.jpg';

/*
import { makeStyles } from '@material-ui/core';

const useStyles = makeStyles({
  svg: {
    width: 'auto',
    height: 30,
  },
  path: {
    fill: '#7df3e1',
  },
});
*/
const LogoFull = () => {
  return <img src={CompanyLogoIcon} width="175" height="50"/>;
};

export default LogoFull;
