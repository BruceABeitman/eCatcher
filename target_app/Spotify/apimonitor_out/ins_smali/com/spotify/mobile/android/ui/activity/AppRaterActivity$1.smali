.class final Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aj:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->b(Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->a(Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->finish()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method