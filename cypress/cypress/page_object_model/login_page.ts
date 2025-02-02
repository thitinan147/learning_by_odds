export class Login {
    loginAndClick(userName:string, password: string) {
        cy.get('[data-test="username"]').type(`${userName}`);
        cy.get('[data-test="password"]').type(`${password}`);
        cy.get('[data-test="login-button"]').click()
    }
}