.class final Lcom/facebook/internal/ag;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/ae;
.field final synthetic a:Lcom/facebook/internal/ae;
.field private final b:Lcom/facebook/ae;
.method public constructor <init>(Lcom/facebook/internal/ae;Lcom/facebook/ae;)V
.registers 3
iput-object p1, p0, Lcom/facebook/internal/ag;->a:Lcom/facebook/internal/ae;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/internal/ag;->b:Lcom/facebook/ae;
return-void
.end method
.method public final a(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/facebook/internal/ag;->b:Lcom/facebook/ae;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/internal/ag;->a:Lcom/facebook/internal/ae;
invoke-virtual {v0}, Lcom/facebook/internal/ae;->f()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/internal/ag;->b:Lcom/facebook/ae;
invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ae;->a(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
:cond_11
iget-object v0, p0, Lcom/facebook/internal/ag;->a:Lcom/facebook/internal/ae;
invoke-static {v0}, Lcom/facebook/internal/ae;->b(Lcom/facebook/internal/ae;)Lcom/facebook/Session;
move-result-object v0
if-ne p1, v0, :cond_24
invoke-virtual {p2}, Lcom/facebook/SessionState;->b()Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/facebook/internal/ag;->a:Lcom/facebook/internal/ae;
invoke-virtual {v0}, Lcom/facebook/internal/ae;->c()V
:cond_24
return-void
.end method