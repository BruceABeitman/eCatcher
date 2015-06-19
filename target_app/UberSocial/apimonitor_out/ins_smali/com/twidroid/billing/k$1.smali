.class final Lcom/twidroid/billing/k$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/billing/h;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:J
.field final synthetic d:Ljava/lang/String;
.method constructor <init>(Lcom/twidroid/billing/h;Ljava/lang/String;JLjava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/twidroid/billing/k$1;->a:Lcom/twidroid/billing/h;
iput-object p2, p0, Lcom/twidroid/billing/k$1;->b:Ljava/lang/String;
iput-wide p3, p0, Lcom/twidroid/billing/k$1;->c:J
iput-object p5, p0, Lcom/twidroid/billing/k$1;->d:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 9
const-class v7, Lcom/twidroid/billing/k;
monitor-enter v7
:try_start_3
invoke-static {}, Lcom/twidroid/billing/k;->a()Lcom/twidroid/billing/j;
move-result-object v0
if-eqz v0, :cond_19
invoke-static {}, Lcom/twidroid/billing/k;->a()Lcom/twidroid/billing/j;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/billing/k$1;->a:Lcom/twidroid/billing/h;
iget-object v2, p0, Lcom/twidroid/billing/k$1;->b:Ljava/lang/String;
const/4 v3, 0x1
iget-wide v4, p0, Lcom/twidroid/billing/k$1;->c:J
iget-object v6, p0, Lcom/twidroid/billing/k$1;->d:Ljava/lang/String;
invoke-virtual/range {v0 .. v6}, Lcom/twidroid/billing/j;->b(Lcom/twidroid/billing/h;Ljava/lang/String;IJLjava/lang/String;)V
:cond_19
monitor-exit v7
return-void
:catchall_1b
move-exception v0
monitor-exit v7
:try_end_1d
.catchall {:try_start_3 .. :try_end_1d} :catchall_1b
throw v0
.end method