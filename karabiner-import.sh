#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set bilalh.remap.f19_escape_control 1
/bin/echo -n .
$cli set remap.commandR2commandR_enter 1
/bin/echo -n .
$cli set remap.eject2forwarddelete 1
/bin/echo -n .
$cli set remap.return2controlL_return 1
/bin/echo -n .
$cli set repeat.initial_wait 500
/bin/echo -n .
$cli set repeat.wait 20
/bin/echo -n .
/bin/echo
