const puppeteer = require('puppeteer');

puppeteer.launch({headless: false, dumpio: true, devtools: true}).then(async browser => {
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
    console.log(res);

    await page.waitFor(10000)
    await browser.close();
    process.exit(1);
  } catch (e) {
    console.log(e.toString);
    console.log(e.stack);
    await browser.close();
    process.exit(1);
  }
});
