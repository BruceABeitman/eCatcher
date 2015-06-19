.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
const-string v2, "tracks"
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ah:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v2, v3, v4, v4}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/spotlets/collection/b/c;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/c;->a(Ljava/lang/String;Z)Landroid/net/Uri;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/ui/actions/d;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method