'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "49b7d589a611ac61a215b5a4e45349e3",
"assets/AssetManifest.bin.json": "44b5d75e7eb2e722bbd6b1b25625b74a",
"assets/assets/files/monycv.pdf": "198548a842ed1358b910cd481c0a32c4",
"assets/assets/icons/appstore.png": "a2110cba78d3c421a0ec48e82c0a5f42",
"assets/assets/icons/github.png": "b8337c5817e79987bcc09ef48cdd038d",
"assets/assets/icons/githubproject.png": "f2c155cd487b8337c727eec4767f08c9",
"assets/assets/icons/googleplay.png": "3a82e2bdf22f20c3ff240e95ed1f86a6",
"assets/assets/icons/linkedin.png": "1525feca086faef0b98d7063c4c4d0f2",
"assets/assets/icons/telegram.png": "7b696c0ae562f07d43f82059662d44c6",
"assets/assets/images/avatar.png": "1db86295db00dc9ce5b6384af353309a",
"assets/assets/images/mystory.png": "2a4554ba73377904c426109fa9f6aebd",
"assets/assets/logos/arduino.png": "92e762d51593d908d305c0cd0bce8358",
"assets/assets/logos/cpp.png": "0b849c72f38362fe12072a4916660013",
"assets/assets/logos/csharp.png": "5444e463b69f41b981e7b8adab3033a3",
"assets/assets/logos/css.svg": "80bc910e99350a466adfca32dfcab19e",
"assets/assets/logos/dart.png": "ae62b92f13758a541600d0790a3609ec",
"assets/assets/logos/esp32.png": "273e99d5e7f3f3993a8f725b065f91de",
"assets/assets/logos/esphome.png": "341d45cc6c23e30c28aaa4a6fd9a6937",
"assets/assets/logos/fablab.png": "397cac9f2b1c807e24abd653d58146a3",
"assets/assets/logos/figma.png": "bcb2c6d5fbb2c425876359f40ec7688a",
"assets/assets/logos/flutter.png": "9c762fd9bbcd0a09a78da1814a4860d6",
"assets/assets/logos/github.png": "c8a83d0788097e656bc0129ba6021912",
"assets/assets/logos/godot.png": "26c70cf52d9a170cc5487f1f15c9dc3f",
"assets/assets/logos/homeassistant.png": "22dbb095c1d14e30c05fab939689a2d8",
"assets/assets/logos/java.png": "6dfab33fba677f71c0c0e0f3891f246e",
"assets/assets/logos/javascript.png": "3293097144d45d4beec2e074d2f051d2",
"assets/assets/logos/python.png": "d61bdd36708ce3d9ee7285ea7d2ce6d8",
"assets/assets/logos/raspberrypi.png": "04a1111c17d069e04d89ac3b4a48d0b6",
"assets/assets/logos/SQL.png": "6c91cbe98635f7961c6e2b0a5d3eacb9",
"assets/assets/logos/telegram.svg": "96cf3f7ea5c7dd77bbc750d751dd505e",
"assets/assets/logos/unity.png": "bdc41c18a12f51af2bc19e8866760219",
"assets/assets/logos/unreal.png": "b22da44a0b185bbed89787e732125ae1",
"assets/assets/logos/YAML.png": "44de0de1120b7fec84249090bbe472fc",
"assets/FontManifest.json": "7744ab30b8db3bd1dead66b947acb3b7",
"assets/fonts/JetBrainsMono-Bold.ttf": "de2ce9b374d438453112214b81e41849",
"assets/fonts/JetBrainsMono-Italic.ttf": "342fa9d499e506144959ab12673ae0c4",
"assets/fonts/JetBrainsMono-Regular.ttf": "a7151c5349c1aa20beefb3c5430c3a79",
"assets/fonts/MaterialIcons-Regular.otf": "5caa6e911408bf1851539e0837d7d2ca",
"assets/NOTICES": "fb362ec5a28d323703eabbbb22cbbf09",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"favicon.png": "1db86295db00dc9ce5b6384af353309a",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"flutter_bootstrap.js": "dc68f42bec009ce5b9148b822bb830f8",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "6239612e839acb353e8223efd5ead5b2",
"/": "6239612e839acb353e8223efd5ead5b2",
"main.dart.js": "0a58ffd7a3dc2e625b530f6b2f5a28b9",
"manifest.json": "8fee3feb2b396ebf3f3254750a4f8633",
"version.json": "6380f5f872c0a61dfa3fcc6febcf9b5d"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
