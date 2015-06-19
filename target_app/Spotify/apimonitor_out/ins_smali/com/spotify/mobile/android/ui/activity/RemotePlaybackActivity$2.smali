.class final Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ar:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Lcom/spotify/mobile/android/service/connections/b;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Lcom/spotify/mobile/android/service/connections/b;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->b(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Lcom/spotify/mobile/android/service/ConnectDevice;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/ConnectDevice;->l()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;->b(Ljava/lang/String;)V
:cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->finish()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method