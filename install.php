<?php
/**
 * A quick and dirty script to symlink various dotfiles to a home directory.
 * @author Joshua Morse <dashvibe@gmail.com>
 */

$currentDir     = __DIR__;
$targetDir      = '~';
$filesToInstall = array(
    '_dir/bin'               => 'bin',
    '_dir/vim'               => '.vim',
    '_rc/bashrc'             => '.bashrc',
    '_rc/bashrc_local_mac'   => '.bashrc.local.mac',
    '_rc/bashrc_prompt'      => '.bashrc.prompt',
    '_rc/inputrc'            => '.inputrc',
    '_rc/vimrc'              => '.vimrc',
    '_rc/tmux.conf'          => '.tmux.conf',
);

foreach ($filesToInstall as $file => $targetFile) {
    system("rm -rf {$targetDir}/{$targetFile}");

    echo "Installing {$targetFile}\n";
    system("ln -s {$currentDir}/{$file} {$targetDir}/{$targetFile}");
}
