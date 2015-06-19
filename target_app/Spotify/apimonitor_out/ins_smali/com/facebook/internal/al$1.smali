.class final Lcom/facebook/internal/al$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/facebook/internal/an;
.field final synthetic b:Lcom/facebook/internal/al;
.method constructor <init>(Lcom/facebook/internal/al;Lcom/facebook/internal/an;)V
.registers 3
iput-object p1, p0, Lcom/facebook/internal/al$1;->b:Lcom/facebook/internal/al;
iput-object p2, p0, Lcom/facebook/internal/al$1;->a:Lcom/facebook/internal/an;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/facebook/internal/al$1;->a:Lcom/facebook/internal/an;
invoke-virtual {v0}, Lcom/facebook/internal/an;->c()Ljava/lang/Runnable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:try_end_9
.catchall {:try_start_0 .. :try_end_9} :catchall_11
iget-object v0, p0, Lcom/facebook/internal/al$1;->b:Lcom/facebook/internal/al;
iget-object v1, p0, Lcom/facebook/internal/al$1;->a:Lcom/facebook/internal/an;
invoke-static {v0, v1}, Lcom/facebook/internal/al;->a(Lcom/facebook/internal/al;Lcom/facebook/internal/an;)V
return-void
:catchall_11
move-exception v0
iget-object v1, p0, Lcom/facebook/internal/al$1;->b:Lcom/facebook/internal/al;
iget-object v2, p0, Lcom/facebook/internal/al$1;->a:Lcom/facebook/internal/an;
invoke-static {v1, v2}, Lcom/facebook/internal/al;->a(Lcom/facebook/internal/al;Lcom/facebook/internal/an;)V
throw v0
.end method