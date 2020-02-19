const puppeteer = require('puppeteer');

puppeteer.launch({headless: true, dumpio: false, devtools: false}).then(async browser => {
  try {
    console.log('start access')
    let page = await browser.newPage();
    await page.goto('https://search.rakuten.co.jp/search/mall/test/?f=1&grp=product', {waitUntil: 'domcontentloaded'});

    //await page.waitFor(10000);

    let res = await page.evaluate( () => {
        element = document.getElementsByClassName("dui-card searchresultitem")[0];
        console.log(element);
        return element;
    });
    console.log("===========================");
    console.log(res);
    console.log("===========================");

    await page.waitFor(10000)
    await browser.close();
  } catch (e) {
    console.log(e.toString);
    console.log(e.stack);
    await browser.close();
    process.exit(1);
  }
});
