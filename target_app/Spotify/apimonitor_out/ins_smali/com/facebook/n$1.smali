.class final Lcom/facebook/n$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/facebook/x;
.field final synthetic b:Lcom/facebook/n;
.method constructor <init>(Lcom/facebook/n;Lcom/facebook/x;)V
.registers 3
iput-object p1, p0, Lcom/facebook/n$1;->b:Lcom/facebook/n;
iput-object p2, p0, Lcom/facebook/n$1;->a:Lcom/facebook/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/facebook/n$1;->a:Lcom/facebook/x;
iget-object v0, p0, Lcom/facebook/n$1;->b:Lcom/facebook/n;
invoke-static {v0}, Lcom/facebook/n;->a(Lcom/facebook/n;)Lcom/facebook/v;
iget-object v0, p0, Lcom/facebook/n$1;->b:Lcom/facebook/n;
invoke-static {v0}, Lcom/facebook/n;->b(Lcom/facebook/n;)J
iget-object v0, p0, Lcom/facebook/n$1;->b:Lcom/facebook/n;
invoke-static {v0}, Lcom/facebook/n;->c(Lcom/facebook/n;)J
return-void
.end method