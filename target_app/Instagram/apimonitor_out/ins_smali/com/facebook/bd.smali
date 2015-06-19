.class final Lcom/facebook/bd;
.super Ljava/lang/Object;
.source "Request.java"
.implements Lcom/facebook/bg;
.field final synthetic a:Lcom/facebook/bh;
.method constructor <init>(Lcom/facebook/bh;)V
.registers 2
iput-object p1, p0, Lcom/facebook/bd;->a:Lcom/facebook/bh;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/facebook/bn;)V
.registers 4
iget-object v0, p0, Lcom/facebook/bd;->a:Lcom/facebook/bh;
if-eqz v0, :cond_f
iget-object v1, p0, Lcom/facebook/bd;->a:Lcom/facebook/bh;
invoke-virtual {p1}, Lcom/facebook/bn;->c()Lcom/facebook/h/b;
move-result-object v0
check-cast v0, Lcom/facebook/h/h;
invoke-interface {v1, v0, p1}, Lcom/facebook/bh;->a(Lcom/facebook/h/h;Lcom/facebook/bn;)V
:cond_f
return-void
.end method