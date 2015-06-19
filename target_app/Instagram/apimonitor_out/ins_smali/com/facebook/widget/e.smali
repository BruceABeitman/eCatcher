.class final Lcom/facebook/widget/e;
.super Ljava/lang/Object;
.source "LoginButton.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/facebook/bo;
.field final synthetic b:Lcom/facebook/widget/d;
.method constructor <init>(Lcom/facebook/widget/d;Lcom/facebook/bo;)V
.registers 3
iput-object p1, p0, Lcom/facebook/widget/e;->b:Lcom/facebook/widget/d;
iput-object p2, p0, Lcom/facebook/widget/e;->a:Lcom/facebook/bo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/widget/e; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/e;->a:Lcom/facebook/bo;
invoke-virtual {v0}, Lcom/facebook/bo;->f()V
const-string v1, " - Lcom/facebook/widget/e; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method