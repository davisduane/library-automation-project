import { setWorldConstructor } from "@cucumber/cucumber";
import { BasePage } from "./BasePage.js";

export class BorrowingBooksPage extends BasePage {

  // ADD YOUR LOCATORS HERE...
  constructor(page) {
    super(page);
    this.borrowingBooks = page.locator("(//span[@class='title'])[1]");
    this.logoutButton = page.getByText('Log Out');
    this.booksModule = page.locator("(//span[@class='title'])[1]");
    this.search = page.locator("//input[@type='search' and contains(@class, 'input-sm')]");
    this.borrowBookButton = page.locator("//a[contains(@onclick, 'Books.borrow_book') and contains(@class, 'btn-primary') and not(contains(@class, 'disabled'))]")
    this.borrowBookModule = page.locator("//span[@class='title' and text()='Borrowing Books']");
    this.returnBookButton = page.locator("//tr[.//td[contains(text(), 'Quest')] and .//td[contains(text(), 'NOT RETURNED')]]//a[contains(@onclick, 'BorrowingBooks.return_book') and contains(@class, 'btn-primary')]")
    this.bookName = page.locator("//td[text()='Quest']")
    this.returned = page.locator("//tr[.//a[@onclick='BorrowingBooks.return_book(4924)']]/td[text()='RETURNED']")
    
 
 }
 }

