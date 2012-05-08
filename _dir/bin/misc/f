#! /usr/bin/php

<?php

// Init vars.
$searchType = 'word'; // default search type is word (as opposed to namespace)
$sourceCommand = null; // placeholder for the command for finding the search term's source
$usageCommand = null; // placeholder for the command for finding the search term's usage

if (preg_match('/\\\\/', $argv[1]))
{
  $searchType = 'namespace';
}

// Source search.
if ($searchType == 'namespace')
{
  $sourceCommand = "egrep -Rlw namespace " . $argv[1] . ";' *";
}

if ($searchType == 'word')
{
  $sourceCommand = 'egrep -Rlw "(class|function) ' . $argv[1] . '" *';
}

// Usage search.
$usageCommand = 'egrep -Rl "' . $argv[1] . '" *';

// Define the commands.
$sourceExec = exec($sourceCommand, $sourceResults, $returnVar);
$usageExec = exec($usageCommand, $usageResults, $returnVar);

// Define excluded/blacklisted files.
$excludes = array(
  'cache/',
  'log/',
  '.svn/',
);

// Check for multiple results.
if (count($output) > 1)
{
  foreach ($output as $id => $result)
  {
    // Purge any excludes we find in our results.
    foreach ($excludes as $exclude)
    {
      if (strstr($result, $exclude))
      {
        unset($output[$id]);
      }
    }
  }
}

// Output source results.
if (!in_array('--exclude-source', $argv))
{
  renderHeading('Source');
  renderList($sourceResults);

  echo "\n";
}

// Output usage results.
if (!in_array('--exclude-usage', $argv))
{
  renderHeading('Usage');
  renderList($usageResults);

  echo "\n";
}

// Editor functionality in hiding.
//$use_editor = true;
//include('fs.editor');

//if ($use_editor)
//{
  //$files = implode(' ', $output);
  //$command = $editor . ' ' . $editor_command . ' ' . $files;

  //if ($files)
  //{
    //exec($sourceCommand);
  //}
//}
//else
//{
  //foreach ($output as $result)
  //{
    //echo $result . "\n";
  //}
//}

function renderHeading($text)
{
  echo '------------' . "\n";
  echo '- ' . $text . "\n";
  echo '------------' . "\n";
}

function renderList($results)
{
  foreach ($results as $num => $result)
  {
    echo $num . ' - ' . $result . "\n";
  }
}
