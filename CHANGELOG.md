# Changelog for project git-templates
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) 
and adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v3.0.1]
*Released on 2020-12-02*

### Added                        
- Add mime type 'text/x-Algol68'

### Changed                      
- Change allowed mime types 

## [v3.0.0] (Major release)                        
*Released on 2020-11-27*                           

### Added                                          
- Add a new check wrap script                      
- Add a new check period script                    
- Add new check subject length script              
- Add new checking for first word script           
- Add check for mime type                          
- Add new check for merge markers                  
- Add new check for file size                      
- Add check for commit size                        
- Add new branch check                             
- Add a new vision for this project                

### Changed                                        
- Change output formatting on pre-commit           
- Change commit-msg to use new scripts             
- Change the pre-commit hook to use the new scripts

### Removed                                        
- Remove helper files for older scripts            
- Remove old commit-msg scripts                    
- Remove old pre-commit files                      

### Fixed                                          
- Fix failure when committing removed files

## [v2.0.0] (Major release)
*Released on 2020-10-16*

### Added
- Add bugfix alias
- Add alias command to list aliases
- Add new git aliases

### Changed
- Update filecount values to be more relaxed
- Refactor LICENSE to GNU3

### Removed
- Remove github.io doc site in favour of strong README
- Remove adding branch name to commits

## [v1.0.0] (Major release, Update recommended)
*Released on 2019-09-30*

### Added
- Add track keyword for adding to the todo section

### Changed
- Update acceptable first words
