.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
const-string v2, "artist"
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ay:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
invoke-static {v2, v3, v4, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Landroid/content/Intent;)V
:cond_46
const-string v1, " - Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method