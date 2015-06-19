.class final Lcom/instagram/n/b/c;
.super Ljava/lang/Object;
.source "AutoUpdateHelper.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/content/Intent;
.field final synthetic b:Lcom/instagram/n/b/a;
.method constructor <init>(Lcom/instagram/n/b/a;Landroid/content/Intent;)V
.registers 3
iput-object p1, p0, Lcom/instagram/n/b/c;->b:Lcom/instagram/n/b/a;
iput-object p2, p0, Lcom/instagram/n/b/c;->a:Landroid/content/Intent;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/n/b/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/n/b/c;->b:Lcom/instagram/n/b/a;
invoke-static {v0}, Lcom/instagram/n/b/a;->a(Lcom/instagram/n/b/a;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/instagram/n/b/c;->a:Landroid/content/Intent;
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/instagram/n/b/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method