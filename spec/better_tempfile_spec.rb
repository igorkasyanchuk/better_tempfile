RSpec.describe BetterTempfile do
  it "has a version number" do
    expect(BetterTempfileVersion::VERSION).not_to be nil
  end

  it 'has proper file name and extension' do
    file = BetterTempfile.new("file.txt")
    expect(file.path).to match(/\.txt$/)
    expect(file.path).to match(/\/file/)
    file.close!
  end
end
