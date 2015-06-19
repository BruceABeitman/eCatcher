.class  Lcom/umeng/newxp/view/ax;
.super Ljava/lang/Object;
.source "ListDialog.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/umeng/newxp/view/au;
.method constructor <init>(Lcom/umeng/newxp/view/au;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/ax;->a:Lcom/umeng/newxp/view/au;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/ax; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/newxp/view/ax;->a:Lcom/umeng/newxp/view/au;
invoke-static {v0}, Lcom/umeng/newxp/view/au;->g(Lcom/umeng/newxp/view/au;)V
const-string v1, " - Lcom/umeng/newxp/view/ax; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method