.class final Lcom/facebook/b/k;
.super Ljava/lang/Object;
.source "FbDialog.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/facebook/b/j;
.method constructor <init>(Lcom/facebook/b/j;)V
.registers 2
iput-object p1, p0, Lcom/facebook/b/k;->a:Lcom/facebook/b/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/b/k; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/b/k;->a:Lcom/facebook/b/j;
invoke-static {v0}, Lcom/facebook/b/j;->a(Lcom/facebook/b/j;)Lcom/facebook/b/e;
move-result-object v0
invoke-interface {v0}, Lcom/facebook/b/e;->a()V
iget-object v0, p0, Lcom/facebook/b/k;->a:Lcom/facebook/b/j;
invoke-virtual {v0}, Lcom/facebook/b/j;->dismiss()V
const-string v1, " - Lcom/facebook/b/k; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method