.class public final Lcom/bbm/util/b/k;
.super Lcom/bbm/util/b;
.source "ImageWorker.java"
.field final synthetic a:Lcom/bbm/util/b/i;
.field private b:Ljava/lang/Object;
.field private final c:Ljava/lang/ref/WeakReference;
.field private final d:I
.field private final j:I
.method public constructor <init>(Lcom/bbm/util/b/i;Landroid/widget/ImageView;II)V
.registers 6
iput-object p1, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/util/b/k;->c:Ljava/lang/ref/WeakReference;
iput p3, p0, Lcom/bbm/util/b/k;->d:I
iput p4, p0, Lcom/bbm/util/b/k;->j:I
return-void
.end method
.method static synthetic a(Lcom/bbm/util/b/k;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/bbm/util/b/k;->b:Ljava/lang/Object;
return-object v0
.end method
.method private b()Landroid/widget/ImageView;
.registers 3
iget-object v0, p0, Lcom/bbm/util/b/k;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-static {v0}, Lcom/bbm/util/b/i;->a(Landroid/widget/ImageView;)Lcom/bbm/util/b/k;
move-result-object v1
if-ne p0, v1, :cond_f
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method private varargs d([Ljava/lang/Object;)Lcom/bbm/d/fd;
.registers 12
const/4 v1, 0x0
const/4 v9, 0x0
monitor-enter p0
const/4 v0, 0x0
:try_start_4
aget-object v0, p1, v0
iput-object v0, p0, Lcom/bbm/util/b/k;->b:Ljava/lang/Object;
monitor-exit p0
:try_end_9
.catchall {:try_start_4 .. :try_end_9} :catchall_2c
iget-object v0, p0, Lcom/bbm/util/b/k;->b:Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v2, v0, Lcom/bbm/util/b/i;->g:Ljava/lang/Object;
monitor-enter v2
:try_start_14
:goto_14
iget-object v0, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-boolean v0, v0, Lcom/bbm/util/b/i;->f:Z
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
:try_end_1f
.catchall {:try_start_14 .. :try_end_1f} :catchall_88
move-result v0
if-nez v0, :cond_2f
:try_start_22
iget-object v0, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v0, v0, Lcom/bbm/util/b/i;->g:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->wait()V
:try_end_29
.catchall {:try_start_22 .. :try_end_29} :catchall_88
.catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_29} :catch_2a
goto :goto_14
:catch_2a
move-exception v0
goto :goto_14
:catchall_2c
move-exception v0
monitor-exit p0
throw v0
:try_start_2f
:cond_2f
monitor-exit v2
:try_end_30
.catchall {:try_start_2f .. :try_end_30} :catchall_88
iget-object v0, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v0, v0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
if-eqz v0, :cond_b4
iget-object v0, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-nez v0, :cond_b4
invoke-direct {p0}, Lcom/bbm/util/b/k;->b()Landroid/widget/ImageView;
move-result-object v0
if-eqz v0, :cond_b4
iget-object v0, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-boolean v0, v0, Lcom/bbm/util/b/i;->e:Z
if-nez v0, :cond_b4
iget-object v0, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v0, v0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
invoke-virtual {v0, v3}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v0
:goto_52
invoke-direct {p0}, Lcom/bbm/util/b/k;->b()Landroid/widget/ImageView;
move-result-object v4
if-nez v0, :cond_78
iget-object v2, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v2
if-nez v2, :cond_78
if-eqz v4, :cond_78
iget-object v2, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-boolean v2, v2, Lcom/bbm/util/b/i;->e:Z
if-nez v2, :cond_78
:try_start_68
iget-object v2, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v5, p0, Lcom/bbm/util/b/k;->b:Ljava/lang/Object;
iget v6, p0, Lcom/bbm/util/b/k;->d:I
iget v7, p0, Lcom/bbm/util/b/k;->j:I
invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;
move-result-object v8
invoke-virtual {v2, v5, v6, v7, v8}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;IILandroid/widget/ImageView$ScaleType;)Lcom/bbm/d/fd;
:try_end_77
.catch Ljava/lang/OutOfMemoryError; {:try_start_68 .. :try_end_77} :catch_8b
move-result-object v0
:cond_78
:goto_78
if-eqz v0, :cond_87
iget-object v1, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v1, v1, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
if-eqz v1, :cond_87
iget-object v1, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v1, v1, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
invoke-virtual {v1, v3, v0}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;Lcom/bbm/d/fd;)V
:cond_87
return-object v0
:catchall_88
move-exception v0
monitor-exit v2
throw v0
:catch_8b
move-exception v2
const-string v5, "Out of memory processing image"
new-array v6, v9, [Ljava/lang/Object;
invoke-static {v2, v5, v6}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v2, v2, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
if-eqz v2, :cond_78
iget-object v0, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v0, v0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
invoke-virtual {v0}, Lcom/bbm/util/b/d;->a()V
:try_start_a0
iget-object v0, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v2, p0, Lcom/bbm/util/b/k;->b:Ljava/lang/Object;
iget v5, p0, Lcom/bbm/util/b/k;->d:I
iget v6, p0, Lcom/bbm/util/b/k;->j:I
invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;
move-result-object v4
invoke-virtual {v0, v2, v5, v6, v4}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;IILandroid/widget/ImageView$ScaleType;)Lcom/bbm/d/fd;
:try_end_af
.catch Ljava/lang/OutOfMemoryError; {:try_start_a0 .. :try_end_af} :catch_b1
move-result-object v0
goto :goto_78
:catch_b1
move-exception v0
move-object v0, v1
goto :goto_78
:cond_b4
move-object v0, v1
goto :goto_52
.end method
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/util/b/k;->d([Ljava/lang/Object;)Lcom/bbm/d/fd;
move-result-object v0
return-object v0
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 5
check-cast p1, Lcom/bbm/d/fd;
iget-object v0, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-boolean v0, v0, Lcom/bbm/util/b/i;->e:Z
if-eqz v0, :cond_11
:cond_10
const/4 p1, 0x0
:cond_11
invoke-direct {p0}, Lcom/bbm/util/b/k;->b()Landroid/widget/ImageView;
move-result-object v0
if-eqz p1, :cond_20
if-eqz v0, :cond_20
iget-object v1, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v2, p0, Lcom/bbm/util/b/k;->b:Ljava/lang/Object;
invoke-virtual {v1, v0, p1, v2}, Lcom/bbm/util/b/i;->a(Landroid/widget/ImageView;Lcom/bbm/d/fd;Ljava/lang/Object;)V
:cond_20
return-void
.end method
.method protected final synthetic b(Ljava/lang/Object;)V
.registers 4
check-cast p1, Lcom/bbm/d/fd;
invoke-super {p0, p1}, Lcom/bbm/util/b;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v1, v0, Lcom/bbm/util/b/i;->g:Ljava/lang/Object;
monitor-enter v1
:try_start_a
iget-object v0, p0, Lcom/bbm/util/b/k;->a:Lcom/bbm/util/b/i;
iget-object v0, v0, Lcom/bbm/util/b/i;->g:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
:try_end_12
.catchall {:try_start_a .. :try_end_12} :catchall_13
return-void
:catchall_13
move-exception v0
monitor-exit v1
throw v0
.end method