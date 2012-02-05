param($installPath, $toolsPath, $package, $project)
$path = [System.IO.Path]
$readmefile = $path::Combine($path::GetDirectoryName($project.FileName), "grazewp7_readme.txt")
$DTE.ItemOperations.OpenFile($readmefile)
$originalTemplateFile = $path::Combine($path::GetDirectoryName($project.FileName), "template\index.cshtml")
$newTemplateFile = $path::Combine($path::GetDirectoryName($project.FileName), "template\remove\wp7_index.cshtml")
$originalConfigurationFile = $path::Combine($path::GetDirectoryName($project.FileName), "template\configuration.xml")
$newConfigurationFile = $path::Combine($path::GetDirectoryName($project.FileName), "template\remove\wp7_configuration.xml")
Move-Item $newTemplateFile $originalTemplateFile -force
Move-Item $newConfigurationFile $originalConfigurationFile -force