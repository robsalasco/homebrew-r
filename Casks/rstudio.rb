cask 'rstudio' do
  version '1.2.1114'
  sha256 '45591a10b212a251ae83043576ff8198ed750361935c9be66503cfacab6ea2bc'

  # rstudio.org was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  appcast 'https://www.rstudio.com/products/rstudio/download/'
  name 'RStudio'
  homepage 'https://www.rstudio.com/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'

  caveats <<~EOS
    #{token} depends on R.
    There are different ways to satisfy that dependency. RStudio recommends installing R from The R Project, which is required to install binary R packages, without needing to compile packages from source.

    https://support.rstudio.com/hc/en-us/articles/217799238

    To install the R Project package run:

      brew cask install r-app

    Alternative ways to satisfy the dependency are:

      brew install r

    This requires compiling R packages from source.
  EOS
end
