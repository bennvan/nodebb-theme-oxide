<!-- IF privileges.topics:reply -->
<div class="clearfix quick-reply">
	<div class="icon pull-left hidden-xs">
		<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
			<!-- IF loggedInUser.picture -->
			<img component="user/picture" data-uid="{loggedInUser.uid}" src="{loggedInUser.picture}" align="left" itemprop="image" />
			<!-- ELSE -->
			<div component="user/picture" data-uid="{loggedInUser.uid}" class="user-icon" style="background-color: {loggedInUser.icon:bgColor};">{loggedInUser.icon:text}</div>
			<!-- ENDIF loggedInUser.picture -->
			<i component="user/status" class="status status-small {loggedInUser.status}" title="[[global:{loggedInUser.status}]]"></i>
		</a>
	</div>
	<form method="post" action="{config.relative_path}/compose">
		<input type="hidden" name="tid" value="{tid}" />
		<input type="hidden" name="_csrf" value="{config.csrf_token}" />
		<div class="quickreply-message">
			<textarea name="content" component="topic/quickreply/text" class="form-control" rows="5" placeholder="[[oxide:quick-reply-placeholder]]"></textarea>
		</div>
		<button type="submit" component="topic/quickreply/button" class="btn btn-primary pull-right">[[topic:reply]]</button>
	</form>
</div>
<!-- ENDIF privileges.topics:reply -->