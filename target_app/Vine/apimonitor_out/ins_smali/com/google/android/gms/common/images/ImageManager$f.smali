.class final Lcom/google/android/gms/common/images/ImageManager$f;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic Ff:Lcom/google/android/gms/common/images/ImageManager;
.field private Fi:Z
.field private final kI:Ljava/util/concurrent/CountDownLatch;
.field private final mBitmap:Landroid/graphics/Bitmap;
.field private final mUri:Landroid/net/Uri;
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Ff:Lcom/google/android/gms/common/images/ImageManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;
iput-object p3, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;
iput-boolean p4, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Z
iput-object p5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->kI:Ljava/util/concurrent/CountDownLatch;
return-void
.end method
.method private a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;Z)V
.registers 12
const/4 v2, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;
move-result-object v3
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v4
move v1, v2
:goto_a
if-ge v1, v4, :cond_53
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/images/a;
if-eqz p2, :cond_30
iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Ff:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
move-result-object v5
iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
:goto_1f
instance-of v5, v0, Lcom/google/android/gms/common/images/a$c;
if-nez v5, :cond_2c
iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Ff:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
move-result-object v5
invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_2c
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_a
:cond_30
iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Ff:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
move-result-object v5
iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Ff:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
move-result-object v5
iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Ff:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/gx;
move-result-object v6
invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gx;Z)V
goto :goto_1f
:cond_53
return-void
.end method
.method public run()V
.registers 5
const/4 v2, 0x0
const-string v0, "OnBitmapLoadedRunnable must be executed in the main thread"
invoke-static {v0}, Lcom/google/android/gms/internal/gy;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_30
const/4 v0, 0x1
move v1, v0
:goto_c
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Ff:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;
move-result-object v0
if-eqz v0, :cond_46
iget-boolean v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Z
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Ff:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$b;->evictAll()V
invoke-static {}, Ljava/lang/System;->gc()V
iput-boolean v2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Z
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Ff:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->g(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_2f
return-void
:cond_30
move v1, v2
goto :goto_c
:cond_32
if-eqz v1, :cond_46
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Ff:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;
move-result-object v0
new-instance v2, Lcom/google/android/gms/common/images/a$a;
iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;
invoke-direct {v2, v3}, Lcom/google/android/gms/common/images/a$a;-><init>(Landroid/net/Uri;)V
iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/images/ImageManager$b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_46
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Ff:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;
invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
if-eqz v0, :cond_59
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/images/ImageManager$f;->a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;Z)V
:cond_59
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->kI:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->eY()Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_63
invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->eZ()Ljava/util/HashSet;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;
invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
monitor-exit v1
goto :goto_2f
:catchall_6e
move-exception v0
monitor-exit v1
:try_end_70
.catchall {:try_start_63 .. :try_end_70} :catchall_6e
throw v0
.end method