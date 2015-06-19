.class final Landroid/support/v4/a/b;
.super Landroid/support/v4/a/i;
.source "AsyncTaskLoader.java"
.implements Ljava/lang/Runnable;
.field  a:Ljava/lang/Object;
.field  b:Z
.field final synthetic c:Landroid/support/v4/a/a;
.field private e:Ljava/util/concurrent/CountDownLatch;
.method constructor <init>(Landroid/support/v4/a/a;)V
.registers 4
iput-object p1, p0, Landroid/support/v4/a/b;->c:Landroid/support/v4/a/a;
invoke-direct {p0}, Landroid/support/v4/a/i;-><init>()V
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Landroid/support/v4/a/b;->e:Ljava/util/concurrent/CountDownLatch;
return-void
.end method
.method private varargs e()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/a/b;->c:Landroid/support/v4/a/a;
invoke-virtual {v0}, Landroid/support/v4/a/a;->e()Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/a/b;->a:Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/a/b;->a:Ljava/lang/Object;
return-object v0
.end method
.method protected final a()V
.registers 3
:try_start_0
iget-object v0, p0, Landroid/support/v4/a/b;->c:Landroid/support/v4/a/a;
iget-object v1, p0, Landroid/support/v4/a/b;->a:Ljava/lang/Object;
invoke-virtual {v0, p0}, Landroid/support/v4/a/a;->a(Landroid/support/v4/a/b;)V
:try_end_7
.catchall {:try_start_0 .. :try_end_7} :catchall_d
iget-object v0, p0, Landroid/support/v4/a/b;->e:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
return-void
:catchall_d
move-exception v0
iget-object v1, p0, Landroid/support/v4/a/b;->e:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
throw v0
.end method
.method protected final a(Ljava/lang/Object;)V
.registers 4
:try_start_0
iget-object v0, p0, Landroid/support/v4/a/b;->c:Landroid/support/v4/a/a;
invoke-virtual {v0, p0, p1}, Landroid/support/v4/a/a;->a(Landroid/support/v4/a/b;Ljava/lang/Object;)V
:try_end_5
.catchall {:try_start_0 .. :try_end_5} :catchall_b
iget-object v0, p0, Landroid/support/v4/a/b;->e:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
return-void
:catchall_b
move-exception v0
iget-object v1, p0, Landroid/support/v4/a/b;->e:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
throw v0
.end method
.method protected final synthetic b()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Landroid/support/v4/a/b;->e()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final run()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/a/b;->b:Z
iget-object v0, p0, Landroid/support/v4/a/b;->c:Landroid/support/v4/a/a;
invoke-virtual {v0}, Landroid/support/v4/a/a;->c()V
return-void
.end method