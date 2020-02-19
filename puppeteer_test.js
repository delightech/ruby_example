const puppeteer = require('puppeteer');

puppeteer.launch({headless: true, dumpio: true, devtools: true}).then(async browser => {
  try {
    console.log('start access')
    let page = await browser.newPage();
    await page.goto('https://www.yahoo.co.jp/', {waitUntil: 'domcontentloaded'});
    await browser.close();
  } catch (e) {
    console.log(e.toString);
    console.log(e.stack);
    await browser.close();
    process.exit(1);
  }
});
