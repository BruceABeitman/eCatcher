.class final Lcom/bbm/setup/b;
.super Ljava/lang/Object;
.source "ContactListAccessPromptActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/bbm/setup/ContactListAccessPromptActivity;
.method constructor <init>(Lcom/bbm/setup/ContactListAccessPromptActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/setup/b;->a:Lcom/bbm/setup/ContactListAccessPromptActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/setup/b; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/setup/b;->a:Lcom/bbm/setup/ContactListAccessPromptActivity;
invoke-virtual {v0}, Lcom/bbm/setup/ContactListAccessPromptActivity;->b()V
const-string v1, " - Lcom/bbm/setup/b; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method