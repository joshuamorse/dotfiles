<?php

/**
 * A quick and dirty script to symlink various dotfiles to a home directory.  
 *
 * @author Joshua Morse <dashvibe@gmail.com>
 */

$currentDir     = __DIR__;
$targetDir      = '~';
$filesToInstall = array(
    '_rc/bashrc'  => '.bashrc',
    '_dir/bin'    => 'bin',
    '_rc/inputrc' => '.inputrc',
    '_dir/vim'    => '.vim',
    '_rc/vimrc'   => '.vimrc',
);

foreach ($filesToInstall as $file => $targetFile) {
    system("rm -rf {$targetDir}/{$targetFile}");

    echo "Installing {$targetFile}\n";
    system("ln -s {$currentDir}/{$file} {$targetDir}/{$targetFile}");
}
