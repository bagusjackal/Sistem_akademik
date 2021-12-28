describe('The Home Page', () => {
    it('successfully loads', () => {
      cy.visit('http://localhost:8000') 
    });
  
    it('Login Users', () => {
        cy.visit('/login');
        cy.url().should('include','/login');
        cy.get('input[name="email"]').type("farid@gmail.com");
        cy.get('input[name="password"]').type("12345678");
        cy.get('button').contains('Login').click();
        cy.url().should('include','');
        // cy.get('button')
        // cy.get("#AdminHome > p").click();
    })
  })