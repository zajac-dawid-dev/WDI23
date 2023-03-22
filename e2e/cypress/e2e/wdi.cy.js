describe('WDI23 - example test #1', () => {
  it('Check online date', () => {
    cy.visit('/');
    cy.get('p[class="intro_main__date"]').first().contains('31.03.2023, online');
  })
})