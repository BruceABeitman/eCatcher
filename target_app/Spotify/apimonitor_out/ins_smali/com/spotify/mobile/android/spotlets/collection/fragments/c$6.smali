.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
const-string v3, "artist"
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Z
move-result v0
if-eqz v0, :cond_3c
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bz:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
:goto_1e
invoke-static {v3, v0, v4, v4}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
iget-object v1, v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->i:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Z
move-result v0
if-nez v0, :cond_3f
const/4 v0, 0x1
:goto_38
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;Z)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3c
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->by:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_1e
:cond_3f
const/4 v0, 0x0
goto :goto_38
.end method