.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/b$12;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$12;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/collection/fragments/b$12; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$12;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->h(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/av;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/av;->a()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$12;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->h(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/av;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$12;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/av;->a(Landroid/content/Context;)V
:cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$12;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/b/c;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$12;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a(Landroid/content/Context;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/collection/fragments/b$12; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method