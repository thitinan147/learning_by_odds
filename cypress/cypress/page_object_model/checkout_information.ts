export class CheckoutInformation {
    inputInformationCheckoutAndClick(firstName: string, lastName: string, zipCode: string) {
        cy.get('[data-test="firstName"]').type(firstName)
        cy.get('[data-test="lastName"]').type(lastName)
        cy.get('[data-test="postalCode"]').type(zipCode)
        cy.get('[data-test="continue"]').click()
    }

}