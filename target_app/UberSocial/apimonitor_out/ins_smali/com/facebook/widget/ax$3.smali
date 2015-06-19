.class  Lcom/facebook/widget/ax$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/facebook/widget/ax;
.method constructor <init>(Lcom/facebook/widget/ax;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/ax$3;->a:Lcom/facebook/widget/ax;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/widget/ax$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/ax$3;->a:Lcom/facebook/widget/ax;
invoke-static {v0}, Lcom/facebook/widget/ax;->a(Lcom/facebook/widget/ax;)V
iget-object v0, p0, Lcom/facebook/widget/ax$3;->a:Lcom/facebook/widget/ax;
invoke-virtual {v0}, Lcom/facebook/widget/ax;->dismiss()V
const-string v1, " - Lcom/facebook/widget/ax$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method