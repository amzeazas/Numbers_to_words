require('rspec')
require('Numbers_to_words')

describe('Fixnum#Numbers_to_words') do
  it("Turns single-digit numbers in numeric form into written words") do
    expect(3.Numbers_to_words()).to(eq("three"))
  end
end
