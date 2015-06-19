.class final Landroid/support/v4/content/b;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field  a:Ljava/lang/Object;
.field  b:Z
.field final synthetic c:Landroid/support/v4/content/a;
.field private e:Ljava/util/concurrent/CountDownLatch;
.method constructor <init>(Landroid/support/v4/content/a;)V
.registers 4
iput-object p1, p0, Landroid/support/v4/content/b;->c:Landroid/support/v4/content/a;
invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Landroid/support/v4/content/b;->e:Ljava/util/concurrent/CountDownLatch;
return-void
.end method
.method protected final a()V
.registers 3
:try_start_0
iget-object v0, p0, Landroid/support/v4/content/b;->c:Landroid/support/v4/content/a;
iget-object v1, p0, Landroid/support/v4/content/b;->a:Ljava/lang/Object;
invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/a;->a(Landroid/support/v4/content/b;Ljava/lang/Object;)V
:try_end_7
.catchall {:try_start_0 .. :try_end_7} :catchall_d
iget-object v0, p0, Landroid/support/v4/content/b;->e:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
return-void
:catchall_d
move-exception v0
iget-object v1, p0, Landroid/support/v4/content/b;->e:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
throw v0
.end method
.method protected final a(Ljava/lang/Object;)V
.registers 5
:try_start_0
iget-object v0, p0, Landroid/support/v4/content/b;->c:Landroid/support/v4/content/a;
iget-object v1, v0, Landroid/support/v4/content/a;->a:Landroid/support/v4/content/b;
if-eq v1, p0, :cond_f
invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/a;->a(Landroid/support/v4/content/b;Ljava/lang/Object;)V
:try_end_9
.catchall {:try_start_0 .. :try_end_9} :catchall_17
:goto_9
iget-object v0, p0, Landroid/support/v4/content/b;->e:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
return-void
:cond_f
:try_start_f
iget-boolean v1, v0, Landroid/support/v4/content/k;->q:Z
if-eqz v1, :cond_1e
invoke-virtual {v0, p1}, Landroid/support/v4/content/a;->a(Ljava/lang/Object;)V
:try_end_16
.catchall {:try_start_f .. :try_end_16} :catchall_17
goto :goto_9
:catchall_17
move-exception v0
iget-object v1, p0, Landroid/support/v4/content/b;->e:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
throw v0
:cond_1e
const/4 v1, 0x0
:try_start_1f
iput-boolean v1, v0, Landroid/support/v4/content/k;->t:Z
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v1
iput-wide v1, v0, Landroid/support/v4/content/a;->d:J
const/4 v1, 0x0
iput-object v1, v0, Landroid/support/v4/content/a;->a:Landroid/support/v4/content/b;
invoke-virtual {v0, p1}, Landroid/support/v4/content/a;->b(Ljava/lang/Object;)V
:try_end_2d
.catchall {:try_start_1f .. :try_end_2d} :catchall_17
goto :goto_9
.end method
.method protected final synthetic b()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/content/b;->c:Landroid/support/v4/content/a;
invoke-virtual {v0}, Landroid/support/v4/content/a;->d()Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/content/b;->a:Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/content/b;->a:Ljava/lang/Object;
return-object v0
.end method
.method public final run()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/content/b;->b:Z
iget-object v0, p0, Landroid/support/v4/content/b;->c:Landroid/support/v4/content/a;
invoke-virtual {v0}, Landroid/support/v4/content/a;->c()V
return-void
.end method