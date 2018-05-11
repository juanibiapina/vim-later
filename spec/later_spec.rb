require "support/fixtures"

RSpec.describe "later#add" do
  before do
    create_file_tree
  end

  it "adds an entry to the later file" do
    vim.edit "dir1/file1"

    vim.command 'call later#add()'

    vim.edit ".later"
    result = vim.command 'echo getline(1)'
    expect(result).to eq("dir1/file1:1")
  end

  it "loads the later file into the quickfix list" do
    # given
    vim.edit "dir1/file1"
    vim.command 'call later#add()'
    vim.edit "dir2/file2"
    vim.command 'call later#add()'
    vim.edit "new_file"

    # when
    vim.command 'call later#load_quickfix()'

    # then
    result = vim.command "return join(map(getqflist(), 'bufname(v:val.bufnr)'))"
    expect(result).to eq("dir1/file1 dir2/file2")

    result = vim.command 'echo expand("%")'
    expect(result).to eq("dir1/file1")
  end
end
