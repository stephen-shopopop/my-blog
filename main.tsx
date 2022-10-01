/** @jsx h */

import blog, { ga, h, redirects } from "blog";

blog({
  title: "GUIDE API REST",
  description: "stephen D.",
  // header: <header>Your custom header</header>,
  // section: <section>Your custom section</section>,
  // footer: <footer>Your custom footer</footer>,
  showHeaderOnPostPage: true,
  links: [
    { title: "Email", url: "mailto:stephen.deletang@shopopop.com" },
    { title: "GitHub", url: "https://github.com/stephen-shopopop" },
  ],
  avatar:
    "https://avatars.githubusercontent.com/u/94382341?s=400&u=b72fa0e3214b270320f7bc3e93fbae0ca4aefa19&v=4",
  avatarClass: "rounded-full",
  author: "stephen",
  dateStyle: "long",
  lang: "fr",
  // middlewares: [

  // If you want to set up Google Analytics, paste your GA key here.
  // ga("UA-XXXXXXXX-X"),

  // If you want to provide some redirections, you can specify them here,
  // pathname specified in a key will redirect to pathname in the value.
  // redirects({
  //  "/hello_world.html": "/hello_world",
  // }),

  // ]
});
