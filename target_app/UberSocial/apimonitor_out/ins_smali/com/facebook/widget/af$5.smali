.class  Lcom/facebook/widget/af$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/facebook/widget/af;
.method constructor <init>(Lcom/facebook/widget/af;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/af$5;->a:Lcom/facebook/widget/af;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/widget/af$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/af$5;->a:Lcom/facebook/widget/af;
invoke-static {v0}, Lcom/facebook/widget/af;->b(Lcom/facebook/widget/af;)Lcom/facebook/widget/ak;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/facebook/widget/af$5;->a:Lcom/facebook/widget/af;
invoke-static {v0}, Lcom/facebook/widget/af;->b(Lcom/facebook/widget/af;)Lcom/facebook/widget/ak;
move-result-object v0
iget-object v1, p0, Lcom/facebook/widget/af$5;->a:Lcom/facebook/widget/af;
invoke-interface {v0, v1}, Lcom/facebook/widget/ak;->a(Lcom/facebook/widget/af;)V
:cond_13
const-string v1, " - Lcom/facebook/widget/af$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method