"""Loads a lightweight subset of the ICU library for Unicode processing."""

load("//third_party:repo.bzl", "tf_http_archive", "tf_mirror_urls")

# NOTE: If you upgrade this, generate the data files by following the
# instructions in third_party/icu/data/BUILD
def repo():
    tf_http_archive(
        name = "icu",
        strip_prefix = "icu-release-70-1",
        sha256 = "4013d7aff8a34bae410664bdb16554d7eda03654b22627b9284ab55a685492d4",
        urls = tf_mirror_urls("https://github.com/unicode-org/icu/archive/release-70-1.zip"),
        build_file = "//third_party/icu:icu.BUILD",
        system_build_file = "//third_party/icu:BUILD.system",
        patch_file = ["//third_party/icu:udata.patch"],
    )
