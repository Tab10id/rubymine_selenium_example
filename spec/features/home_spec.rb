describe 'Home', type: :feature, js: true do
  before { visit home_path }

  it('works fine') { expect(page).to have_text('HI') }
end