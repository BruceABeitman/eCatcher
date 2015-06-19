.class final Lcom/spotify/mobile/android/spotlets/openaccess/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/openaccess/a$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v3, "intent"
invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/content/Intent;
invoke-static {v2, v0}, Lcom/spotify/mobile/android/service/LoginActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->a(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/openaccess/a$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method