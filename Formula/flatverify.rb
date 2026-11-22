class Flatverify < Formula
  desc "Verify email addresses from your terminal, unlimited on every plan"
  homepage "https://flatverify.com"
  url "https://registry.npmjs.org/flatverify/-/flatverify-1.0.0.tgz"
  sha256 "1ab44afe44cacf2cc1a126da2867cc235859b5294d33a3985d2501e791f1b2da"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/flatverify --version").strip
    ENV.delete("FLATVERIFY_API_KEY")
    assert_match "FLATVERIFY_API_KEY", shell_output("#{bin}/flatverify account 2>&1", 64)
  end
end
