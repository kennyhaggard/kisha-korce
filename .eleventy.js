module.exports = function(eleventyConfig) {
  return {
    dir: {
      input: "pages",
      includes: "../_includes",
      layouts: "../_layouts",
      output: "_site"
    }
  };
};