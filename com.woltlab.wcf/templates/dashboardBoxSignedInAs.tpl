<fieldset class="dashboardBox dashboardBoxSignedInAs">
	<legend class="invisible">{lang}wcf.dashboard.box.{$box->boxName}{/lang}</legend>
	
	<div class="box96 framed">
		{@$__wcf->getUserProfileHandler()->getAvatar()->getImageTag(96)}
		
		<div>
			<div class="containerHeadline">
				<h3><a href="{link controller='User' object=$__wcf->user}{/link}">{$__wcf->user->username}</a></h3>
				{if MODULE_USER_RANK}
					<p>
						{if $__wcf->getUserProfileHandler()->getUserTitle()}
							<span class="badge userTitleBadge{if $__wcf->getUserProfileHandler()->getRank() && $__wcf->getUserProfileHandler()->getRank()->cssClassName} {@$__wcf->getUserProfileHandler()->getRank()->cssClassName}{/if}">{$__wcf->getUserProfileHandler()->getUserTitle()}</span>
						{/if}
						{if $__wcf->getUserProfileHandler()->getRank() && $__wcf->getUserProfileHandler()->getRank()->rankImage}
							<span class="userRankImage">{@$__wcf->getUserProfileHandler()->getRank()->getImage()}</span>
						{/if}
					</p>
				{/if}
			</div>
			
			{include file='userInformationStatistics' user=$__wcf->user}
		</div>
	</div>
</fieldset>