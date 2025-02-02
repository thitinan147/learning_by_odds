import { Cart } from "../page_object_model/cart_page";
import { CheckoutInformation } from "../page_object_model/checkout_information";
import { Login } from "../page_object_model/login_page";
import { Shopping } from "../page_object_model/shopping_page";
import { SummaryOrder } from "../page_object_model/summary_order";

describe('Sauce demo', () => {

    const loginPage = new Login();
    const shoppingPage = new Shopping();
    const cartPage = new Cart();
    const checkoutInformationPage = new CheckoutInformation();
    const summaryOrderPage = new SummaryOrder();

    beforeEach(() => {
        cy.intercept('POST', 'https://events.backtrace.io/api/summed-events/submit?universe=*&token=*', {
            statusCode: 200,
            body: {}
        });

        cy.intercept('POST', 'https://events.backtrace.io/api/unique-events/submit?universe=UNIVERSE&token=TOKEN', {
            statusCode: 200,
            body: {}
        });

        cy.visit('https://www.saucedemo.com/');

    });

    it('login with empty field username & password', () => {
        cy.get('[data-test="login-button"]').click()
        cy.get('[data-test="error"]').should('have.text', 'Epic sadface: Username is required')
    });

    it('login with invalid username & password', () => {
        loginPage.loginAndClick('tek', 'ni')
        cy.get('[data-test="error"]').should('have.text', 'Epic sadface: Username and password do not match any user in this service')
    });

    it('login with valid username and password ', () => {
        loginPage.loginAndClick('standard_user', 'secret_sauce')
        cy.get('[data-test="title"]').should('have.text', 'Products')
    });

    it.only('add to cart and check out', () => {
        loginPage.loginAndClick('standard_user', 'secret_sauce')
        shoppingPage.selectBackpackAndClickShoppingCart()
        cartPage.clickCheckoutButton();
        checkoutInformationPage.inputInformationCheckoutAndClick('tek', 'ni', '49000')
        summaryOrderPage.clickFinishButton();

        cy.get('[data-test="complete-header"]').should('have.text', 'Thank you for your order!')

    });
});
