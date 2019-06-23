# Write an `Array#my_all?(&prc)` method. 
# This method should return true if every element in the array satisfies the block, otherwise return false.
# Example: `[1,2,3].my_all? {|n| n.even?}` => false
# `[2,4,6].my_all? {|n| n.even?}` => true
describe 'Array#my_all' do
  arr = [1,2,3]

  it "should use NOT use built-in #all? method" do
    expect(arr).not_to receive(:all?)
    arr.my_all? { |num| num > 0 }
  end

  it "returns true if all elements match the block" do
    expect(arr.my_all? { |num| num > 0 }).to eq(true)
  end

  it "returns false if not all elements match the block" do
    expect(arr.my_all? { |num| num > 1 }).to eq(false)
  end
end
