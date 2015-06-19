.class final Lcom/spotify/mobile/android/util/notifications/c;
.super Lcom/spotify/mobile/android/util/notifications/a;
.source "SourceFile"
.field private d:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
.field private e:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
.field private f:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
.field private g:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)V
.registers 6
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/util/notifications/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)V
new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
const v1, 0x7f0a0337
const v2, 0x7f0a0338
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(II)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/c;->d:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
const v1, 0x7f0a032c
const v2, 0x7f0a032d
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(II)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/c;->e:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
const v1, 0x7f0a0239
const v2, 0x7f0a0336
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(II)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/c;->f:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
const v1, 0x7f0a032a
const v2, 0x7f0a032b
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(II)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/c;->g:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
return-void
.end method
.method protected final a(Landroid/widget/RemoteViews;)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/c;->c:Lcom/spotify/mobile/android/service/c/c;
iget-boolean v0, v0, Lcom/spotify/mobile/android/service/c/c;->c:Z
iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/c;->c:Lcom/spotify/mobile/android/service/c/c;
iget-boolean v2, v2, Lcom/spotify/mobile/android/service/c/c;->f:Z
iget-object v3, p0, Lcom/spotify/mobile/android/util/notifications/c;->c:Lcom/spotify/mobile/android/service/c/c;
iget-boolean v3, v3, Lcom/spotify/mobile/android/service/c/c;->e:Z
iget-object v4, p0, Lcom/spotify/mobile/android/util/notifications/c;->c:Lcom/spotify/mobile/android/service/c/c;
iget-boolean v4, v4, Lcom/spotify/mobile/android/service/c/c;->h:Z
iget-object v5, p0, Lcom/spotify/mobile/android/util/notifications/c;->c:Lcom/spotify/mobile/android/service/c/c;
iget-object v5, v5, Lcom/spotify/mobile/android/service/c/c;->a:Lcom/spotify/mobile/android/service/c/g;
iget-boolean v5, v5, Lcom/spotify/mobile/android/service/c/g;->e:Z
iget-object v6, p0, Lcom/spotify/mobile/android/util/notifications/c;->d:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
invoke-virtual {v6, p1, v0}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V
if-eqz v4, :cond_31
iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/c;->e:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/c;->f:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/c;->g:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
:cond_2a
move v7, v1
move-object v1, v0
move v0, v7
:goto_2d
invoke-virtual {v1, p1, v0}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V
return-void
:cond_31
iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/c;->e:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
invoke-virtual {v0, p1, v3}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/c;->f:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
invoke-virtual {v0, p1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/c;->g:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
if-nez v5, :cond_2a
const/4 v1, 0x1
move v7, v1
move-object v1, v0
move v0, v7
goto :goto_2d
.end method
.method protected final c()Landroid/widget/RemoteViews;
.registers 11
const/high16 v9, 0x800
const/4 v8, 0x0
new-instance v0, Landroid/widget/RemoteViews;
iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/c;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const v2, 0x7f03009e
invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/c;->c:Lcom/spotify/mobile/android/service/c/c;
iget-object v1, v1, Lcom/spotify/mobile/android/service/c/c;->a:Lcom/spotify/mobile/android/service/c/g;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/c/g;->c()Lcom/spotify/mobile/android/service/c/f;
move-result-object v2
const v3, 0x7f0a0334
invoke-virtual {v2}, Lcom/spotify/mobile/android/service/c/f;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
const v3, 0x7f0a0335
invoke-virtual {v2}, Lcom/spotify/mobile/android/service/c/f;->b()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
const v3, 0x7f0a0328
invoke-virtual {v2}, Lcom/spotify/mobile/android/service/c/f;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/c;->a:Landroid/content/Context;
const-string v3, "com.spotify.mobile.android.service.action.player.NOTIFICATION_ADD_TO_COLLECTION"
invoke-static {v2, v3}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
const-string v3, "uri"
iget-object v1, v1, Lcom/spotify/mobile/android/service/c/g;->a:Ljava/lang/String;
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/c;->a:Landroid/content/Context;
invoke-static {v1, v8, v2, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v1
const v2, 0x7f0a032b
const v3, 0x7f02009a
invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/c;->a:Landroid/content/Context;
iget-object v3, p0, Lcom/spotify/mobile/android/util/notifications/c;->a:Landroid/content/Context;
const-string v4, "com.spotify.mobile.android.service.action.player.NOTIFICATION_SHUTDOWN"
invoke-static {v3, v4}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v3
invoke-static {v2, v8, v3, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/util/notifications/c;->a:Landroid/content/Context;
iget-object v4, p0, Lcom/spotify/mobile/android/util/notifications/c;->a:Landroid/content/Context;
const-string v5, "com.spotify.mobile.android.service.action.player.PREVIOUS"
invoke-static {v4, v5}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v4
invoke-static {v3, v8, v4, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/util/notifications/c;->a:Landroid/content/Context;
iget-object v5, p0, Lcom/spotify/mobile/android/util/notifications/c;->a:Landroid/content/Context;
const-string v6, "com.spotify.mobile.android.service.action.player.TOGGLE_PAUSED"
invoke-static {v5, v6}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v5
invoke-static {v4, v8, v5, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v4
iget-object v5, p0, Lcom/spotify/mobile/android/util/notifications/c;->a:Landroid/content/Context;
iget-object v6, p0, Lcom/spotify/mobile/android/util/notifications/c;->a:Landroid/content/Context;
const-string v7, "com.spotify.mobile.android.service.action.player.NEXT"
invoke-static {v6, v7}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v6
invoke-static {v5, v8, v6, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v5
const v6, 0x7f0a032a
invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
const v1, 0x7f0a032c
invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
const v1, 0x7f0a0337
invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
const v1, 0x7f0a0338
invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
const v1, 0x7f0a0239
invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
const v1, 0x7f0a023b
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
return-object v0
.end method