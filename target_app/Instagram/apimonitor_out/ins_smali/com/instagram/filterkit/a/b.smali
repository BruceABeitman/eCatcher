.class public final Lcom/instagram/filterkit/a/b;
.super Ljava/lang/Object;
.source "GlContext.java"
.field private final a:Lcom/instagram/filterkit/a/a;
.field private final b:Lcom/instagram/filterkit/d/c;
.field private final c:Ljava/util/concurrent/locks/ReentrantLock;
.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/instagram/filterkit/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Lcom/instagram/filterkit/d/c;
invoke-direct {v0, p1}, Lcom/instagram/filterkit/d/c;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/filterkit/a/b;->b:Lcom/instagram/filterkit/d/c;
new-instance v0, Lcom/instagram/filterkit/a/a;
invoke-direct {v0}, Lcom/instagram/filterkit/a/a;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V
iput-object v0, p0, Lcom/instagram/filterkit/a/b;->c:Ljava/util/concurrent/locks/ReentrantLock;
return-void
.end method
.method public final a(Lcom/instagram/filterkit/a/c;)V
.registers 4
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;
invoke-virtual {v0, p1}, Lcom/instagram/filterkit/a/a;->a(Lcom/instagram/filterkit/a/c;)V
const/16 v0, 0xb71
invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
invoke-virtual {p0}, Lcom/instagram/filterkit/a/b;->d()V
return-void
.end method
.method public final a()Z
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
return v0
.end method
.method public final b()Lcom/instagram/filterkit/d/c;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->b:Lcom/instagram/filterkit/d/c;
return-object v0
.end method
.method public final c()V
.registers 4
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->b:Lcom/instagram/filterkit/d/c;
invoke-virtual {v0}, Lcom/instagram/filterkit/d/c;->b()V
invoke-virtual {p0}, Lcom/instagram/filterkit/a/b;->e()V
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;
invoke-virtual {v0}, Lcom/instagram/filterkit/a/a;->d()V
:cond_17
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->c:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->c:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;
invoke-virtual {v0}, Lcom/instagram/filterkit/a/a;->a()V
goto :goto_8
.end method
.method public final e()V
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->c:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;
invoke-virtual {v0}, Lcom/instagram/filterkit/a/a;->b()V
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->c:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_8
.end method
.method public final f()V
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;
invoke-virtual {v0}, Lcom/instagram/filterkit/a/a;->c()Z
return-void
.end method