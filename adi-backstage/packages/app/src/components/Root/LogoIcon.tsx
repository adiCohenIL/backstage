import CompanyLogoIcon from './logo/dr-seuss-icon.jpg';

/*
import { makeStyles } from '@material-ui/core';

const useStyles = makeStyles({
  svg: {
    width: 'auto',
    height: 28,
  },
  path: {
    fill: '#7df3e1',
  },
});
*/
const LogoIcon = () => {
  return <img src={CompanyLogoIcon} width="40" height="40"/>;
};

export default LogoIcon;
