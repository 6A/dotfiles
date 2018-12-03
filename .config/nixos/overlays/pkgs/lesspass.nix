# Generated by carnix 0.7.2: carnix nix
{ lib, buildPlatform, buildRustCrate, fetchgit }:
let kernel = buildPlatform.parsed.kernel.name;
    abi = buildPlatform.parsed.abi.name;
    include = includedFiles: src: builtins.filterSource (path: type:
      lib.lists.any (f:
        let p = toString (src + ("/" + f)); in
        (path == p) || (type == "directory" && lib.strings.hasPrefix path p)
      ) includedFiles
    ) src;
    updateFeatures = f: up: functions: builtins.deepSeq f (lib.lists.foldl' (features: fun: fun features) (lib.attrsets.recursiveUpdate f up) functions);
    mapFeatures = features: map (fun: fun { features = features; });
    mkFeatures = feat: lib.lists.foldl (features: featureName:
      if feat.${featureName} or false then
        [ featureName ] ++ features
      else
        features
    ) [] (builtins.attrNames feat);
in
rec {
  lesspass = f: lesspass_0_1_0 { features = lesspass_0_1_0_features { lesspass_0_1_0 = f; }; };
  __all = [ (lesspass {}) ];
  ansi_term_0_11_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "ansi_term";
    version = "0.11.0";
    authors = [ "ogham@bsago.me" "Ryan Scheel (Havvy) <ryan.havvy@gmail.com>" "Josh Triplett <josh@joshtriplett.org>" ];
    sha256 = "08fk0p2xvkqpmz3zlrwnf6l8sj2vngw464rvzspzp31sbgxbwm4v";
    inherit dependencies buildDependencies features;
  };
  atty_0_2_11_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "atty";
    version = "0.2.11";
    authors = [ "softprops <d.tangren@gmail.com>" ];
    sha256 = "0by1bj2km9jxi4i4g76zzi76fc2rcm9934jpnyrqd95zw344pb20";
    inherit dependencies buildDependencies features;
  };
  bitflags_1_0_4_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "bitflags";
    version = "1.0.4";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1g1wmz2001qmfrd37dnd5qiss5njrw26aywmg6yhkmkbyrhjxb08";
    inherit dependencies buildDependencies features;
  };
  cc_1_0_25_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "cc";
    version = "1.0.25";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0pd8fhjlpr5qan984frkf1c8nxrqp6827wmmfzhm2840229z2hq0";
    inherit dependencies buildDependencies features;
  };
  clap_2_32_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "clap";
    version = "2.32.0";
    authors = [ "Kevin K. <kbknapp@gmail.com>" ];
    sha256 = "1hdjf0janvpjkwrjdjx1mm2aayzr54k72w6mriyr0n5anjkcj1lx";
    inherit dependencies buildDependencies features;
  };
  lazy_static_1_1_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "lazy_static";
    version = "1.1.0";
    authors = [ "Marvin Löbel <loebel.marvin@gmail.com>" ];
    sha256 = "1da2b6nxfc2l547qgl9kd1pn9sh1af96a6qx6xw8xdnv6hh5fag0";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  lesspass_0_1_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "lesspass";
    version = "0.1.0";
    authors = [ "Grégoire Geis <git@gregoirege.is>" ];
    sha256 = "1abnb1w6n5f70sa603vbvv4ywky4alyfwng96ykmfkf2k975rs1i";
    libPath = "src/lib.rs";
    crateBin = [ {  name = "lesspass";  path = "src/main.rs"; } ];
    inherit dependencies buildDependencies features;
  };
  libc_0_2_43_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "libc";
    version = "0.2.43";
    authors = [ "The Rust Project Developers" ];
    sha256 = "0pshydmsq71kl9276zc2928ld50sp524ixcqkcqsgq410dx6c50b";
    inherit dependencies buildDependencies features;
  };
  num_bigint_0_2_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "num-bigint";
    version = "0.2.0";
    authors = [ "The Rust Project Developers" ];
    sha256 = "11wr7yg24pqc6ym2dcwz1834d14vhg6cv7qlzdbywbhwrx2mjgxq";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  num_integer_0_1_39_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "num-integer";
    version = "0.1.39";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1f42ls46cghs13qfzgbd7syib2zc6m7hlmv1qlar6c9mdxapvvbg";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  num_traits_0_2_6_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "num-traits";
    version = "0.2.6";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1d20sil9n0wgznd1nycm3yjfj1mzyl41ambb7by1apxlyiil1azk";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  proc_macro2_0_4_20_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "proc-macro2";
    version = "0.4.20";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0yr74b00d3wzg21kjvfln7vzzvf9aghbaff4c747i3grbd997ys2";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  quote_0_6_8_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "quote";
    version = "0.6.8";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "0dq6j23w6pmc4l6v490arixdwypy0b82z76nrzaingqhqri4p3mh";
    inherit dependencies buildDependencies features;
  };
  redox_syscall_0_1_40_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "redox_syscall";
    version = "0.1.40";
    authors = [ "Jeremy Soller <jackpot51@gmail.com>" ];
    sha256 = "132rnhrq49l3z7gjrwj2zfadgw6q0355s6a7id7x7c0d7sk72611";
    libName = "syscall";
    inherit dependencies buildDependencies features;
  };
  redox_termios_0_1_1_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "redox_termios";
    version = "0.1.1";
    authors = [ "Jeremy Soller <jackpot51@gmail.com>" ];
    sha256 = "04s6yyzjca552hdaqlvqhp3vw0zqbc304md5czyd3axh56iry8wh";
    libPath = "src/lib.rs";
    inherit dependencies buildDependencies features;
  };
  ring_0_13_2_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "ring";
    version = "0.13.2";
    authors = [ "Brian Smith <brian@briansmith.org>" ];
    sha256 = "0j1g3b5znqyivs9a5r8n1y65sc3jwzapy36sb5626s77r2qvzwpr";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  strsim_0_7_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "strsim";
    version = "0.7.0";
    authors = [ "Danny Guo <dannyguo91@gmail.com>" ];
    sha256 = "0fy0k5f2705z73mb3x9459bpcvrx4ky8jpr4zikcbiwan4bnm0iv";
    inherit dependencies buildDependencies features;
  };
  structopt_0_2_12_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "structopt";
    version = "0.2.12";
    authors = [ "Guillaume Pinot <texitoi@texitoi.eu>" "others" ];
    sha256 = "0nh6167hgj3ixqdfic8c9qa6g4f7hm976qbsa61izgwd5jpn25bk";
    inherit dependencies buildDependencies features;
  };
  structopt_derive_0_2_12_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "structopt-derive";
    version = "0.2.12";
    authors = [ "Guillaume Pinot <texitoi@texitoi.eu>" ];
    sha256 = "0wcmfbm0s2452g4c5iy858c059mbv0x2md9xhwgxqrf1xqdj060y";
    procMacro = true;
    inherit dependencies buildDependencies features;
  };
  syn_0_15_9_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "syn";
    version = "0.15.9";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "1h6f51n9vffk9a932sh6i56zksxl38xfarp9wb90ljvxx9nznjkz";
    inherit dependencies buildDependencies features;
  };
  termion_1_5_1_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "termion";
    version = "1.5.1";
    authors = [ "ticki <Ticki@users.noreply.github.com>" "gycos <alexandre.bury@gmail.com>" "IGI-111 <igi-111@protonmail.com>" ];
    sha256 = "02gq4vd8iws1f3gjrgrgpajsk2bk43nds5acbbb4s8dvrdvr8nf1";
    inherit dependencies buildDependencies features;
  };
  textwrap_0_10_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "textwrap";
    version = "0.10.0";
    authors = [ "Martin Geisler <martin@geisler.net>" ];
    sha256 = "1s8d5cna12smhgj0x2y1xphklyk2an1yzbadnj89p1vy5vnjpsas";
    inherit dependencies buildDependencies features;
  };
  unicode_width_0_1_5_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "unicode-width";
    version = "0.1.5";
    authors = [ "kwantam <kwantam@gmail.com>" ];
    sha256 = "0886lc2aymwgy0lhavwn6s48ik3c61ykzzd3za6prgnw51j7bi4w";
    inherit dependencies buildDependencies features;
  };
  unicode_xid_0_1_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "unicode-xid";
    version = "0.1.0";
    authors = [ "erick.tryzelaar <erick.tryzelaar@gmail.com>" "kwantam <kwantam@gmail.com>" ];
    sha256 = "05wdmwlfzxhq3nhsxn6wx4q8dhxzzfb9szsz6wiw092m1rjj01zj";
    inherit dependencies buildDependencies features;
  };
  untrusted_0_6_2_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "untrusted";
    version = "0.6.2";
    authors = [ "Brian Smith <brian@briansmith.org>" ];
    sha256 = "189ir1h2xgb290bhjchwczr9ygia1f3ipsydf6pwnnb95lb8fihg";
    libPath = "src/untrusted.rs";
    inherit dependencies buildDependencies features;
  };
  vec_map_0_8_1_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "vec_map";
    version = "0.8.1";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" "Jorge Aparicio <japaricious@gmail.com>" "Alexis Beingessner <a.beingessner@gmail.com>" "Brian Anderson <>" "tbu- <>" "Manish Goregaokar <>" "Aaron Turon <aturon@mozilla.com>" "Adolfo Ochagavía <>" "Niko Matsakis <>" "Steven Fackler <>" "Chase Southwood <csouth3@illinois.edu>" "Eduard Burtescu <>" "Florian Wilkens <>" "Félix Raimundo <>" "Tibor Benke <>" "Markus Siemens <markus@m-siemens.de>" "Josh Branchaud <jbranchaud@gmail.com>" "Huon Wilson <dbau.pp@gmail.com>" "Corey Farwell <coref@rwell.org>" "Aaron Liblong <>" "Nick Cameron <nrc@ncameron.org>" "Patrick Walton <pcwalton@mimiga.net>" "Felix S Klock II <>" "Andrew Paseltiner <apaseltiner@gmail.com>" "Sean McArthur <sean.monstar@gmail.com>" "Vadim Petrochenkov <>" ];
    sha256 = "1jj2nrg8h3l53d43rwkpkikq5a5x15ms4rf1rw92hp5lrqhi8mpi";
    inherit dependencies buildDependencies features;
  };
  version_check_0_1_5_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "version_check";
    version = "0.1.5";
    authors = [ "Sergio Benitez <sb@sergio.bz>" ];
    sha256 = "1yrx9xblmwbafw2firxyqbj8f771kkzfd24n3q7xgwiqyhi0y8qd";
    inherit dependencies buildDependencies features;
  };
  winapi_0_3_6_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "winapi";
    version = "0.3.6";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "1d9jfp4cjd82sr1q4dgdlrkvm33zhhav9d7ihr0nivqbncr059m4";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  winapi_i686_pc_windows_gnu_0_4_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "winapi-i686-pc-windows-gnu";
    version = "0.4.0";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "05ihkij18r4gamjpxj4gra24514can762imjzlmak5wlzidplzrp";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  winapi_x86_64_pc_windows_gnu_0_4_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "winapi-x86_64-pc-windows-gnu";
    version = "0.4.0";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "0n1ylmlsb8yg1v583i4xy0qmqg42275flvbc51hdqjjfjcl9vlbj";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  ansi_term_0_11_0 = { features?(ansi_term_0_11_0_features {}) }: ansi_term_0_11_0_ {
    dependencies = (if kernel == "windows" then mapFeatures features ([ winapi_0_3_6 ]) else []);
  };
  ansi_term_0_11_0_features = f: updateFeatures f (rec {
    ansi_term_0_11_0.default = (f.ansi_term_0_11_0.default or true);
    winapi_0_3_6.consoleapi = true;
    winapi_0_3_6.default = true;
    winapi_0_3_6.errhandlingapi = true;
    winapi_0_3_6.processenv = true;
  }) [ winapi_0_3_6_features ];
  atty_0_2_11 = { features?(atty_0_2_11_features {}) }: atty_0_2_11_ {
    dependencies = (if kernel == "redox" then mapFeatures features ([ termion_1_5_1 ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([ libc_0_2_43 ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([ winapi_0_3_6 ]) else []);
  };
  atty_0_2_11_features = f: updateFeatures f (rec {
    atty_0_2_11.default = (f.atty_0_2_11.default or true);
    libc_0_2_43.default = (f.libc_0_2_43.default or false);
    termion_1_5_1.default = true;
    winapi_0_3_6.consoleapi = true;
    winapi_0_3_6.default = true;
    winapi_0_3_6.minwinbase = true;
    winapi_0_3_6.minwindef = true;
    winapi_0_3_6.processenv = true;
    winapi_0_3_6.winbase = true;
  }) [ termion_1_5_1_features libc_0_2_43_features winapi_0_3_6_features ];
  bitflags_1_0_4 = { features?(bitflags_1_0_4_features {}) }: bitflags_1_0_4_ {
    features = mkFeatures (features.bitflags_1_0_4 or {});
  };
  bitflags_1_0_4_features = f: updateFeatures f (rec {
    bitflags_1_0_4.default = (f.bitflags_1_0_4.default or true);
  }) [];
  cc_1_0_25 = { features?(cc_1_0_25_features {}) }: cc_1_0_25_ {
    dependencies = mapFeatures features ([]);
    features = mkFeatures (features.cc_1_0_25 or {});
  };
  cc_1_0_25_features = f: updateFeatures f (rec {
    cc_1_0_25.default = (f.cc_1_0_25.default or true);
    cc_1_0_25.rayon =
      (f.cc_1_0_25.rayon or false) ||
      (f.cc_1_0_25.parallel or false) ||
      (cc_1_0_25.parallel or false);
  }) [];
  clap_2_32_0 = { features?(clap_2_32_0_features {}) }: clap_2_32_0_ {
    dependencies = mapFeatures features ([ bitflags_1_0_4 textwrap_0_10_0 unicode_width_0_1_5 ]
      ++ (if features.clap_2_32_0.atty or false then [ atty_0_2_11 ] else [])
      ++ (if features.clap_2_32_0.strsim or false then [ strsim_0_7_0 ] else [])
      ++ (if features.clap_2_32_0.vec_map or false then [ vec_map_0_8_1 ] else []))
      ++ (if !(kernel == "windows") then mapFeatures features ([ ]
      ++ (if features.clap_2_32_0.ansi_term or false then [ ansi_term_0_11_0 ] else [])) else []);
    features = mkFeatures (features.clap_2_32_0 or {});
  };
  clap_2_32_0_features = f: updateFeatures f (rec {
    ansi_term_0_11_0.default = true;
    atty_0_2_11.default = true;
    bitflags_1_0_4.default = true;
    clap_2_32_0.ansi_term =
      (f.clap_2_32_0.ansi_term or false) ||
      (f.clap_2_32_0.color or false) ||
      (clap_2_32_0.color or false);
    clap_2_32_0.atty =
      (f.clap_2_32_0.atty or false) ||
      (f.clap_2_32_0.color or false) ||
      (clap_2_32_0.color or false);
    clap_2_32_0.clippy =
      (f.clap_2_32_0.clippy or false) ||
      (f.clap_2_32_0.lints or false) ||
      (clap_2_32_0.lints or false);
    clap_2_32_0.color =
      (f.clap_2_32_0.color or false) ||
      (f.clap_2_32_0.default or false) ||
      (clap_2_32_0.default or false);
    clap_2_32_0.default = (f.clap_2_32_0.default or true);
    clap_2_32_0.strsim =
      (f.clap_2_32_0.strsim or false) ||
      (f.clap_2_32_0.suggestions or false) ||
      (clap_2_32_0.suggestions or false);
    clap_2_32_0.suggestions =
      (f.clap_2_32_0.suggestions or false) ||
      (f.clap_2_32_0.default or false) ||
      (clap_2_32_0.default or false);
    clap_2_32_0.term_size =
      (f.clap_2_32_0.term_size or false) ||
      (f.clap_2_32_0.wrap_help or false) ||
      (clap_2_32_0.wrap_help or false);
    clap_2_32_0.vec_map =
      (f.clap_2_32_0.vec_map or false) ||
      (f.clap_2_32_0.default or false) ||
      (clap_2_32_0.default or false);
    clap_2_32_0.yaml =
      (f.clap_2_32_0.yaml or false) ||
      (f.clap_2_32_0.doc or false) ||
      (clap_2_32_0.doc or false);
    clap_2_32_0.yaml-rust =
      (f.clap_2_32_0.yaml-rust or false) ||
      (f.clap_2_32_0.yaml or false) ||
      (clap_2_32_0.yaml or false);
    strsim_0_7_0.default = true;
    textwrap_0_10_0.default = true;
    textwrap_0_10_0.term_size =
      (f.textwrap_0_10_0.term_size or false) ||
      (clap_2_32_0.wrap_help or false) ||
      (f.clap_2_32_0.wrap_help or false);
    unicode_width_0_1_5.default = true;
    vec_map_0_8_1.default = true;
  }) [ atty_0_2_11_features bitflags_1_0_4_features strsim_0_7_0_features textwrap_0_10_0_features unicode_width_0_1_5_features vec_map_0_8_1_features ansi_term_0_11_0_features ];
  lazy_static_1_1_0 = { features?(lazy_static_1_1_0_features {}) }: lazy_static_1_1_0_ {
    dependencies = mapFeatures features ([]);
    buildDependencies = mapFeatures features ([ version_check_0_1_5 ]);
    features = mkFeatures (features.lazy_static_1_1_0 or {});
  };
  lazy_static_1_1_0_features = f: updateFeatures f (rec {
    lazy_static_1_1_0.default = (f.lazy_static_1_1_0.default or true);
    lazy_static_1_1_0.nightly =
      (f.lazy_static_1_1_0.nightly or false) ||
      (f.lazy_static_1_1_0.spin_no_std or false) ||
      (lazy_static_1_1_0.spin_no_std or false);
    lazy_static_1_1_0.spin =
      (f.lazy_static_1_1_0.spin or false) ||
      (f.lazy_static_1_1_0.spin_no_std or false) ||
      (lazy_static_1_1_0.spin_no_std or false);
    version_check_0_1_5.default = true;
  }) [ version_check_0_1_5_features ];
  lesspass_0_1_0 = { features?(lesspass_0_1_0_features {}) }: lesspass_0_1_0_ {
    dependencies = mapFeatures features ([ bitflags_1_0_4 lazy_static_1_1_0 num_bigint_0_2_0 num_integer_0_1_39 num_traits_0_2_6 ring_0_13_2 ]
      ++ (if features.lesspass_0_1_0.structopt or false then [ structopt_0_2_12 ] else []));
    features = mkFeatures (features.lesspass_0_1_0 or {});
  };
  lesspass_0_1_0_features = f: updateFeatures f (rec {
    bitflags_1_0_4.default = true;
    lazy_static_1_1_0.default = true;
    lesspass_0_1_0.default = (f.lesspass_0_1_0.default or true);
    lesspass_0_1_0.structopt =
      (f.lesspass_0_1_0.structopt or false) ||
      (f.lesspass_0_1_0.default or false) ||
      (lesspass_0_1_0.default or false);
    num_bigint_0_2_0.default = true;
    num_integer_0_1_39.default = true;
    num_traits_0_2_6.default = true;
    ring_0_13_2.default = true;
    structopt_0_2_12.default = true;
  }) [ bitflags_1_0_4_features lazy_static_1_1_0_features num_bigint_0_2_0_features num_integer_0_1_39_features num_traits_0_2_6_features ring_0_13_2_features structopt_0_2_12_features ];
  libc_0_2_43 = { features?(libc_0_2_43_features {}) }: libc_0_2_43_ {
    features = mkFeatures (features.libc_0_2_43 or {});
  };
  libc_0_2_43_features = f: updateFeatures f (rec {
    libc_0_2_43.default = (f.libc_0_2_43.default or true);
    libc_0_2_43.use_std =
      (f.libc_0_2_43.use_std or false) ||
      (f.libc_0_2_43.default or false) ||
      (libc_0_2_43.default or false);
  }) [];
  num_bigint_0_2_0 = { features?(num_bigint_0_2_0_features {}) }: num_bigint_0_2_0_ {
    dependencies = mapFeatures features ([ num_integer_0_1_39 num_traits_0_2_6 ]);
    features = mkFeatures (features.num_bigint_0_2_0 or {});
  };
  num_bigint_0_2_0_features = f: updateFeatures f (rec {
    num_bigint_0_2_0.default = (f.num_bigint_0_2_0.default or true);
    num_bigint_0_2_0.std =
      (f.num_bigint_0_2_0.std or false) ||
      (f.num_bigint_0_2_0.default or false) ||
      (num_bigint_0_2_0.default or false);
    num_integer_0_1_39.default = (f.num_integer_0_1_39.default or false);
    num_integer_0_1_39.i128 =
      (f.num_integer_0_1_39.i128 or false) ||
      (num_bigint_0_2_0.i128 or false) ||
      (f.num_bigint_0_2_0.i128 or false);
    num_integer_0_1_39.std =
      (f.num_integer_0_1_39.std or false) ||
      (num_bigint_0_2_0.std or false) ||
      (f.num_bigint_0_2_0.std or false);
    num_traits_0_2_6.default = (f.num_traits_0_2_6.default or false);
    num_traits_0_2_6.i128 =
      (f.num_traits_0_2_6.i128 or false) ||
      (num_bigint_0_2_0.i128 or false) ||
      (f.num_bigint_0_2_0.i128 or false);
    num_traits_0_2_6.std =
      (f.num_traits_0_2_6.std or false) ||
      (num_bigint_0_2_0.std or false) ||
      (f.num_bigint_0_2_0.std or false);
  }) [ num_integer_0_1_39_features num_traits_0_2_6_features ];
  num_integer_0_1_39 = { features?(num_integer_0_1_39_features {}) }: num_integer_0_1_39_ {
    dependencies = mapFeatures features ([ num_traits_0_2_6 ]);
    features = mkFeatures (features.num_integer_0_1_39 or {});
  };
  num_integer_0_1_39_features = f: updateFeatures f (rec {
    num_integer_0_1_39.default = (f.num_integer_0_1_39.default or true);
    num_integer_0_1_39.std =
      (f.num_integer_0_1_39.std or false) ||
      (f.num_integer_0_1_39.default or false) ||
      (num_integer_0_1_39.default or false);
    num_traits_0_2_6.default = (f.num_traits_0_2_6.default or false);
    num_traits_0_2_6.i128 =
      (f.num_traits_0_2_6.i128 or false) ||
      (num_integer_0_1_39.i128 or false) ||
      (f.num_integer_0_1_39.i128 or false);
    num_traits_0_2_6.std =
      (f.num_traits_0_2_6.std or false) ||
      (num_integer_0_1_39.std or false) ||
      (f.num_integer_0_1_39.std or false);
  }) [ num_traits_0_2_6_features ];
  num_traits_0_2_6 = { features?(num_traits_0_2_6_features {}) }: num_traits_0_2_6_ {
    features = mkFeatures (features.num_traits_0_2_6 or {});
  };
  num_traits_0_2_6_features = f: updateFeatures f (rec {
    num_traits_0_2_6.default = (f.num_traits_0_2_6.default or true);
    num_traits_0_2_6.std =
      (f.num_traits_0_2_6.std or false) ||
      (f.num_traits_0_2_6.default or false) ||
      (num_traits_0_2_6.default or false);
  }) [];
  proc_macro2_0_4_20 = { features?(proc_macro2_0_4_20_features {}) }: proc_macro2_0_4_20_ {
    dependencies = mapFeatures features ([ unicode_xid_0_1_0 ]);
    features = mkFeatures (features.proc_macro2_0_4_20 or {});
  };
  proc_macro2_0_4_20_features = f: updateFeatures f (rec {
    proc_macro2_0_4_20.default = (f.proc_macro2_0_4_20.default or true);
    proc_macro2_0_4_20.proc-macro =
      (f.proc_macro2_0_4_20.proc-macro or false) ||
      (f.proc_macro2_0_4_20.default or false) ||
      (proc_macro2_0_4_20.default or false) ||
      (f.proc_macro2_0_4_20.nightly or false) ||
      (proc_macro2_0_4_20.nightly or false);
    unicode_xid_0_1_0.default = true;
  }) [ unicode_xid_0_1_0_features ];
  quote_0_6_8 = { features?(quote_0_6_8_features {}) }: quote_0_6_8_ {
    dependencies = mapFeatures features ([ proc_macro2_0_4_20 ]);
    features = mkFeatures (features.quote_0_6_8 or {});
  };
  quote_0_6_8_features = f: updateFeatures f (rec {
    proc_macro2_0_4_20.default = (f.proc_macro2_0_4_20.default or false);
    proc_macro2_0_4_20.proc-macro =
      (f.proc_macro2_0_4_20.proc-macro or false) ||
      (quote_0_6_8.proc-macro or false) ||
      (f.quote_0_6_8.proc-macro or false);
    quote_0_6_8.default = (f.quote_0_6_8.default or true);
    quote_0_6_8.proc-macro =
      (f.quote_0_6_8.proc-macro or false) ||
      (f.quote_0_6_8.default or false) ||
      (quote_0_6_8.default or false);
  }) [ proc_macro2_0_4_20_features ];
  redox_syscall_0_1_40 = { features?(redox_syscall_0_1_40_features {}) }: redox_syscall_0_1_40_ {};
  redox_syscall_0_1_40_features = f: updateFeatures f (rec {
    redox_syscall_0_1_40.default = (f.redox_syscall_0_1_40.default or true);
  }) [];
  redox_termios_0_1_1 = { features?(redox_termios_0_1_1_features {}) }: redox_termios_0_1_1_ {
    dependencies = mapFeatures features ([ redox_syscall_0_1_40 ]);
  };
  redox_termios_0_1_1_features = f: updateFeatures f (rec {
    redox_syscall_0_1_40.default = true;
    redox_termios_0_1_1.default = (f.redox_termios_0_1_1.default or true);
  }) [ redox_syscall_0_1_40_features ];
  ring_0_13_2 = { features?(ring_0_13_2_features {}) }: ring_0_13_2_ {
    dependencies = mapFeatures features ([ untrusted_0_6_2 ])
      ++ (if kernel == "redox" || (kernel == "linux" || kernel == "darwin") && !(kernel == "darwin" || kernel == "ios") then mapFeatures features ([ lazy_static_1_1_0 ]) else [])
      ++ (if kernel == "linux" then mapFeatures features ([ libc_0_2_43 ]) else []);
    buildDependencies = mapFeatures features ([ cc_1_0_25 ]);
    features = mkFeatures (features.ring_0_13_2 or {});
  };
  ring_0_13_2_features = f: updateFeatures f (rec {
    cc_1_0_25.default = true;
    lazy_static_1_1_0.default = true;
    libc_0_2_43.default = true;
    ring_0_13_2.default = (f.ring_0_13_2.default or true);
    ring_0_13_2.dev_urandom_fallback =
      (f.ring_0_13_2.dev_urandom_fallback or false) ||
      (f.ring_0_13_2.default or false) ||
      (ring_0_13_2.default or false);
    ring_0_13_2.use_heap =
      (f.ring_0_13_2.use_heap or false) ||
      (f.ring_0_13_2.default or false) ||
      (ring_0_13_2.default or false) ||
      (f.ring_0_13_2.rsa_signing or false) ||
      (ring_0_13_2.rsa_signing or false);
    untrusted_0_6_2.default = true;
  }) [ untrusted_0_6_2_features cc_1_0_25_features lazy_static_1_1_0_features libc_0_2_43_features ];
  strsim_0_7_0 = { features?(strsim_0_7_0_features {}) }: strsim_0_7_0_ {};
  strsim_0_7_0_features = f: updateFeatures f (rec {
    strsim_0_7_0.default = (f.strsim_0_7_0.default or true);
  }) [];
  structopt_0_2_12 = { features?(structopt_0_2_12_features {}) }: structopt_0_2_12_ {
    dependencies = mapFeatures features ([ clap_2_32_0 structopt_derive_0_2_12 ]);
    features = mkFeatures (features.structopt_0_2_12 or {});
  };
  structopt_0_2_12_features = f: updateFeatures f (rec {
    clap_2_32_0.color =
      (f.clap_2_32_0.color or false) ||
      (structopt_0_2_12.color or false) ||
      (f.structopt_0_2_12.color or false);
    clap_2_32_0.debug =
      (f.clap_2_32_0.debug or false) ||
      (structopt_0_2_12.debug or false) ||
      (f.structopt_0_2_12.debug or false);
    clap_2_32_0.default =
      (f.clap_2_32_0.default or false) ||
      (structopt_0_2_12.default or false) ||
      (f.structopt_0_2_12.default or false) ||
      false;
    clap_2_32_0.doc =
      (f.clap_2_32_0.doc or false) ||
      (structopt_0_2_12.doc or false) ||
      (f.structopt_0_2_12.doc or false);
    clap_2_32_0.lints =
      (f.clap_2_32_0.lints or false) ||
      (structopt_0_2_12.lints or false) ||
      (f.structopt_0_2_12.lints or false);
    clap_2_32_0.no_cargo =
      (f.clap_2_32_0.no_cargo or false) ||
      (structopt_0_2_12.no_cargo or false) ||
      (f.structopt_0_2_12.no_cargo or false);
    clap_2_32_0.suggestions =
      (f.clap_2_32_0.suggestions or false) ||
      (structopt_0_2_12.suggestions or false) ||
      (f.structopt_0_2_12.suggestions or false);
    clap_2_32_0.wrap_help =
      (f.clap_2_32_0.wrap_help or false) ||
      (structopt_0_2_12.wrap_help or false) ||
      (f.structopt_0_2_12.wrap_help or false);
    clap_2_32_0.yaml =
      (f.clap_2_32_0.yaml or false) ||
      (structopt_0_2_12.yaml or false) ||
      (f.structopt_0_2_12.yaml or false);
    structopt_0_2_12.default = (f.structopt_0_2_12.default or true);
    structopt_derive_0_2_12.default = true;
    structopt_derive_0_2_12.nightly =
      (f.structopt_derive_0_2_12.nightly or false) ||
      (structopt_0_2_12.nightly or false) ||
      (f.structopt_0_2_12.nightly or false);
  }) [ clap_2_32_0_features structopt_derive_0_2_12_features ];
  structopt_derive_0_2_12 = { features?(structopt_derive_0_2_12_features {}) }: structopt_derive_0_2_12_ {
    dependencies = mapFeatures features ([ proc_macro2_0_4_20 quote_0_6_8 syn_0_15_9 ]);
    features = mkFeatures (features.structopt_derive_0_2_12 or {});
  };
  structopt_derive_0_2_12_features = f: updateFeatures f (rec {
    proc_macro2_0_4_20.default = true;
    proc_macro2_0_4_20.nightly =
      (f.proc_macro2_0_4_20.nightly or false) ||
      (structopt_derive_0_2_12.nightly or false) ||
      (f.structopt_derive_0_2_12.nightly or false);
    quote_0_6_8.default = true;
    structopt_derive_0_2_12.default = (f.structopt_derive_0_2_12.default or true);
    syn_0_15_9.default = true;
  }) [ proc_macro2_0_4_20_features quote_0_6_8_features syn_0_15_9_features ];
  syn_0_15_9 = { features?(syn_0_15_9_features {}) }: syn_0_15_9_ {
    dependencies = mapFeatures features ([ proc_macro2_0_4_20 unicode_xid_0_1_0 ]
      ++ (if features.syn_0_15_9.quote or false then [ quote_0_6_8 ] else []));
    features = mkFeatures (features.syn_0_15_9 or {});
  };
  syn_0_15_9_features = f: updateFeatures f (rec {
    proc_macro2_0_4_20.default = (f.proc_macro2_0_4_20.default or false);
    proc_macro2_0_4_20.proc-macro =
      (f.proc_macro2_0_4_20.proc-macro or false) ||
      (syn_0_15_9.proc-macro or false) ||
      (f.syn_0_15_9.proc-macro or false);
    quote_0_6_8.default = (f.quote_0_6_8.default or false);
    quote_0_6_8.proc-macro =
      (f.quote_0_6_8.proc-macro or false) ||
      (syn_0_15_9.proc-macro or false) ||
      (f.syn_0_15_9.proc-macro or false);
    syn_0_15_9.clone-impls =
      (f.syn_0_15_9.clone-impls or false) ||
      (f.syn_0_15_9.default or false) ||
      (syn_0_15_9.default or false);
    syn_0_15_9.default = (f.syn_0_15_9.default or true);
    syn_0_15_9.derive =
      (f.syn_0_15_9.derive or false) ||
      (f.syn_0_15_9.default or false) ||
      (syn_0_15_9.default or false);
    syn_0_15_9.parsing =
      (f.syn_0_15_9.parsing or false) ||
      (f.syn_0_15_9.default or false) ||
      (syn_0_15_9.default or false);
    syn_0_15_9.printing =
      (f.syn_0_15_9.printing or false) ||
      (f.syn_0_15_9.default or false) ||
      (syn_0_15_9.default or false);
    syn_0_15_9.proc-macro =
      (f.syn_0_15_9.proc-macro or false) ||
      (f.syn_0_15_9.default or false) ||
      (syn_0_15_9.default or false);
    syn_0_15_9.quote =
      (f.syn_0_15_9.quote or false) ||
      (f.syn_0_15_9.printing or false) ||
      (syn_0_15_9.printing or false);
    unicode_xid_0_1_0.default = true;
  }) [ proc_macro2_0_4_20_features quote_0_6_8_features unicode_xid_0_1_0_features ];
  termion_1_5_1 = { features?(termion_1_5_1_features {}) }: termion_1_5_1_ {
    dependencies = (if !(kernel == "redox") then mapFeatures features ([ libc_0_2_43 ]) else [])
      ++ (if kernel == "redox" then mapFeatures features ([ redox_syscall_0_1_40 redox_termios_0_1_1 ]) else []);
  };
  termion_1_5_1_features = f: updateFeatures f (rec {
    libc_0_2_43.default = true;
    redox_syscall_0_1_40.default = true;
    redox_termios_0_1_1.default = true;
    termion_1_5_1.default = (f.termion_1_5_1.default or true);
  }) [ libc_0_2_43_features redox_syscall_0_1_40_features redox_termios_0_1_1_features ];
  textwrap_0_10_0 = { features?(textwrap_0_10_0_features {}) }: textwrap_0_10_0_ {
    dependencies = mapFeatures features ([ unicode_width_0_1_5 ]);
  };
  textwrap_0_10_0_features = f: updateFeatures f (rec {
    textwrap_0_10_0.default = (f.textwrap_0_10_0.default or true);
    unicode_width_0_1_5.default = true;
  }) [ unicode_width_0_1_5_features ];
  unicode_width_0_1_5 = { features?(unicode_width_0_1_5_features {}) }: unicode_width_0_1_5_ {
    features = mkFeatures (features.unicode_width_0_1_5 or {});
  };
  unicode_width_0_1_5_features = f: updateFeatures f (rec {
    unicode_width_0_1_5.default = (f.unicode_width_0_1_5.default or true);
  }) [];
  unicode_xid_0_1_0 = { features?(unicode_xid_0_1_0_features {}) }: unicode_xid_0_1_0_ {
    features = mkFeatures (features.unicode_xid_0_1_0 or {});
  };
  unicode_xid_0_1_0_features = f: updateFeatures f (rec {
    unicode_xid_0_1_0.default = (f.unicode_xid_0_1_0.default or true);
  }) [];
  untrusted_0_6_2 = { features?(untrusted_0_6_2_features {}) }: untrusted_0_6_2_ {};
  untrusted_0_6_2_features = f: updateFeatures f (rec {
    untrusted_0_6_2.default = (f.untrusted_0_6_2.default or true);
  }) [];
  vec_map_0_8_1 = { features?(vec_map_0_8_1_features {}) }: vec_map_0_8_1_ {
    dependencies = mapFeatures features ([]);
    features = mkFeatures (features.vec_map_0_8_1 or {});
  };
  vec_map_0_8_1_features = f: updateFeatures f (rec {
    vec_map_0_8_1.default = (f.vec_map_0_8_1.default or true);
    vec_map_0_8_1.serde =
      (f.vec_map_0_8_1.serde or false) ||
      (f.vec_map_0_8_1.eders or false) ||
      (vec_map_0_8_1.eders or false);
  }) [];
  version_check_0_1_5 = { features?(version_check_0_1_5_features {}) }: version_check_0_1_5_ {};
  version_check_0_1_5_features = f: updateFeatures f (rec {
    version_check_0_1_5.default = (f.version_check_0_1_5.default or true);
  }) [];
  winapi_0_3_6 = { features?(winapi_0_3_6_features {}) }: winapi_0_3_6_ {
    dependencies = (if kernel == "i686-pc-windows-gnu" then mapFeatures features ([ winapi_i686_pc_windows_gnu_0_4_0 ]) else [])
      ++ (if kernel == "x86_64-pc-windows-gnu" then mapFeatures features ([ winapi_x86_64_pc_windows_gnu_0_4_0 ]) else []);
    features = mkFeatures (features.winapi_0_3_6 or {});
  };
  winapi_0_3_6_features = f: updateFeatures f (rec {
    winapi_0_3_6.default = (f.winapi_0_3_6.default or true);
    winapi_i686_pc_windows_gnu_0_4_0.default = true;
    winapi_x86_64_pc_windows_gnu_0_4_0.default = true;
  }) [ winapi_i686_pc_windows_gnu_0_4_0_features winapi_x86_64_pc_windows_gnu_0_4_0_features ];
  winapi_i686_pc_windows_gnu_0_4_0 = { features?(winapi_i686_pc_windows_gnu_0_4_0_features {}) }: winapi_i686_pc_windows_gnu_0_4_0_ {};
  winapi_i686_pc_windows_gnu_0_4_0_features = f: updateFeatures f (rec {
    winapi_i686_pc_windows_gnu_0_4_0.default = (f.winapi_i686_pc_windows_gnu_0_4_0.default or true);
  }) [];
  winapi_x86_64_pc_windows_gnu_0_4_0 = { features?(winapi_x86_64_pc_windows_gnu_0_4_0_features {}) }: winapi_x86_64_pc_windows_gnu_0_4_0_ {};
  winapi_x86_64_pc_windows_gnu_0_4_0_features = f: updateFeatures f (rec {
    winapi_x86_64_pc_windows_gnu_0_4_0.default = (f.winapi_x86_64_pc_windows_gnu_0_4_0.default or true);
  }) [];
}
