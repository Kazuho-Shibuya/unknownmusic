module LoginMacros
  def login(user)
    visit new_session_path
    fill_in 'メールアドレス', with: user.email
    fill_in 'パスワード', with: user.password
    click_button 'ログイン'
    expect(page).to have_content 'ログインしました'
  end

  def logout
    click_link 'logout'
    expect(page).to have_content 'ログアウトしました'
  end
end
