const path = require('path');
require('icloud-windows-base').run({
  appName: 'iCloud Drive',
  protocol: 'icloud-drive',
  icloudUrl: 'https://www.icloud.com/iclouddrive',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
