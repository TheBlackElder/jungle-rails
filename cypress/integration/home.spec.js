
describe("Visiting the homepage", () => {
  it("should visit the homepage after logging in", () => {
    // visit the login page
    cy.visit("http://localhost:3000", { failOnStatusCode: false });

  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 12 products on the page", () => {
    cy.get(".products article").should("have.length", 12);
  });
});



// describe("Jungle", () => {
//   beforeEach(() => {
//     // Cypress starts out with a blank slate for each test
//     // so we must tell it to visit our website with the `cy.visit()` command.
//     // Since we want to visit the same URL at the start of all our tests,
//     // we include it in our beforeEach function so that it runs before each test
//     cy.visit('http://localhost:3000/', {failOnStatusCode: false});
//   })

// //   it("There is products on the page", () => {
// //     cy.get(".products article").should("be.visible");
// // });

// // it("There is 2 products on the page", () => {
// //   cy.get(".products article").should("have.length", 2);
// // });

// });

