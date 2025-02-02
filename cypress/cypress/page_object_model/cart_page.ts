export class Cart {
    clickCheckoutButton() {
        cy.get('[data-test="checkout"]').click()

    }
}