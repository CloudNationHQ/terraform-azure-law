# Changelog

## [2.3.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v2.2.1...v2.3.0) (2025-01-20)


### Features

* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#86](https://github.com/CloudNationHQ/terraform-azure-law/issues/86)) ([0fb5103](https://github.com/CloudNationHQ/terraform-azure-law/commit/0fb5103cdd3585a9d7fddcfb48e28ee1355b4cbd))
* **deps:** bump golang.org/x/crypto from 0.29.0 to 0.31.0 in /tests ([#89](https://github.com/CloudNationHQ/terraform-azure-law/issues/89)) ([7a96e38](https://github.com/CloudNationHQ/terraform-azure-law/commit/7a96e38aad1568fcf74fd5127dd09210f5499c93))
* **deps:** bump golang.org/x/net from 0.31.0 to 0.33.0 in /tests ([#90](https://github.com/CloudNationHQ/terraform-azure-law/issues/90)) ([1a6551e](https://github.com/CloudNationHQ/terraform-azure-law/commit/1a6551ed42cc0b512741c6fdc1c8ebfe5c43b674))
* remove temporary files when deployment tests fails ([#87](https://github.com/CloudNationHQ/terraform-azure-law/issues/87)) ([1ea6651](https://github.com/CloudNationHQ/terraform-azure-law/commit/1ea66511d7775988ce8f20458bb446f891d20ad3))

## [2.2.1](https://github.com/CloudNationHQ/terraform-azure-law/compare/v2.2.0...v2.2.1) (2024-11-13)


### Bug Fixes

* fix submodule documentation generation ([#83](https://github.com/CloudNationHQ/terraform-azure-law/issues/83)) ([8b558c8](https://github.com/CloudNationHQ/terraform-azure-law/commit/8b558c8867e1a2a507cabb540cacfffad72aed04))

## [2.2.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v2.1.0...v2.2.0) (2024-11-11)


### Features

* enhance testing with sequential, parallel modes and flags for exceptions and skip-destroy ([#81](https://github.com/CloudNationHQ/terraform-azure-law/issues/81)) ([c0ea947](https://github.com/CloudNationHQ/terraform-azure-law/commit/c0ea9479b0a336f61133ff89b7802a2d09979495))

## [2.1.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v2.0.1...v2.1.0) (2024-10-11)


### Features

* auto generated docs and refine makefile ([#79](https://github.com/CloudNationHQ/terraform-azure-law/issues/79)) ([fb43171](https://github.com/CloudNationHQ/terraform-azure-law/commit/fb431715dc287ce2749c76925e3b18bf350e8f45))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#78](https://github.com/CloudNationHQ/terraform-azure-law/issues/78)) ([2c79ee1](https://github.com/CloudNationHQ/terraform-azure-law/commit/2c79ee1affde50dd77b8b1acc39b2ccf0f97a09c))

## [2.0.1](https://github.com/CloudNationHQ/terraform-azure-law/compare/v2.0.0...v2.0.1) (2024-09-25)


### Bug Fixes

* global tags and updated examples ([#76](https://github.com/CloudNationHQ/terraform-azure-law/issues/76)) ([5a2b8b1](https://github.com/CloudNationHQ/terraform-azure-law/commit/5a2b8b16f2c7392c0d25f29f3b91563ce650109f))

## [2.0.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v1.2.0...v2.0.0) (2024-09-25)


### ⚠ BREAKING CHANGES

* Version 4 of the azurerm provider includes breaking changes.

### Features

* upgrade azurerm provider to v4 ([#74](https://github.com/CloudNationHQ/terraform-azure-law/issues/74)) ([bfb9950](https://github.com/CloudNationHQ/terraform-azure-law/commit/bfb995066519b342afb5ac704e8acb874aeb0d11))

### Upgrade from v1.2.0 to v2.0.0:

- Update module reference to: `version = "~> 2.0"`

## [1.2.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v1.1.0...v1.2.0) (2024-08-28)


### Features

* add question template and update documentation ([#72](https://github.com/CloudNationHQ/terraform-azure-law/issues/72)) ([94f1600](https://github.com/CloudNationHQ/terraform-azure-law/commit/94f1600e10ed0ec5550d8039ade2e5d8bdd77d22))
* update documentation ([#70](https://github.com/CloudNationHQ/terraform-azure-law/issues/70)) ([bf32dba](https://github.com/CloudNationHQ/terraform-azure-law/commit/bf32dba9bd69cff99d0f50d464bacea5b8a2320c))

## [1.1.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v1.0.0...v1.1.0) (2024-08-20)


### Features

* add support for tables ([#68](https://github.com/CloudNationHQ/terraform-azure-law/issues/68)) ([c4ff3e1](https://github.com/CloudNationHQ/terraform-azure-law/commit/c4ff3e1cc98bc53e043709d552492edd4a00ac77))

## [1.0.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.12.0...v1.0.0) (2024-08-14)


### ⚠ BREAKING CHANGES

* data structure has changed due to renaming of properties and output variables.

### Features

* aligned several properties ([#65](https://github.com/CloudNationHQ/terraform-azure-law/issues/65)) ([8e86489](https://github.com/CloudNationHQ/terraform-azure-law/commit/8e864898915358c812d1d44d7a477c9d9232dc7e))

### Upgrade from v0.12.0 to v1.0.0:

- Update module reference to: `version = "~> 1.0"`
- Instance object has changed to workspace
- Rename properties in instance object:
  - resourcegroup -> resource_group
- Rename variable (optional):
  - resourcegroup -> resource_group
- Rename output variable:
  - subscriptionId -> subscription_id'

## [0.12.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.11.0...v0.12.0) (2024-08-13)


### Features

* added code of conduct and security documentation ([#62](https://github.com/CloudNationHQ/terraform-azure-law/issues/62)) ([75ed902](https://github.com/CloudNationHQ/terraform-azure-law/commit/75ed902d5a4b17f5c5311699cfd9d8faa1a33308))

## [0.11.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.10.0...v0.11.0) (2024-08-01)


### Features

* add support for linking storage with different data source types ([#60](https://github.com/CloudNationHQ/terraform-azure-law/issues/60)) ([ac8d380](https://github.com/CloudNationHQ/terraform-azure-law/commit/ac8d3801d513061c2c47c25b355aa4b03d95cb22))

## [0.10.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.9.0...v0.10.0) (2024-08-01)


### Features

* add identity support ([#55](https://github.com/CloudNationHQ/terraform-azure-law/issues/55)) ([66ad63b](https://github.com/CloudNationHQ/terraform-azure-law/commit/66ad63b3d22d40488e02066710002bae1e18f844))
* add support for linking automation account ([#57](https://github.com/CloudNationHQ/terraform-azure-law/issues/57)) ([e642f3d](https://github.com/CloudNationHQ/terraform-azure-law/commit/e642f3d15c5618ca48ded3b8ced1eb1e05a71e66))


### Bug Fixes

* make linked services fully optional ([#58](https://github.com/CloudNationHQ/terraform-azure-law/issues/58)) ([31d1001](https://github.com/CloudNationHQ/terraform-azure-law/commit/31d1001e686e4236317cb746d23be9c5c7a7350a))

## [0.9.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.8.0...v0.9.0) (2024-07-31)


### Features

* add type definitions in all usage documentation ([#52](https://github.com/CloudNationHQ/terraform-azure-law/issues/52)) ([416bcb9](https://github.com/CloudNationHQ/terraform-azure-law/commit/416bcb981a4e40c981486bc311071197dc85e9f5))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#50](https://github.com/CloudNationHQ/terraform-azure-law/issues/50)) ([7d5e52d](https://github.com/CloudNationHQ/terraform-azure-law/commit/7d5e52da6164d1d30a00051daa3de57e11aac9a9))
* update contribution docs ([80c0bb6](https://github.com/CloudNationHQ/terraform-azure-law/commit/80c0bb6bafaee0faf892c539218cedc9365ba2f2))


### Bug Fixes

* remove redundant provider blocks in all usages ([#53](https://github.com/CloudNationHQ/terraform-azure-law/issues/53)) ([0b6cac3](https://github.com/CloudNationHQ/terraform-azure-law/commit/0b6cac3aba700a03247c386db0a2cf5b41dbf231))

## [0.8.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.7.0...v0.8.0) (2024-07-02)


### Features

* add issue template ([#47](https://github.com/CloudNationHQ/terraform-azure-law/issues/47)) ([6890fc8](https://github.com/CloudNationHQ/terraform-azure-law/commit/6890fc8923a1ea06380a79e3fc99e6c4acad1437))
* **deps:** bump github.com/Azure/azure-sdk-for-go/sdk/azidentity ([#42](https://github.com/CloudNationHQ/terraform-azure-law/issues/42)) ([97b0803](https://github.com/CloudNationHQ/terraform-azure-law/commit/97b0803cc230dc322265f41bad6f072428a16d6d))
* **deps:** bump github.com/Azure/azure-sdk-for-go/sdk/azidentity ([#44](https://github.com/CloudNationHQ/terraform-azure-law/issues/44)) ([f5e25ad](https://github.com/CloudNationHQ/terraform-azure-law/commit/f5e25ad9394e6c136141d554f480e5ee18977742))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#39](https://github.com/CloudNationHQ/terraform-azure-law/issues/39)) ([4bb0f60](https://github.com/CloudNationHQ/terraform-azure-law/commit/4bb0f600d1811f12afd86c7ac8bac0a53a2d5a0b))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#46](https://github.com/CloudNationHQ/terraform-azure-law/issues/46)) ([3f9f4d9](https://github.com/CloudNationHQ/terraform-azure-law/commit/3f9f4d93063848ecb5173c08b04dbf6b17e22867))
* **deps:** bump github.com/hashicorp/go-getter in /tests ([#45](https://github.com/CloudNationHQ/terraform-azure-law/issues/45)) ([fcbc78b](https://github.com/CloudNationHQ/terraform-azure-law/commit/fcbc78b72fef712549d347db26e1a9d24571114e))
* **deps:** bump golang.org/x/net from 0.19.0 to 0.23.0 in /tests ([#36](https://github.com/CloudNationHQ/terraform-azure-law/issues/36)) ([47a968b](https://github.com/CloudNationHQ/terraform-azure-law/commit/47a968b08b28f09301bff0d90527a5acb3cad54c))

## [0.7.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.6.0...v0.7.0) (2024-06-07)


### Features

* create pull request template ([#40](https://github.com/CloudNationHQ/terraform-azure-law/issues/40)) ([6061280](https://github.com/CloudNationHQ/terraform-azure-law/commit/6061280e111daaa7f228c352ec6bd761de9f7e2e))
* **deps:** bump github.com/Azure/azure-sdk-for-go/sdk/azidentity ([#35](https://github.com/CloudNationHQ/terraform-azure-law/issues/35)) ([d385e77](https://github.com/CloudNationHQ/terraform-azure-law/commit/d385e7737be71ef69dec512b70180435d9de2dfe))
* **deps:** bump github.com/hashicorp/go-getter in /tests ([#37](https://github.com/CloudNationHQ/terraform-azure-law/issues/37)) ([6dfbc92](https://github.com/CloudNationHQ/terraform-azure-law/commit/6dfbc928c353d253a9d123eea35de0518cb4f38a))
* **deps:** bump github.com/stretchr/testify in /tests ([#32](https://github.com/CloudNationHQ/terraform-azure-law/issues/32)) ([1974298](https://github.com/CloudNationHQ/terraform-azure-law/commit/19742982e6401207caafa88d0ede9c15237dfd11))
* **deps:** bump google.golang.org/protobuf in /tests ([#33](https://github.com/CloudNationHQ/terraform-azure-law/issues/33)) ([0a8ff7d](https://github.com/CloudNationHQ/terraform-azure-law/commit/0a8ff7d71f7958627a021aa385895d4de7d58beb))

## [0.6.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.5.0...v0.6.0) (2024-02-21)


### Features

* add missing tags property ([#29](https://github.com/CloudNationHQ/terraform-azure-law/issues/29)) ([87dd4cc](https://github.com/CloudNationHQ/terraform-azure-law/commit/87dd4cc7a28da6c14a3847869baaeb9915388c42))
* add some missing properties ([#28](https://github.com/CloudNationHQ/terraform-azure-law/issues/28)) ([da7208c](https://github.com/CloudNationHQ/terraform-azure-law/commit/da7208cbad3838ee7bf7786d8cb7196268f2898c))
* add support for data export rules ([#27](https://github.com/CloudNationHQ/terraform-azure-law/issues/27)) ([d853bf4](https://github.com/CloudNationHQ/terraform-azure-law/commit/d853bf4770a4a3eeffe032aac537fb4c2aed6b5b))
* **deps:** bump github.com/Azure/azure-sdk-for-go/sdk/azidentity ([#23](https://github.com/CloudNationHQ/terraform-azure-law/issues/23)) ([98e06eb](https://github.com/CloudNationHQ/terraform-azure-law/commit/98e06eb348c291234eb8da6e854bc42ac128527a))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#24](https://github.com/CloudNationHQ/terraform-azure-law/issues/24)) ([157760c](https://github.com/CloudNationHQ/terraform-azure-law/commit/157760cb5ae312a92c30f4c6dee96da379b2fba9))

## [0.5.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.4.0...v0.5.0) (2024-01-19)


### Features

* **deps:** Bump github.com/gruntwork-io/terratest from 0.46.8 to 0.46.9 in /tests ([#20](https://github.com/CloudNationHQ/terraform-azure-law/issues/20)) ([5fd6084](https://github.com/CloudNationHQ/terraform-azure-law/commit/5fd60846ae5d9f24e7b1e7a707b288e6bc345391))
* small refactor workflows ([#21](https://github.com/CloudNationHQ/terraform-azure-law/issues/21)) ([e892dc3](https://github.com/CloudNationHQ/terraform-azure-law/commit/e892dc30447fb2efceb85ab952fb7ad48a62bb59))

## [0.4.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.3.0...v0.4.0) (2023-12-19)


### Features

* **deps:** bump github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/operationalinsights/armoperationalinsights ([#16](https://github.com/CloudNationHQ/terraform-azure-law/issues/16)) ([f4b072b](https://github.com/CloudNationHQ/terraform-azure-law/commit/f4b072bc7b04299a660e4eff3732469b795aa688))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#13](https://github.com/CloudNationHQ/terraform-azure-law/issues/13)) ([a393010](https://github.com/CloudNationHQ/terraform-azure-law/commit/a393010df96a2fc8b90b59e3a9d2d83643d8a330))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#14](https://github.com/CloudNationHQ/terraform-azure-law/issues/14)) ([979509d](https://github.com/CloudNationHQ/terraform-azure-law/commit/979509d68ac7c43ef9309385985f217355ef0cf0))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#17](https://github.com/CloudNationHQ/terraform-azure-law/issues/17)) ([84e9cfc](https://github.com/CloudNationHQ/terraform-azure-law/commit/84e9cfc8bfc3a6ac331c2c1825d5db540c88ad99))
* **deps:** bump github.com/stretchr/testify in /tests ([#11](https://github.com/CloudNationHQ/terraform-azure-law/issues/11)) ([ecf7ad3](https://github.com/CloudNationHQ/terraform-azure-law/commit/ecf7ad305a5cac078b42551c2910bca0f159aa74))
* **deps:** bump golang.org/x/crypto from 0.14.0 to 0.17.0 in /tests ([#18](https://github.com/CloudNationHQ/terraform-azure-law/issues/18)) ([cd95f8e](https://github.com/CloudNationHQ/terraform-azure-law/commit/cd95f8e6be78dc9ffa696c06795c956d31727d76))

## [0.3.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.2.1...v0.3.0) (2023-11-03)


### Features

* fix module source references in examples ([#9](https://github.com/CloudNationHQ/terraform-azure-law/issues/9)) ([e857f13](https://github.com/CloudNationHQ/terraform-azure-law/commit/e857f13f6e6be25022646796e916891bafda733b))

## [0.2.1](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.2.0...v0.2.1) (2023-11-02)


### Bug Fixes

* use map instead of a flat list in solutions ([#7](https://github.com/CloudNationHQ/terraform-azure-law/issues/7)) ([e3df37b](https://github.com/CloudNationHQ/terraform-azure-law/commit/e3df37b4a93757b258e4acbd46391e54e0a93b19))

## [0.2.0](https://github.com/CloudNationHQ/terraform-azure-law/compare/v0.1.0...v0.2.0) (2023-11-02)


### Features

* add extended tests ([#4](https://github.com/CloudNationHQ/terraform-azure-law/issues/4)) ([1e4aba9](https://github.com/CloudNationHQ/terraform-azure-law/commit/1e4aba995bb9120de7ae12fa69656e3408311079))

## 0.1.0 (2023-11-01)


### Features

* add initial workflows ([#1](https://github.com/CloudNationHQ/terraform-azure-law/issues/1)) ([db7d1b3](https://github.com/CloudNationHQ/terraform-azure-law/commit/db7d1b33f404a1d0fe1bf348af105a17bf16824d))
* add intitial resources ([#3](https://github.com/CloudNationHQ/terraform-azure-law/issues/3)) ([08b42f3](https://github.com/CloudNationHQ/terraform-azure-law/commit/08b42f3546654602c9495801d8884e19c20e833a))
