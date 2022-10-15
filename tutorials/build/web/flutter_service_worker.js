'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "6e1873799c14437f0f6d796bec850e16",
"index.html": "ce50e738a41e1c89674cd2a6e607394c",
"/": "73be3445adc8d49407f4b36e21d3236c",
"main.dart.js": "f4ba5728f4401059f92b17653b8599fa",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "44984f605d6a0f95d8367cce2c2265cb",
"assets/AssetManifest.json": "7a2f407eea5ae419608f541a19dc6696",
"assets/NOTICES": "0e69d2659591efeb37e61f3016b1c123",
"assets/FontManifest.json": "5eb4cf9e42dd05f4e9aa59b108f3c4e5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_tex/js/katex/index.html": "f0b07d87f116752c2c8de2882f9db878",
"assets/packages/flutter_tex/js/katex/katex.css": "cf85eb8b74953ecc5b3685c0969b4349",
"assets/packages/flutter_tex/js/katex/katex.js": "6a42d26befadf4cadea19a9978c48396",
"assets/packages/flutter_tex/js/katex/contrib/mhchem.mjs": "1aa580b655c87d45fda557609d6b557b",
"assets/packages/flutter_tex/js/katex/contrib/render-a11y-string.js": "b530f645e0fbb1735e0b24a308513f8e",
"assets/packages/flutter_tex/js/katex/contrib/mathtex-script-type.mjs": "23784275c921134bf5cfadac62822f7a",
"assets/packages/flutter_tex/js/katex/contrib/auto-render.mjs": "29c8c1d133e8c6b36f68ca003344b4f2",
"assets/packages/flutter_tex/js/katex/contrib/auto-render.min.js": "e6e57901eb546dfab76741c18a959c7b",
"assets/packages/flutter_tex/js/katex/contrib/copy-tex.mjs": "ebaff0c995dd5d7fbe9b9ed73711c67c",
"assets/packages/flutter_tex/js/katex/contrib/auto-render.js": "4fa680c20fb6bfbc75a9692f7be8caf4",
"assets/packages/flutter_tex/js/katex/contrib/mathtex-script-type.min.js": "807a75494d38fd506e8912a7c5009cbc",
"assets/packages/flutter_tex/js/katex/contrib/render-a11y-string.mjs": "d6f5ca2d31926cc539ed5dd85c1bac39",
"assets/packages/flutter_tex/js/katex/contrib/render-a11y-string.min.js": "796444d30a598d564f28cf5bfe15c2ba",
"assets/packages/flutter_tex/js/katex/contrib/copy-tex.css": "0ba86b0c9c4ca9b0294bfc1fe983d6f7",
"assets/packages/flutter_tex/js/katex/contrib/copy-tex.min.js": "1d34f04be48d9e25b6284ea3189a9850",
"assets/packages/flutter_tex/js/katex/contrib/copy-tex.js": "092e27b92653a287861050f925dfa39d",
"assets/packages/flutter_tex/js/katex/contrib/mathtex-script-type.js": "5d2eee4d7ce79d3aead902b0eb9a9909",
"assets/packages/flutter_tex/js/katex/contrib/mhchem.min.js": "5e402faffe96db63faa6d28c099c1237",
"assets/packages/flutter_tex/js/katex/contrib/mhchem.js": "76beb1e3cdde114598023538e2d0a18f",
"assets/packages/flutter_tex/js/katex/contrib/copy-tex.min.css": "d610c1e8a5e8a14a6fa9b2a1d9c58ce5",
"assets/packages/flutter_tex/js/katex/README.md": "6e27f1ffed27c889b4e644ccd9bc2340",
"assets/packages/flutter_tex/js/katex/katex.min.css": "f9417c96e906891af6c4153115f0e471",
"assets/packages/flutter_tex/js/katex/katex.min.js": "91c4a91ef515a0d911078b770345ac51",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Typewriter-Regular.woff2": "8073cf012f453ddf47d5b8776f6bb1e5",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-Regular.woff": "ab80a08c3c6915afb4b4a3300a55ef8f",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_AMS-Regular.ttf": "342a61e0c4dee016881d00d9fa69c335",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-BoldItalic.woff": "cd5eb9a8d163f765f01c4b1a44567f4c",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_AMS-Regular.woff2": "2c50d7a0caadcdd36b063bd9f9268291",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size3-Regular.woff2": "920b3023bec41ddd8a7d79ff9da70643",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-Regular.woff2": "6c094af9274ceccdc817400fdf49c5af",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Script-Regular.ttf": "781730b2f066b5268a8fb75b4f7c479b",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Caligraphic-Bold.woff2": "0f0d0935d51deac6c1f7f0dea7ffe886",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size3-Regular.ttf": "ee3e5bf4b1e08bb325312348661c276b",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Typewriter-Regular.woff": "b636fa487ef5e2f56bb3529bc9168be0",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Caligraphic-Regular.woff": "f7eb2b22569f8c8a9ad8b6d299d4f6a4",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Typewriter-Regular.ttf": "90f78c1075e0cdb56287589112f56011",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-Italic.woff": "4eee467e52c8113a7c48549dec426808",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Caligraphic-Bold.ttf": "b27e354b9a940cfabb1cdad2f5d35eb9",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_SansSerif-Bold.woff2": "f9ae435239a0933219b7dba4480141cc",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Math-Italic.woff2": "1aa96e4e339118aad4153041adbd9947",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size4-Regular.woff2": "83af4078518f26c4b62160f6565d6d86",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Fraktur-Bold.woff2": "e2c9ac8504a2e0f1ec22e5904087174f",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Caligraphic-Bold.woff": "9ae9058d9d744f501b41d1fe1236ed57",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_SansSerif-Bold.ttf": "362d94c68887ef3079e3fa04abc7b505",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Fraktur-Regular.woff": "98d5da581ba8efea0934c92794c6c56c",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-Bold.ttf": "ed829b5fabfded4f5f943df1012da1b1",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_SansSerif-Italic.woff2": "e7aabbc7a3b86d947d8ad4436a81b348",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-Bold.woff2": "233f218ee616854f491c7195cd8fffcf",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_SansSerif-Regular.woff2": "6f7840dc539b8786da712dc43a57051c",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Fraktur-Regular.ttf": "6b53a2db48b3bbde91ec9c85590ccc44",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-Regular.ttf": "c89c643655fabf99f2b78eb9cc5cf4b0",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size2-Regular.woff": "0d72ed102d351b453046ee3d9c4600fb",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-BoldItalic.woff2": "09fa2c8f6a5a787648fcf62022b9e5c6",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Fraktur-Regular.woff2": "a2be00f37608cf99fb1c0351dc4e9342",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Script-Regular.woff2": "5921f5ba7c02f3aeb478e4e87d2187bf",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size4-Regular.woff": "04dc70fcc38cd220b3129133310717ca",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size3-Regular.woff": "34ab65d6e933eaa143598aa54b5832d6",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_AMS-Regular.woff": "3392cf39311b42f70073c2732b99a24c",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-Bold.woff": "316611c7a4afe59d3bcbe9e0f1a41613",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_SansSerif-Italic.ttf": "2c74297808a50220aa64d435d69006bc",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Math-Italic.ttf": "f677173e00e38ef3151aa3156ef87507",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size1-Regular.woff": "aec6c2103821f67bc9f53dee3fbad982",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_SansSerif-Regular.woff": "e8735df90d494a81dfc1568c352b21bc",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-Italic.ttf": "14ff9c98a820d988c169e27ca3eb78b8",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Math-Italic.woff": "68f671df4bc4ab87b9f3e5111c28c49a",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Math-BoldItalic.woff2": "8bdd60921916168d5c53c2caf3931e86",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Fraktur-Bold.ttf": "359e1e974d07f534d0665dc5add72209",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size2-Regular.ttf": "24cbe093e557076be8c6c5ffee4aa61b",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_SansSerif-Italic.woff": "07ffaec68ea2d7c3428eec8b12969925",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-Italic.woff2": "4dc3271d3627578d951ecd3fcdb7f762",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size1-Regular.woff2": "3a5edc1620fc7a7a2e25112b7a8e6cf8",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Fraktur-Bold.woff": "314623ce54a8a2654fb5df3c9cec01aa",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Script-Regular.woff": "ced4ee620859978fa1921c87d6dbd774",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_SansSerif-Regular.ttf": "6087fc040fbe6c4e83da5ee2c1f8a803",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Math-BoldItalic.woff": "e1a2ff93bd15ea54164340e3d1b2f901",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size1-Regular.ttf": "54a80b37e92f14f32a33165c571f8e95",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Caligraphic-Regular.ttf": "bd18bae257a88cfa6a36310cd585d0a0",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size4-Regular.ttf": "b78c75bb4d0c95e4a87e006e83f187e4",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Size2-Regular.woff2": "963980610d2663b7c04355bcf17d5bb8",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Caligraphic-Regular.woff2": "8a3d1df80c7d8618896f166336d89dce",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Main-BoldItalic.ttf": "ca23ba4b607268345b1f0b22bff41292",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_SansSerif-Bold.woff": "f1cea170c77d231b4ce249fcf850f3f4",
"assets/packages/flutter_tex/js/katex/fonts/KaTeX_Math-BoldItalic.ttf": "7b481bb892d872c27234188b59ca8f10",
"assets/packages/flutter_tex/js/katex/katex.mjs": "6b03f74565c2fe5798f9abd557fdc556",
"assets/packages/flutter_tex/js/mathjax/index.html": "73be3445adc8d49407f4b36e21d3236c",
"assets/packages/flutter_tex/js/mathjax/LICENSE": "3b83ef96387f14655fc854ddc3c6bd57",
"assets/packages/flutter_tex/js/mathjax/MathJax.js": "b2c103388b71bb3d11cbf9aa45fe9b68",
"assets/packages/flutter_tex/js/mathjax/extensions/asciimath2jax.js": "ba4a24f0884938191d5cc8a719050c08",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/HTML.js": "dd05d732ce5a656edd0ef35488d236fe",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/extpfeil.js": "52e41797d7f6c1008c14e06b4bcf9a19",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/action.js": "b291ae5afcf2686e6007e2ad0ac5cb07",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/boldsymbol.js": "567c12ebe2987167bc8bb56382c8bb23",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/noUndefined.js": "133cd9dd68f0e555ecc1358fd707948f",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/autoload-all.js": "4bd547185b751a5499f7cb74b0975f19",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/verb.js": "0a894ca8fcced14fb954975530d125c2",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/unicode.js": "6d5c8e9a1069c920832efc089e987d41",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/cancel.js": "6b05f99b08bc0db84d1eedc95d4013ff",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/enclose.js": "c0b4bb3761086f90c82c5cde9a173af2",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/color.js": "81ada75a6f4efce1b3b317cbd693af67",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/AMSmath.js": "2a0d678068a6a80be023bad13a50d845",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/mhchem3/mhchem.js": "f29ec4834edb500aaf18d4a4ac5d94ba",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/begingroup.js": "ad78446e91555049457f3ee8e3330ec7",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/text-macros.js": "e26678d55796849a74bb32e2effe9403",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/newcommand.js": "3d30b98aa3e6f9304d8ddf2ded6def5c",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/bbox.js": "ea841d1b20ee93b7ef4268301ae0d6e2",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/noErrors.js": "83663e8d081cb5b405482e041be951e5",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/AMScd.js": "3688a0945311e1a2d4422674c3978f62",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/mediawiki-texvc.js": "bab41699c500f82c5e30f204689667bf",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/AMSsymbols.js": "aef5a6cdabcbb03c017905b91157999d",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/mathchoice.js": "da60bce2273c8f343a89f19dd334cb0b",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/autobold.js": "85c15711cd25778da413647db10806f5",
"assets/packages/flutter_tex/js/mathjax/extensions/TeX/mhchem.js": "e2471e4a8a4f434354af76a55feab242",
"assets/packages/flutter_tex/js/mathjax/extensions/MathML/content-mathml.js": "0ec4a3e1ad4484b0c68a6f757a244532",
"assets/packages/flutter_tex/js/mathjax/extensions/MathML/mml3.js": "d09efa633025b9964d1973933b847df6",
"assets/packages/flutter_tex/js/mathjax/extensions/MathMenu.js": "46871bab94870bbd170c994c28b99240",
"assets/packages/flutter_tex/js/mathjax/extensions/AssistiveMML.js": "39c008cb2bc669cf413f7dbec5eed5c6",
"assets/packages/flutter_tex/js/mathjax/extensions/HelpDialog.js": "a3a81636a5169e8d4bbfd6a91e0d1ce4",
"assets/packages/flutter_tex/js/mathjax/extensions/Safe.js": "43fcac7fb8b68b0e6026b260d29f52b9",
"assets/packages/flutter_tex/js/mathjax/extensions/fast-preview.js": "f82f1573916c74e598b02c0739a123c0",
"assets/packages/flutter_tex/js/mathjax/extensions/MathZoom.js": "0227892f0f35af73e37a7f7019bf366d",
"assets/packages/flutter_tex/js/mathjax/extensions/FontWarnings.js": "54dc42c1c40d7965a622fb01c66b9d61",
"assets/packages/flutter_tex/js/mathjax/extensions/tex2jax.js": "6313aa4e8b7edf452102de2729ec6aed",
"assets/packages/flutter_tex/js/mathjax/extensions/toMathML.js": "bb10d4f7465fa653bbe0dde8ab4a0ac1",
"assets/packages/flutter_tex/js/mathjax/extensions/mml2jax.js": "835e7b107ce67d0e09a002302b64d979",
"assets/packages/flutter_tex/js/mathjax/extensions/MathEvents.js": "1ba83b0ae280ef29dab5fcd2888f5992",
"assets/packages/flutter_tex/js/mathjax/extensions/jsMath2jax.js": "c0161a7cbc5e2b0ab68ec640b0aa8052",
"assets/packages/flutter_tex/js/mathjax/extensions/CHTML-preview.js": "ccd22964427efb2f7b8b5d47a81d0634",
"assets/packages/flutter_tex/js/mathjax/extensions/MatchWebFonts.js": "5ccc51f3e476e49f7dbe199707fb2111",
"assets/packages/flutter_tex/js/mathjax/jax/input/TeX/jax.js": "095f5949e9fcae675246f56a4fa5fa75",
"assets/packages/flutter_tex/js/mathjax/jax/input/TeX/config.js": "c6de0381e92b311e75264dac618de39d",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/jax.js": "addaed8cba00c8777540933e45cf9807",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/config.js": "cf85ea4a5bc5ac677243e755a7c31464",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/e.js": "c11b52d52968ce00245693c04c22d0e5",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/a.js": "997185dd1d2e45dc233bd6b4dd8e4958",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/y.js": "f9807dae1160344aa125404301c8bba0",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/x.js": "af4e41f5e5158b126edb92261a52918b",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/d.js": "9e5558405f28de118492d95d97441aea",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/o.js": "22baa9e0bbb7760311a193a6e0b10b99",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/w.js": "d3ba9e2084b7adf1866b70f6cb9dd413",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/k.js": "6414e632ff2cd2ec868d2976aee1018c",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/s.js": "99fb74daf2d1fd537f7ce35b916fc793",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/scr.js": "d7f570707643fba84335a507bc9a35cc",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/j.js": "8455021e272e277e99236b4a4fb0edd0",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/r.js": "8bf057da0768d9dbf0cfe4fef625f548",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/opf.js": "a241d729bce659ffed7d91c7f66c84ac",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/n.js": "59b4b5b42fb4304785c6212c59cbb82c",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/v.js": "c44170b66aa9a7287b1158006b3a0e16",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/i.js": "770ae1b26b8a2f1a593923ec33855889",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/q.js": "632221c21f96010d8bdc81bbc62b8526",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/m.js": "db49b39bfe1583819efdfce232b4d1e8",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/u.js": "4d765eac78c0046d5552654eea91e4c9",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/l.js": "80abb62bfbdba0bb9742ffac7b034895",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/t.js": "ac6fae5975acbc3a673f8547daa7973f",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/h.js": "3015ebd7f13c11e334c0a7a9ab308767",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/p.js": "ff073de21d6efae5f456d5e31c9cfc31",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/c.js": "4d5c64c1f1f43db2b180f499910dff56",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/fr.js": "eb79fa45457e18414aef18a99d622ea4",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/g.js": "5f51d546a5718a7fe99e89feba054276",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/f.js": "9277e2d9f1d4ac45b51c6aaad3c70bcb",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/b.js": "d973c36cb037c5514a73d0d9b6626966",
"assets/packages/flutter_tex/js/mathjax/jax/input/MathML/entities/z.js": "f1e3d439bf2837ef365dd1c39484fd1c",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/jax.js": "70c06ee3014f9b36027101a7ca1fdd0f",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/SuppMathOperators.js": "f8cc084aabc1d52fb0a94457d6d8e7e2",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/Latin1Supplement.js": "cb26901092cf263c18de37986141dc74",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/MathOperators.js": "08e26ceffc57907eb6f1f4ec8dc39cd2",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/GeometricShapes.js": "53a4eb7cee17491160e00656b97ea5be",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/LetterlikeSymbols.js": "509f92c99cab336ecf4adec735adfaac",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/Dingbats.js": "059600ef627ed3ed8bb2115b6994942a",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/BasicLatin.js": "cac9b2e71382e62270baa55fab07cc13",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/MiscMathSymbolsB.js": "34d5c8d0c0d1efa6051845cc0830dc85",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/SupplementalArrowsA.js": "4645a0b9cb5fba1b5d2ad7605e158dd1",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/Arrows.js": "cd22fc0311779024bdf280961e3e0da5",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/SupplementalArrowsB.js": "b38a7bc0f88379f31a11ae4f068b769a",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/CombDiactForSymbols.js": "a546cc2e04b694b272d3701d0574d8cc",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/GreekAndCoptic.js": "7c3c6d008598e331bae1e26fccfb7f5c",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/CombDiacritMarks.js": "f93aa0e2e266bd4c584135477a8c62ed",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/MiscMathSymbolsA.js": "234873cd2f7f069a8f5616c00f7437cc",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/SpacingModLetters.js": "a3f8559b799ecacc12683a39e2c29819",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/MiscTechnical.js": "19cd81efdd76cc0fed0c14c05560761c",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/GeneralPunctuation.js": "da9ce79f07efe980dfd5ca66f879e739",
"assets/packages/flutter_tex/js/mathjax/jax/element/mml/optable/MiscSymbolsAndArrows.js": "e8402159215942989336661560724c92",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/jax.js": "983708db351371378d03356a7848f4d1",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/config.js": "2331dfa04ed33a371d8735e1798c4980",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/autoload/annotation-xml.js": "5c0a5ac13c601aaa920fe9a99eed23fa",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/autoload/ms.js": "d6a2a58b5b979b352c0fa9919772618c",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/autoload/mglyph.js": "2fed982e207e72c96899caf9d25dca64",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/autoload/mtable.js": "b8c87ca1398f29238deb7235a08508ca",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/autoload/mmultiscripts.js": "5f56f7566baf73e3e745f5f4325e6645",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/autoload/menclose.js": "7b2ea9eb6ab045b23927ad91ca7269e4",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/autoload/multiline.js": "dbf95bacbdf5b615b1c4c768aa13e192",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/autoload/maction.js": "6267f292f88b2f7a011d43e7b2288375",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Monospace/Regular/Main.js": "da942728fba8835448b144bf5978c64d",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Size4/Regular/Main.js": "b619df9dbc3d32cf4bf4050a9c0bd4f7",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Misc/Regular/Main.js": "83905891ae1c1ba5113af6dd20752d3f",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Size3/Regular/Main.js": "632d9bde1dfa761e0b8ca7f6ad528f99",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Alphabets/Regular/Main.js": "efe14a410f0f6068cc8f3295492e9c8a",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Size2/Regular/Main.js": "288e754ba2854b9523cbcea6ebbbb60c",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Size5/Regular/Main.js": "fddbbbcd462a8e11582c211334afea0f",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Variants/Regular/Main.js": "a0e179664a7f9c7429169f18c62423fa",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/SansSerif/Regular/Main.js": "3aa7be9c67f8d7964473e683c646a895",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Operators/Regular/Main.js": "dee87779bf7bd236dfa2582f5c67100e",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Marks/Regular/Main.js": "1ba4c71aae376a97764d6d987c352727",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Latin/Regular/Main.js": "6ea87ff970625b5e69720cea202b3d72",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Shapes/Regular/Main.js": "ace21a50708f5f803b02c659981bbb8f",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/fontdata.js": "df1b5ef97cf27cab4d02762d04df2b19",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/NonUnicode/Regular/Main.js": "405ada06bcbd00ce0d8bcbb25a090060",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Script/Regular/Main.js": "0a4bed2eb2cdd41e0ea0f0fba08bd761",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Size6/Regular/Main.js": "aeb0ccd2bd94068b57dbf4639961de84",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Size1/Regular/Main.js": "288666c04f3e95c93475786725e042aa",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Symbols/Regular/Main.js": "d0990851f00fd8c80cc70a31d016110d",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/DoubleStruck/Regular/Main.js": "05efb6ce00d94b5cf3837dff31b3f71c",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Normal/Regular/Main.js": "076ba0f589c1743a9c62aa91d42a0bef",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Arrows/Regular/Main.js": "665c0e57895adfb6966675bebdf83863",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Fraktur/Regular/Main.js": "e3614ebdb6144db9f6a7eaa8d28abfb9",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/Main/Regular/Main.js": "18979444cbc184de17d8211badbde33a",
"assets/packages/flutter_tex/js/mathjax/jax/output/SVG/fonts/Gyre-Pagella/fontdata-extra.js": "1f8deeefc60655afe9fa112bd0a0713d",
"assets/packages/flutter_tex/js/flutter_tex.css": "062a3279da48d0913eeeeb0d2266e26f",
"assets/packages/flutter_tex/js/flutter_tex.js": "a7d061c7a474813670d7596be35e6968",
"assets/lib/ui/postgresTutorial/tutorial/tutorialAlgebra/dbRelationalAlgebra.pdf": "18e3f0a47f963de79a564b52aa7eee12",
"assets/lib/ui/gitTutorial/tutorial/tutorialGit/git.pdf": "19d4f21609ba91e5922f4d4bec04944f",
"assets/lib/ui/flutterTutorial/rive/skills.riv": "ef57c58346dcd084eebbc777ccbd0c53",
"assets/lib/ui/img/appDeveloping/proFactec/5_inventario.png": "6c7af5570bfc792124aff96e3704c4ce",
"assets/lib/ui/img/appDeveloping/proFactec/proFactecIntro.png": "512be6e4af3aba11d287622f05d9d243",
"assets/lib/ui/img/appDeveloping/proFactec/6_inventario.png": "7e80e4784e240b6a4c8ad3cefa840a83",
"assets/lib/ui/img/appDeveloping/proFactec/7_productos.png": "846782804807753e3c4d9b043270f6a2",
"assets/lib/ui/img/appDeveloping/proFactec/1_conf.png": "a94ad92e630c32760a62055c681c7447",
"assets/lib/ui/img/appDeveloping/proFactec/8_sistemaVentas.png": "e7e68982a1ddcb8bdd38c922f4e79409",
"assets/lib/ui/img/appDeveloping/proFactec/3_estadisticas.png": "cf48a6106b6de9f4091c6ad17c982886",
"assets/lib/ui/img/appDeveloping/proFactec/2_detalleVentas.png": "75d20e0cc590bcd56b82c83a3b8b9ddf",
"assets/lib/ui/img/appDeveloping/proFactec/9_cuenta.png": "c4e926c464f579bf0b13b4907ab1af36",
"assets/lib/ui/img/appDeveloping/proFactec/4_permisos.png": "0a6f02acb9790b3187b25501e6f68a93",
"assets/lib/ui/img/appDeveloping/proFactec/proFactec.png": "20f97cb63c08725c3664029983b95e41",
"assets/lib/ui/img/appDeveloping/cocktail/cocktail.png": "5b6380c1e0db45b5df2b52df5fb0dc24",
"assets/lib/ui/img/appDeveloping/cocktail/2_cocktail.png": "8948d2c22a6718fa5fcb3f9cfde2aeca",
"assets/lib/ui/img/appDeveloping/cocktail/1_home.png": "75911b1daefefc8fa304e6772a7bf97a",
"assets/lib/ui/img/appDeveloping/cocktail/5_endGame.png": "d6ad2dae96a6c62e2fc7b18c8142ed50",
"assets/lib/ui/img/appDeveloping/cocktail/4_game.png": "7bc443bd9c14595da59dc3118affd3be",
"assets/lib/ui/img/appDeveloping/cocktail/3_startGame.png": "d303140e492cde30cfea5f96ef5a7a2b",
"assets/lib/ui/img/appDeveloping/laptopDoctor/6_socialMedia.png": "e5c9093b78912cb67aa7fdb76398178d",
"assets/lib/ui/img/appDeveloping/laptopDoctor/1_home.png": "a9842a4e9e6588e731a4f71f3f6c1abe",
"assets/lib/ui/img/appDeveloping/laptopDoctor/5_map.png": "10626d8484d795f44c03224a13c36ac6",
"assets/lib/ui/img/appDeveloping/laptopDoctor/laptopDoctor.png": "78a6622e394d003b2225c904dc649c95",
"assets/lib/ui/img/appDeveloping/laptopDoctor/3_calendar.png": "260455cb38fd456f69be116803f8d648",
"assets/lib/ui/img/appDeveloping/laptopDoctor/2_calendar.png": "155c1c7abe02a0d3e601c0f2d3ea5a42",
"assets/lib/ui/img/appDeveloping/laptopDoctor/7_chat.png": "863f4a418a22d97459c810d2e032b2e5",
"assets/lib/ui/img/appDeveloping/laptopDoctor/4_product.png": "dba3b3f774c99ec3ebc24ff520375f5e",
"assets/lib/ui/img/tutorial/chialisp/chialisp.png": "964ce1e4ad843e744e75dd95a966380e",
"assets/lib/ui/img/tutorial/flutter/gdError.png": "ef1d2a6d982203339a68ca7ddf01c4ef",
"assets/lib/ui/img/tutorial/flutter/flutter.png": "57838d52c318faff743130c3fcfae0c6",
"assets/lib/ui/img/tutorial/flutter/formExample.png": "067f1a83d722c4cd0b5ab74666c37d09",
"assets/lib/ui/img/tutorial/flutter/fontExample.png": "7e93cc7aa610c0ddfea87d2727625ca0",
"assets/lib/ui/img/tutorial/flutter/writeReadExample.png": "22b121a48dd69b080e5eb9f25e1e7963",
"assets/lib/ui/img/tutorial/flutter/colorExample.png": "121772764a9416e9bc0983082239fcfc",
"assets/lib/ui/img/tutorial/flutter/imgSendApache.png": "190cda2fbaa8a2f12abeb46a1a854eaa",
"assets/lib/ui/img/tutorial/flutter/latexExample.jpeg": "bddff97e19ac063fb1700e92c6b43405",
"assets/lib/ui/img/tutorial/flutter/btnExample.png": "3f52c6b38619754dc66fd8a82ee5a3d0",
"assets/lib/ui/img/tutorial/flutter/diagExample.png": "d946d4b3407c03ddafbd41de5d89d515",
"assets/lib/ui/img/tutorial/postgres/postgres.png": "21eea274812d82ae46cd4f9e938515f0",
"assets/lib/ui/img/tutorial/git/git.png": "f62f6e16d08a95a19713f9fbbdb2c568",
"assets/lib/ui/img/curriculum/andres.jpg": "2d960c77990b7d0c307342449b677c71",
"assets/lib/ui/img/appPublished/factec.png": "fe375af177934b37ef6905bb80082331",
"assets/lib/ui/img/appPublished/hablaAndrea.png": "5f4f248ae0be2046f160291b464135c7",
"assets/lib/ui/img/appPublished/mubicate.png": "c52964bc38f0855433afd7e7b54544b4",
"assets/lib/ui/img/icon/icon_downloaded.ttf": "09b5f1d4dc8719bc8eaad5676d4893c1",
"assets/lib/ui/img/icon/apple.png": "d8ae84b4e884b5c520349752ffb90169",
"assets/lib/ui/img/icon/web.png": "80087b01e746886e8957b45fd598637c",
"assets/lib/ui/img/icon/icon_downloaded.dart": "fde74a8793a991bc5bd4c1aa692aee0c",
"assets/lib/ui/img/icon/windows.png": "9db84c33f14d43a290afae3d8dd22405",
"assets/lib/ui/img/icon/playStore.png": "8412cc2c8fb288c9c3cb9063e2e2aa11",
"assets/lib/ui/chialispTutorial/basicInformation/chialisp.pdf": "7b1ed4af9c14c94b181740771821a532",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
