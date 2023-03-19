describe('WDI23 - example test #1', () => {
  it('Check endpoint', () => {
    cy.request('GET', 'test').then(
        (response) => {
          expect(response.body).to.have.property('message', 'WDI-23')
        }
    )
  })
})