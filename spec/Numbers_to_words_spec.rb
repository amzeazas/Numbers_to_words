require('rspec')
require('Numbers_to_words')
require('ones_teens_logic')

describe('Fixnum#Numbers_to_words') do
  it("Turns single-digit numbers in numeric form into written words") do
    expect(3.Numbers_to_words()).to(eq("three"))
  end

  it("Turns double-digit numbers in numeric form into written words") do
    expect(25.Numbers_to_words()).to(eq("twenty five"))
  end

  it("Turns triple-digit numbers in numeric form into written words") do
    expect(117.Numbers_to_words()).to(eq("one hundred seventeen"))
  end

end
