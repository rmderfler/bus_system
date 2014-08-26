describe Bus do
  it { should validate_presence_of :number }
  it { should validate_presence_of :line_id }
  it { should belong_to :line }
end