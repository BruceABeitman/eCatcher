.class  Lcom/facebook/widget/af$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/bf;
.field final synthetic a:Lcom/facebook/widget/af;
.method constructor <init>(Lcom/facebook/widget/af;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/af$4;->a:Lcom/facebook/widget/af;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;)V
.registers 5
invoke-virtual {p1}, Lcom/facebook/aw;->b()Z
move-result v0
if-nez v0, :cond_b
iget-object v0, p0, Lcom/facebook/widget/af$4;->a:Lcom/facebook/widget/af;
invoke-static {v0}, Lcom/facebook/widget/af;->a(Lcom/facebook/widget/af;)V
:cond_b
return-void
.end method