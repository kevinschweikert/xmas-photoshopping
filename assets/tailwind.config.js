// See the Tailwind configuration guide for advanced usage
// https://tailwindcss.com/docs/configuration
//
/** @type {import('tailwindcss').Config} */

let plugin = require('tailwindcss/plugin')

module.exports = {
  content: [
    './js/**/*.js',
    '../lib/**/*.*ex'
  ],
  // darkMode: "class",
  theme: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms')
  ]
}
