.class final Lcom/bbm/ui/c/ga;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/c/fu;
.method constructor <init>(Lcom/bbm/ui/c/fu;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/ga;->a:Lcom/bbm/ui/c/fu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/ga; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
packed-switch p2, :pswitch_data_14
:goto_6
const-string v1, " - Lcom/bbm/ui/c/ga; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_7
iget-object v0, p0, Lcom/bbm/ui/c/ga;->a:Lcom/bbm/ui/c/fu;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.settings.SETTINGS"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/c/fu;->startActivity(Landroid/content/Intent;)V
goto :goto_6
:pswitch_data_14
.packed-switch -0x1
:pswitch_7
.end packed-switch
.end method