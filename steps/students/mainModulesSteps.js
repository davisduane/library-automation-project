import { Given, When, Then } from "@cucumber/cucumber";
import { expect } from "@playwright/test";
import { BrowserUtility } from "../../utilities/BrowserUtility.js";
import { PageManager } from "../../globalPagesSetup.js";


// WRITE YOUR STEP DEFINITIONS HERE...
Given('User is already logged in as {string}', async function (string) {
    await PageManager.loginPage.login(string);
  });
  
  Then('I should see two main modules Books, Borrowing Books', async function () {
    Then('I should see two main modules Books, Borrowing Books', async function () {
        const booksTab = PageManager.borrowingBooksPage.booksTab
        const borrowingBooksTab = PageManager.borrowingBooksPage.borrowButton
        await expect(booksTab).toBeVisible();
        await expect(booksTab).toHaveText("Books");
        await expect(borrowingBooksTab).toBeVisible();
        await expect(borrowingBooksTab).toHaveText("Borrowing Books");
        });
       
  });
