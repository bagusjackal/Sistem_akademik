describe("Guru", function () {
    beforeEach(function () {
    cy.fixture("user").then(function (user) {
        this.user = user;
        cy.visit("/login");
        cy.url().should('include','/login');
        cy.get("#email").type("dewi@gmail.com");
        cy.get("#password").type("12345678");
        cy.get("#btn-login").click();
    });
  });

    it("Absen Guru", function () {
        cy.get('#AbsenGuru').click();
        cy.get('#id_card').type('00001');
        cy.get('#select2-kehadiran_id-container').type('Hadir{Enter}');  
    });

    it("Jadwal Guru", function () {
        cy.get('#JadwalGuru').click();
    });


    it("Entry Nilai Ulangan", function () {
        cy.contains('Nilai').click();
        cy.contains('Entry Nilai Ulangan').click();
        cy.get('.odd > :nth-child(3) > .btn').click();

        // cy.get(':nth-child(6) > :nth-child(3) > .form-control').type('10');
        // cy.get(':nth-child(6) > :nth-child(4) > .form-control').type('10');
        // cy.get(':nth-child(6) > :nth-child(5) > .form-control').type('10');
        // cy.get(':nth-child(6) > :nth-child(6) > .form-control').type('10');
        // cy.get(':nth-child(6) > :nth-child(7) > .form-control').type('10'); eror uas
        // cy.get('#submit-1').click({force:true});

        // cy.get(':nth-child(8) > :nth-child(3) > .form-control').type('10');
        // cy.get(':nth-child(8) > :nth-child(4) > .form-control').type('10');
        // cy.get(':nth-child(8) > :nth-child(5) > .form-control').type('10');
        // cy.get(':nth-child(8) > :nth-child(6) > .form-control').type('10');
        // cy.get(':nth-child(8) > :nth-child(7) > .form-control').type('10');eror uas
        // cy.get('#submit-4').click({force:true});
    });

    it("Entry Nilai Rapot", function () {
        cy.contains('Nilai').click();
        cy.contains('Entry Nilai Rapot').click();
        cy.get('.odd > :nth-child(3) > .btn').click();

        
    });

    it("Entry Nilai Predikat", function () {
        cy.contains('Nilai').click();
        cy.contains('Deskripsi Predikat').click();
        // cy.get('.odd > :nth-child(3) > .btn').click();

        
    });

})