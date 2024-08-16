import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { BrowserUtility } from '../utilities/BrowserUtility.js';
import { PageManager } from "../globalPagesSetup.js";


// WRITE YOUR STEP DEFINITIONS HERE...

When('user clicks the books link', async function () {
 await PageManager.dashboardPage.bookLink.click();
});

When('user clicks the book categories drop down', async function () {
 await PageManager.booksPage.bookCategoryDropDown.click();
});

Then('I user should see {int} book categories', async function (expectedCount) {
    await PageManager.booksPage.bookCategoryDropDown.waitFor({ state: 'visible' });

    // Wait for at least one option to be present
    await PageManager.booksPage.bookCategoryDropDown.locator('option').first().waitFor({ state: 'attached' });
  
    // Add a small delay to ensure all options are loaded (if needed)
    await this.page.waitForTimeout(2000); // 2 seconds delay
  
    // Count the options
    const totalOptions = await PageManager.booksPage.bookCategoryDropDown.locator('option').count();
  
    // Log for debugging
    console.log(`Total options found: ${totalOptions}`);
  
    // Assert
    expect(totalOptions).toBe(expectedCount);
  

});