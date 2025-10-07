# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.5] - 2025-10-8

### Changed
- Bump version from 1.0.4 to 1.0.5

### Dependencies
- Bump igniter from 0.6.29 to 0.6.30

### CI/CD
- Update Elixir version from 1.19.0-rc.0 to 1.19.0-rc.2 in test matrix
- Update both Ubuntu and Windows test configurations

### Build
- Add "dialyxir" to cspell dictionary for better spell checking

## [1.0.4] - 2025-09-23

### Changed
- Bump version from 1.0.3 to 1.0.4
- Update GitHub repository link in package metadata

### Dependencies
- Bump igniter from 0.6.21 to 0.6.29
- Bump ex_doc from 0.38.2 to 0.38.4
- Bump dialyxir from 1.4.5 to 1.4.6
- Bump actions/checkout from 4 to 5
- Bump jdx/mise-action from 2 to 3

### CI/CD
- Update OTP versions in test matrix and documentation
- Add Windows 2025 support to test matrix
- Update supported platforms documentation

## [1.0.3] - 2025-07-16

### Changed
- Bump version from 1.0.2 to 1.0.3
- Clean up dependencies by removing commented-out dependency examples

### Added
- Add macOS Sonoma support to CI pipeline
- Add Sonoma to spell checker custom words

### Dependencies
- Bump igniter from 0.6.11 to 0.6.19
- Bump erlef/setup-beam from 1.20.3 to 1.20.4

## [1.0.2] - 2025-06-28

### Changed
- Bump version from 1.0.1 to 1.0.2
- Update license file reference in documentation config

### Fixed
- Remove Windows 2019 CI configuration

### Dependencies
- Bump igniter from 0.6.9 to 0.6.11
- Bump erlef/setup-beam from 1.20.1 to 1.20.3

## [1.0.1] - 2025-06-05

### Changed
- Bump version from 1.0.0 to 1.0.1
- Update package version to 1.0 in README

### Dependencies
- Bump erlef/setup-beam from 1.19.0 to 1.20.1
- Bump ex_doc from 0.38.1 to 0.38.2

## [1.0.0] - 2025-05-26

### Changed
- Bump version to 1.0.0 (stable release)

## [0.2.0] - 2025-05-26

### Added
- Enhanced EPMD Management Features
- Add EPMD Management Features
- Add `find_epmd_executable/0` function

### Fixed
- Add quotes around version numbers in GitHub Actions workflow

### Dependencies
- Bump erlef/setup-beam

## [0.1.0] - 2025-05-25

### Added
- Initial release of EpmdUp
- Core functionality for EPMD management:
  - `activate/0`: Starts `epmd` if it's not already running
  - `active?/0`: Check if `epmd` is active and accepting connections
  - `deactivate/0`: Stops `epmd` if it's running
  - `find_epmd_executable/0`: Find the full path of the `epmd` executable in the system
- Cross-platform support (Linux, macOS, Windows)
- GitHub Actions CI workflow
- Multi-version testing support
- Apache License 2.0
- Comprehensive documentation and README

### Technical Details
- Elixir version requirement: ~> 1.15
- Tested platforms include Ubuntu 22.04, Windows 2022, and macOS Sonoma
- Support for Elixir versions 1.15 through 1.19
- Support for OTP versions 25 through 28
