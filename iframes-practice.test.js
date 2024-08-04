
import { test, expect } from "@playwright/test";

// Define the test group
test.describe("Test Group", () => {
  // create beforeEach hook that navigates to https://practice.cydeo.com/iframe
  test.beforeEach(async ({ page }) => {
    await page.goto("https://practice.cydeo.com/iframe");
  });


  test("Locate the iframe by id", async ({ page }) => {
    const myFrame = page.frameLocator("#mce_0_ifr");

    const elementInsideTheFrame = myFrame.locator("//body[@id='tinymce']");

    await elementInsideTheFrame.clear();

  //  await page.waitForTimeout(3000);
    await elementInsideTheFrame.press("Control+A");
 //   await page.waitForTimeout(3000);
    await elementInsideTheFrame.press("Backspace");
  //  await page.waitForTimeout(3000);

    await elementInsideTheFrame.fill("Hello World!")

    // pause the automation for 3 seconds
  //  await page.waitForTimeout(3000);

    console.log(await elementInsideTheFrame.innerText());

    await expect(elementInsideTheFrame).toHaveText("Hello World!");


  });
});