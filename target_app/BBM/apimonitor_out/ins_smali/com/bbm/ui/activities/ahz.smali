.class final Lcom/bbm/ui/activities/ahz;
.super Ljava/lang/Object;
.source "StartupActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/StartupActivity;
.method constructor <init>(Lcom/bbm/ui/activities/StartupActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ahz;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ahz; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ahz;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->c(Lcom/bbm/ui/activities/StartupActivity;)Landroid/app/AlertDialog;
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
packed-switch p2, :pswitch_data_20
:goto_b
const-string v1, " - Lcom/bbm/ui/activities/ahz; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_c
iget-object v0, p0, Lcom/bbm/ui/activities/ahz;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->e(Lcom/bbm/ui/activities/StartupActivity;)V
goto :goto_b
:pswitch_12
iget-object v0, p0, Lcom/bbm/ui/activities/ahz;->a:Lcom/bbm/ui/activities/StartupActivity;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.settings.SETTINGS"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/StartupActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_b
nop
:pswitch_data_20
.packed-switch -0x2
:pswitch_12
:pswitch_c
.end packed-switch
.end method