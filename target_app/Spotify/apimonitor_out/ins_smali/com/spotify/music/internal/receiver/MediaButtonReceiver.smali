.class public Lcom/spotify/music/internal/receiver/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const-string v0, "com.spotify.mobile.android.service.action.media_button"
invoke-static {p1, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
const-string v0, "android.intent.extra.KEY_EVENT"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/view/KeyEvent;
const-string v2, "android.intent.extra.KEY_EVENT"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method