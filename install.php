<?php

/**
 * A quick and dirty script to symlink various dotfiles to a home directory.  
 *
 * @author Joshua Morse <dashvibe@gmail.com>
 */

$currentDir = __DIR__;
$targetDir = '~';
$filesToInstall = array(
    'bashrc'  => '.bashrc',
    'bin'     => 'bin',
    'inputrc' => '.inputrc',
    'vim'     => '.vim',
    'vimrc'   => '.vimrc',
);

foreach ($filesToInstall as $file => $targetFile) {
    system("rm -rf {$targetDir}/.{$targetFile}");

    echo "Installing {$file}\n";
    system("ln -s {$currentDir}/{$file} {$targetDir}/{$targetFile}");
}
