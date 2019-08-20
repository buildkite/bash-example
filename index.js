const automator = require ('miniprogram-automator');

const miniProgram = automator
  .launch ({
    cliPath: '/Applications/wechatwebdevtools.app/Contents/MacOS/cli', // 工具 cli 位置，如果你没有更改过默认安装位置，可以忽略此项
    projectPath: '/Users/ivy_yao/Documents/devspace/miniapps/packages/airbnb', // 项目文件地址
  })
  .then (async miniProgram => {
    const page = await miniProgram.currentPage ();
    await page.waitFor ('.search-button');
    const element = await page.$ ('.search-button');
    await element.trigger ('press');

    await page.waitFor (async () => {
      const page = await miniProgram.currentPage ();
      return page.path === 'homesExplore/pages/homesSearchPage';
    });
    const p2 = await miniProgram.currentPage ();
    await p2.waitFor ('.listing-item');
    const listing = await p2.$ ('.listing-item');
    await listing.tap ();

    await page.waitFor (async () => {
      const page = await miniProgram.currentPage ();
      return page.path === 'homesListingDetails/pages/homesListingDetailsPage';
    });

    const pdp = await miniProgram.currentPage ();
    await pdp.waitFor ('.pdp-book-button');
    const pdpBookButton = await pdp.$ ('.pdp-book-button');
    const buttonFormButtonView = await pdpBookButton.$ ('form button view');
    //await pdp.waitFor (2000);
    console.log ('这是pdp4：', await buttonFormButtonView.text ());
    console.log (await buttonFormButtonView.wxml ());
    console.log (await buttonFormButtonView.outerWxml ());
    //await pdpBookButton.trigger ('press');
    await page.screenshot ({path: 'screenshot.png'});

    //await miniProgram.close ();
  });
