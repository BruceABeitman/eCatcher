.class final Lcom/facebook/ah$2$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/facebook/aa;
.field final synthetic b:Lcom/facebook/ah$2;
.method constructor <init>(Lcom/facebook/ah$2;Lcom/facebook/aa;)V
.registers 3
iput-object p1, p0, Lcom/facebook/ah$2$1;->b:Lcom/facebook/ah$2;
iput-object p2, p0, Lcom/facebook/ah$2$1;->a:Lcom/facebook/aa;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/facebook/ah$2$1;->b:Lcom/facebook/ah$2;
iget-object v0, v0, Lcom/facebook/ah$2;->c:Lcom/facebook/p;
iget-object v1, p0, Lcom/facebook/ah$2$1;->a:Lcom/facebook/aa;
invoke-interface {v0, v1}, Lcom/facebook/p;->a(Lcom/facebook/aa;)V
return-void
.end method