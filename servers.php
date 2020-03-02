<?php
/*  BanManagement � 2012, a web interface for the Bukkit plugin BanManager
    by James Mortemore of http://www.frostcast.net
	is licenced under a Creative Commons
	Attribution-NonCommercial-ShareAlike 2.0 UK: England & Wales.
	Permissions beyond the scope of this licence 
	may be available at http://creativecommons.org/licenses/by-nc-sa/2.0/uk/.
	Additional licence terms at https://raw.github.com/confuser/Ban-Management/master/banmanagement/licence.txt
*/
if(empty($settings['servers']))
	echo '没有找到任何服务器！';
else {
	?>
	<table class="table table-striped table-bordered">
		<caption>服务器封禁统计</caption>
		<thead>
			<th>服务器</th>
			<th>目前临时的封禁</th>
			<th>目前永久的封禁</th>
			<th>过去的封禁</th>
		</thead>
		<tbody>
	<?php
	$id = array_keys($settings['servers']);
	$i = 0;
	foreach($settings['servers'] as $server) {
		// Make sure we can connecet
		if(!connect($server)) {
			?><tr><td colspan="3">无法连接到数据库~</td></tr><?php
		} else {
			list($currentTempBans) = cache("SELECT COUNT(*) FROM ".$server['bansTable']." WHERE ban_expires_on != 0", 3600, '', $server, $server['name'].'currentTempStats');

			list($currentPermBans) = cache("SELECT COUNT(*) FROM ".$server['bansTable']." WHERE ban_expires_on = 0", 3600, '', $server, $server['name'].'currentPermStats');

			list($pastBans) = cache("SELECT COUNT(*) FROM ".$server['recordTable'], 3600, '', $server, $server['name'].'pastBanStats');
			
			echo '
			<tr>
				<td>'.$server['name'].'</td>
				<td>'.$currentTempBans.'</td>
				<td>'.$currentPermBans.'</td>
				<td>'.$pastBans.'</td>
			</tr>';
		}
		?>
		
		<?php
	}
	?>
		</tbody>
	</table><?php
}
?>