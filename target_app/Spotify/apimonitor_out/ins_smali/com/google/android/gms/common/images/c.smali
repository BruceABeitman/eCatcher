.class final Lcom/google/android/gms/common/images/c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/android/gms/common/images/ImageManager;
.field private final b:Landroid/net/Uri;
.field private final c:Landroid/os/ParcelFileDescriptor;
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/common/images/c;->b:Landroid/net/Uri;
iput-object p3, p0, Lcom/google/android/gms/common/images/c;->c:Landroid/os/ParcelFileDescriptor;
return-void
.end method
.method public final run()V
.registers 8
const/4 v1, 0x1
const-string v0, "LoadBitmapFromDiskRunnable can\'t be executed in the main thread"
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v2
invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
move-result-object v2
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v3
if-ne v2, v3, :cond_47
const-string v1, "Asserts"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "checkNotMainThread: current thread "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " IS the main thread "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v3
invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "!"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_47
const/4 v4, 0x0
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/android/gms/common/images/c;->c:Landroid/os/ParcelFileDescriptor;
if-eqz v0, :cond_5c
:try_start_4d
iget-object v0, p0, Lcom/google/android/gms/common/images/c;->c:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
:try_end_56
.catch Ljava/lang/OutOfMemoryError; {:try_start_4d .. :try_end_56} :catch_77
move-result-object v3
:try_start_57
:goto_57
iget-object v0, p0, Lcom/google/android/gms/common/images/c;->c:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
:try_end_5c
.catch Ljava/io/IOException; {:try_start_57 .. :try_end_5c} :catch_90
:goto_5c
:cond_5c
new-instance v5, Ljava/util/concurrent/CountDownLatch;
invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iget-object v0, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->f(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
move-result-object v6
new-instance v0, Lcom/google/android/gms/common/images/d;
iget-object v1, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;
iget-object v2, p0, Lcom/google/android/gms/common/images/c;->b:Landroid/net/Uri;
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/d;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_start_73
invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
:try_end_76
.catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_76} :catch_99
:goto_76
return-void
:catch_77
move-exception v0
const-string v2, "ImageManager"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "OOM while loading bitmap for uri: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/google/android/gms/common/images/c;->b:Landroid/net/Uri;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move v4, v1
goto :goto_57
:catch_90
move-exception v0
const-string v2, "ImageManager"
const-string v5, "closed failed"
invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_5c
:catch_99
move-exception v0
const-string v0, "ImageManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Latch interrupted while posting "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/common/images/c;->b:Landroid/net/Uri;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_76
.end method