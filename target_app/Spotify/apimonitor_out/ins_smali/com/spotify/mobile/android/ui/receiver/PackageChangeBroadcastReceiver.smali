.class public Lcom/spotify/mobile/android/ui/receiver/PackageChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 12
const/4 v8, 0x0
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const-string v0, "notification"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
const v2, 0x7f0f03ff
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
const v3, 0x7f0f03fe
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
const v4, 0x7f0201ba
invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v4
const-string v1, "spotify:"
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
new-instance v1, Landroid/content/Intent;
const-class v6, Lcom/spotify/music/MainActivity;
invoke-direct {v1, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v6, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v6
sget-object v7, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->F:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-eq v6, v7, :cond_48
invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {p1, v1}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
:cond_48
const/high16 v5, 0x1000
invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string v5, "notification_id"
invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v1
new-instance v5, Landroid/support/v4/app/al;
invoke-direct {v5, p1}, Landroid/support/v4/app/al;-><init>(Landroid/content/Context;)V
new-instance v6, Landroid/support/v4/app/aj;
invoke-direct {v6}, Landroid/support/v4/app/aj;-><init>()V
invoke-virtual {v6, v4}, Landroid/support/v4/app/aj;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/aj;
move-result-object v4
invoke-virtual {v4, v3}, Landroid/support/v4/app/aj;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj;
move-result-object v4
invoke-virtual {v5, v4}, Landroid/support/v4/app/al;->a(Landroid/support/v4/app/at;)Landroid/support/v4/app/al;
move-result-object v4
invoke-virtual {v4, v2}, Landroid/support/v4/app/al;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
move-result-object v4
invoke-virtual {v4, v3}, Landroid/support/v4/app/al;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/al;->d()Landroid/support/v4/app/al;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/al;
move-result-object v4
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v6, " - "
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Landroid/support/v4/app/al;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/support/v4/app/al;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/al;->e()Landroid/support/v4/app/al;
invoke-virtual {v5}, Landroid/support/v4/app/al;->g()Landroid/app/Notification;
move-result-object v1
invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
return-void
.end method