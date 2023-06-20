#!/bin/sh
exec ruby -x "$0" "$@"

#!ruby
result		= `norminette`;
exit_status	= $?.exitstatus
if exit_status == 0 then
	print("[\e[32mOK\e[0m]\n");
else
	show_message = `norminette | grep -Ev 'OK!'`;
	print(show_message);
end
