.class  Lcom/twidroid/net/b/k;
.super Lcom/twidroid/net/b/a/f;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/net/b/i;
.field private e:Ljava/lang/Object;
.field private final f:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/twidroid/net/b/i;Landroid/widget/ImageView;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-direct {p0}, Lcom/twidroid/net/b/a/f;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/twidroid/net/b/k;->f:Ljava/lang/ref/WeakReference;
return-void
.end method
.method static synthetic a(Lcom/twidroid/net/b/k;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/b/k;->e:Ljava/lang/Object;
return-object v0
.end method
.method private g()Landroid/widget/ImageView;
.registers 3
iget-object v0, p0, Lcom/twidroid/net/b/k;->f:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-static {v0}, Lcom/twidroid/net/b/i;->b(Landroid/widget/ImageView;)Lcom/twidroid/net/b/k;
move-result-object v1
if-ne p0, v1, :cond_f
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method protected varargs a([Ljava/lang/Object;)Landroid/graphics/Bitmap;
.registers 6
const/4 v2, 0x0
const/4 v0, 0x0
aget-object v0, p1, v0
iput-object v0, p0, Lcom/twidroid/net/b/k;->e:Ljava/lang/Object;
iget-object v0, p0, Lcom/twidroid/net/b/k;->e:Ljava/lang/Object;
check-cast v0, Lcom/twidroid/net/b/c;
iget-object v1, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v1}, Lcom/twidroid/net/b/i;->a(Lcom/twidroid/net/b/i;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_11
:goto_11
iget-object v3, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
iget-boolean v3, v3, Lcom/twidroid/net/b/i;->c:Z
if-eqz v3, :cond_29
invoke-virtual {p0}, Lcom/twidroid/net/b/k;->e()Z
:try_end_1a
.catchall {:try_start_11 .. :try_end_1a} :catchall_83
move-result v3
if-nez v3, :cond_29
:try_start_1d
iget-object v3, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v3}, Lcom/twidroid/net/b/i;->a(Lcom/twidroid/net/b/i;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->wait()V
:try_end_26
.catchall {:try_start_1d .. :try_end_26} :catchall_83
.catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_26} :catch_27
goto :goto_11
:catch_27
move-exception v3
goto :goto_11
:cond_29
:try_start_29
monitor-exit v1
:try_end_2a
.catchall {:try_start_29 .. :try_end_2a} :catchall_83
iget-object v1, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v1}, Lcom/twidroid/net/b/i;->b(Lcom/twidroid/net/b/i;)Lcom/twidroid/net/b/a;
move-result-object v1
if-eqz v1, :cond_90
invoke-virtual {p0}, Lcom/twidroid/net/b/k;->e()Z
move-result v1
if-nez v1, :cond_90
invoke-direct {p0}, Lcom/twidroid/net/b/k;->g()Landroid/widget/ImageView;
move-result-object v1
if-eqz v1, :cond_90
iget-object v1, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v1}, Lcom/twidroid/net/b/i;->c(Lcom/twidroid/net/b/i;)Z
move-result v1
if-nez v1, :cond_90
iget-object v1, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v1}, Lcom/twidroid/net/b/i;->b(Lcom/twidroid/net/b/i;)Lcom/twidroid/net/b/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/twidroid/net/b/a;->b(Lcom/twidroid/net/b/c;)Landroid/graphics/Bitmap;
move-result-object v1
:goto_50
if-nez v1, :cond_6f
:try_start_52
invoke-virtual {p0}, Lcom/twidroid/net/b/k;->e()Z
move-result v3
if-nez v3, :cond_6f
invoke-direct {p0}, Lcom/twidroid/net/b/k;->g()Landroid/widget/ImageView;
move-result-object v3
if-eqz v3, :cond_6f
iget-object v3, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v3}, Lcom/twidroid/net/b/i;->c(Lcom/twidroid/net/b/i;)Z
move-result v3
if-nez v3, :cond_6f
iget-object v1, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
const/4 v3, 0x0
aget-object v3, p1, v3
invoke-virtual {v1, v3}, Lcom/twidroid/net/b/i;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
:try_end_6e
.catch Ljava/lang/OutOfMemoryError; {:try_start_52 .. :try_end_6e} :catch_86
move-result-object v1
:cond_6f
if-eqz v1, :cond_82
iget-object v2, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v2}, Lcom/twidroid/net/b/i;->b(Lcom/twidroid/net/b/i;)Lcom/twidroid/net/b/a;
move-result-object v2
if-eqz v2, :cond_82
iget-object v2, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v2}, Lcom/twidroid/net/b/i;->b(Lcom/twidroid/net/b/i;)Lcom/twidroid/net/b/a;
move-result-object v2
invoke-virtual {v2, v0, v1}, Lcom/twidroid/net/b/a;->a(Lcom/twidroid/net/b/c;Landroid/graphics/Bitmap;)V
:cond_82
:goto_82
return-object v1
:catchall_83
move-exception v0
:try_start_84
monitor-exit v1
:try_end_85
.catchall {:try_start_84 .. :try_end_85} :catchall_83
throw v0
:catch_86
move-exception v0
const-string v1, "ImageWorker"
const-string v3, "OOM error in processing bitmap"
invoke-static {v1, v3, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v1, v2
goto :goto_82
:cond_90
move-object v1, v2
goto :goto_50
.end method
.method protected a(Landroid/graphics/Bitmap;)V
.registers 6
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/twidroid/net/b/k;->e()Z
move-result v0
if-nez v0, :cond_f
iget-object v0, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v0}, Lcom/twidroid/net/b/i;->c(Lcom/twidroid/net/b/i;)Z
move-result v0
if-eqz v0, :cond_10
:cond_f
move-object p1, v1
:cond_10
invoke-direct {p0}, Lcom/twidroid/net/b/k;->g()Landroid/widget/ImageView;
move-result-object v2
if-eqz p1, :cond_1e
if-eqz v2, :cond_1e
iget-object v0, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v0, v2, p1}, Lcom/twidroid/net/b/i;->a(Lcom/twidroid/net/b/i;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
:goto_1d
:cond_1d
return-void
:cond_1e
if-eqz v2, :cond_1d
iget-object v0, p0, Lcom/twidroid/net/b/k;->e:Ljava/lang/Object;
check-cast v0, Lcom/twidroid/net/b/c;
invoke-virtual {v0}, Lcom/twidroid/net/b/c;->b()Ljava/lang/String;
move-result-object v0
new-instance v3, Lcom/twidroid/net/b/k$1;
invoke-direct {v3, p0, v2}, Lcom/twidroid/net/b/k$1;-><init>(Lcom/twidroid/net/b/k;Landroid/widget/ImageView;)V
invoke-static {v0, v1, v3}, Lcom/twidroid/net/k;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/net/l;)V
goto :goto_1d
.end method
.method protected synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/graphics/Bitmap;
invoke-virtual {p0, p1}, Lcom/twidroid/net/b/k;->b(Landroid/graphics/Bitmap;)V
return-void
.end method
.method protected synthetic b([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/net/b/k;->a([Ljava/lang/Object;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method protected b(Landroid/graphics/Bitmap;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/net/b/a/f;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v0}, Lcom/twidroid/net/b/i;->a(Lcom/twidroid/net/b/i;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_a
iget-object v0, p0, Lcom/twidroid/net/b/k;->a:Lcom/twidroid/net/b/i;
invoke-static {v0}, Lcom/twidroid/net/b/i;->a(Lcom/twidroid/net/b/i;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
return-void
:catchall_15
move-exception v0
monitor-exit v1
:try_end_17
.catchall {:try_start_a .. :try_end_17} :catchall_15
throw v0
.end method
.method protected synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/graphics/Bitmap;
invoke-virtual {p0, p1}, Lcom/twidroid/net/b/k;->a(Landroid/graphics/Bitmap;)V
return-void
.end method