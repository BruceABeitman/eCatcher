.class final Lcom/spotify/mobile/android/spotlets/follow/c$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/follow/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/follow/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/c$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/follow/c$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/c;->k()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0f0232
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/c$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/c$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const-string v3, "spotify:follow:facebook"
invoke-static {v2, v3, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/follow/c;->a(Landroid/content/Intent;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/follow/c$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method