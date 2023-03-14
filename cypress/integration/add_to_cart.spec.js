
describe("Visiting the homepage", () => {
  it("should visit the homepage after logging in", () => {
    // visit the login page
    cy.visit("/", { failOnStatusCode: false });

  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });
  

  it("should click on add cart button", () => {
    cy.get('#navbarSupportedContent > :nth-child(2) > :nth-child(2) > .nav-link').should('contain', '0');
    cy.get(':nth-child(1) > div > .button_to > .btn').click({force: true});
    cy.get('#navbarSupportedContent > :nth-child(2) > :nth-child(2) > .nav-link').should('contain', '1');
  }); 



});