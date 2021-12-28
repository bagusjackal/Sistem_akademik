describe("Siswa", function () {
    beforeEach(function () {
    cy.fixture("user").then(function (user) {
        this.user = user;
        cy.visit("/login");
        cy.url().should('include','/login');
        cy.get("#email").type("farid@gmail.com");
        cy.get("#password").type("12345678");
        cy.get("#btn-login").click();
    });
  });

    it("Menu Siswa", function () {
        cy.get('#JadwalSiswa').click();
        cy.get('#UlanganSiswa').click();
        cy.get('#SikapSiswa').click();
        // cy.get('#RapotSiswa').click(); Rapot Eror
        
    });
})