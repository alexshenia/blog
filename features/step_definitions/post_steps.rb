Given /^I am on posts page$/ do
  visit '/posts'
end

When /^I follow "create new post"$/ do
  click_link 'New Post'
end

When /^I fill post form$/ do
  fill_in 'post_title', with: 'First post'
  fill_in 'post_body', with: 'hello world'
end

And /^I submit posts form$/ do
  click_button 'Create Post'
end


And /^I should see my new post$/ do
  page.should have_content('First post')
  page.should have_content('hello world')

  Post.all.count.should == 1
end