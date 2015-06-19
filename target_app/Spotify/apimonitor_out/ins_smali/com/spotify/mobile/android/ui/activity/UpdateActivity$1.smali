.class final Lcom/spotify/mobile/android/ui/activity/UpdateActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/UpdateActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/UpdateActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/UpdateActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/UpdateActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/UpdateActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UpdateActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/UpdateActivity;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/UpdateActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/UpdateActivity;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->a(Lcom/spotify/mobile/android/ui/activity/UpdateActivity;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v2, 0x1000
invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UpdateActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/UpdateActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->finish()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/UpdateActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method