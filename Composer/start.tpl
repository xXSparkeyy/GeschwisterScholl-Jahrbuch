<?php ?>
<div class='container' action='#'>
	<div class='row'>
		<?php if (Login::isAdmin(Login::checkUser()['user_id'])){ ?>
			<div class='col s6'>
				<ul class='collection with-header'>
					<li class='collection-header'><h4>Benutzer (<?php $profiles = Profile::listProfiles( ); echo count( $profiles ) ?>)</h4></li>
						<div class='dashboard_info_container'>
			    <?php
						foreach( $profiles as $itm ) {
							$s = $itm['FName'];
							$a = $itm['LName'];
							$z = $itm['user_id'];
							echo "
							<a href='/profile/$z'><li class='collection-item avatar '>
								<img src='images/yuna.jpg' alt='' class='circle'>
								<span class='title'>$s</span>
								<p>$a<br>
								</p>
							</li></a>
							";
						}
						?>
						</div>
			  </ul>
			</div>
			<div class='col s6'>
				<ul class='collection with-header'>
					<li class='collection-header'><h4>Log's</h4></li>
					<div class='dashboard_info_container'>
					<?php
						$res = Log::getMessages( );
						foreach( $res as $itm ) {
							$s = $itm['content'];
							$a = $itm['date'];
							echo "
							<li class='collection-item'>
								<span class='title'>$s</span>
								<p>$a
								</p>
							</li>
							";
						}
						?>
					</div>

				</ul>
			</div>
			<div class='col s12'>
				<ul class='collection with-header'>
					<li class='collection-header'><h4>Umfragen (<?php $surveys = Survey::getSurveys( false ); echo count( $surveys ) ?>)</h4></li>
					<div class='dashboard_info_container'>
					<?php

						foreach( $surveys as $itm ) {
							$s = $itm['survey_title'];
							$a = $itm['survey_description'];
							$link = $itm['survey_meta_id'];
							echo "

							<a href='/Surveys/$link'><li class='collection-item'>
								<span class='title'>$s</span>
								<p>$a
								</p>
							</li></a>

							";
						}
						?>
					</div>

				</ul>
			</div>
		<?php }else{ ?>
		<h1 class='center s12 l8 offset-l2'>Jahrbuch seite des MH27 Abschluss Jahres</h1>
		<h5 class='center s12 l8 offset-l2'>Logge dich ein oder registriere dich ( 4 free ) um den vollen inhalt zu genießen.<br>Das desing is ( schlampig ) mit http://materializecss.com/navbar.html gemacht, so schlampig das hier ne verlinkung fehlt.</h5>
		<?php } ?>
	</div>

</div>
