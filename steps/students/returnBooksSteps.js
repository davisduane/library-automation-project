import { Given, When, Then } from "@cucumber/cucumber";
import { expect } from "@playwright/test";
import { BrowserUtility } from "../../utilities/BrowserUtility.js";
import { PageManager } from "../../globalPagesSetup.js";

// WRITE YOUR STEP DEFINITIONS HERE...
Given('I am on the Borrowing Books page', async function () {
 await PageManager.loginPage.login('student');
 await expect(PageManager.page).toHaveTitle('Library');
 
});

Given('I have borrowed a book', async function () {
  await PageManager.borrowingBooksPage.booksModule.click();
  await PageManager.borrowingBooksPage.search.fill('Quest');
  await PageManager.borrowingBooksPage.borrowBookButton.click();
  
});

When('I click on the Return Book button for that book', async function () {
  await PageManager.borrowingBooksPage.borrowBookModule.click();
  await PageManager.borrowingBooksPage.returnBookButton.click();
 
});

Then('I should be redirected to the My Books page', async function () {
  await PageManager.borrowingBooksPage.borrowBookModule.click();
});

Then('the book should be marked as returned', async function () {
  await expect(PageManager.borrowingBooksPage.returned).toBeVisible();
  await expect(PageManager.borrowingBooksPage.returned).toHaveText('RETURNED');
 

});