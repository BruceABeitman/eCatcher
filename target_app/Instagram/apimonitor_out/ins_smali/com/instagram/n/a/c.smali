.class final Lcom/instagram/n/a/c;
.super Ljava/lang/Object;
.source "AlertDialogUtil.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/n/a/b;
.method constructor <init>(Lcom/instagram/n/a/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/n/a/c;->a:Lcom/instagram/n/a/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/n/a/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/n/a/c;->a:Lcom/instagram/n/a/b;
iget-object v0, v0, Lcom/instagram/n/a/b;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/instagram/n/a/c;->a:Lcom/instagram/n/a/b;
iget-object v1, v1, Lcom/instagram/n/a/b;->d:Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/n/a/c;->a:Lcom/instagram/n/a/b;
iget-object v2, v2, Lcom/instagram/n/a/b;->a:Landroid/content/Context;
sget v3, Lcom/facebook/az;->learn_more:I
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/n/a/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method