module.exports = function(eleventyConfig) {
  // ✅ Passthrough folders — add others as needed
  eleventyConfig.addPassthroughCopy("images");
  eleventyConfig.addPassthroughCopy("css");
  eleventyConfig.addPassthroughCopy("js");
  eleventyConfig.addPassthroughCopy("files");
  eleventyConfig.addPassthroughCopy("fonts");

  return {
    dir: {
      input: "pages",
      includes: "../_includes",
      layouts: "../_layouts",
      output: "_site"
    },
    passthroughFileCopy: true
  };
};