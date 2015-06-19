.class  Lcom/flurry/sdk/dj;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/util/Timer;
.field private b:Lcom/flurry/sdk/dj$a;
.field private c:Lcom/flurry/sdk/dj$b;
.method constructor <init>(Lcom/flurry/sdk/dj$b;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/flurry/sdk/dj;->c:Lcom/flurry/sdk/dj$b;
return-void
.end method
.method public declared-synchronized a()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/dj;->a:Ljava/util/Timer;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/flurry/sdk/dj;->a:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/flurry/sdk/dj;->a:Ljava/util/Timer;
:cond_d
const/4 v0, 0x0
iput-object v0, p0, Lcom/flurry/sdk/dj;->b:Lcom/flurry/sdk/dj$a;
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(J)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/flurry/sdk/dj;->b()Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/flurry/sdk/dj;->a()V
:cond_a
new-instance v0, Ljava/util/Timer;
const-string v1, "FlurrySessionTimer"
invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/flurry/sdk/dj;->a:Ljava/util/Timer;
new-instance v0, Lcom/flurry/sdk/dj$a;
iget-object v1, p0, Lcom/flurry/sdk/dj;->c:Lcom/flurry/sdk/dj$b;
invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/dj$a;-><init>(Lcom/flurry/sdk/dj;Lcom/flurry/sdk/dj$b;)V
iput-object v0, p0, Lcom/flurry/sdk/dj;->b:Lcom/flurry/sdk/dj$a;
iget-object v0, p0, Lcom/flurry/sdk/dj;->a:Ljava/util/Timer;
iget-object v1, p0, Lcom/flurry/sdk/dj;->b:Lcom/flurry/sdk/dj$a;
invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
:try_end_23
.catchall {:try_start_1 .. :try_end_23} :catchall_25
monitor-exit p0
return-void
:catchall_25
move-exception v0
monitor-exit p0
throw v0
.end method
.method public b()Z
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dj;->a:Ljava/util/Timer;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method