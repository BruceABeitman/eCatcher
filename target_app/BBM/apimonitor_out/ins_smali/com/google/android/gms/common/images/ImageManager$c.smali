.class final Lcom/google/android/gms/common/images/ImageManager$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic AB:Lcom/google/android/gms/common/images/ImageManager;
.field private final AC:Landroid/os/ParcelFileDescriptor;
.field private final mUri:Landroid/net/Uri;
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$c;->AB:Lcom/google/android/gms/common/images/ImageManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->mUri:Landroid/net/Uri;
iput-object p3, p0, Lcom/google/android/gms/common/images/ImageManager$c;->AC:Landroid/os/ParcelFileDescriptor;
return-void
.end method
.method public final run()V
.registers 8
const/4 v1, 0x1
const-string v0, "LoadBitmapFromDiskRunnable can\'t be executed in the main thread"
invoke-static {v0}, Lcom/google/android/gms/internal/ed;->ad(Ljava/lang/String;)V
const/4 v4, 0x0
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->AC:Landroid/os/ParcelFileDescriptor;
if-eqz v0, :cond_1b
:try_start_c
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->AC:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
:try_end_15
.catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_15} :catch_36
move-result-object v3
:try_start_16
:goto_16
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->AC:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
:goto_1b
:try_end_1b
.catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_4f
:cond_1b
new-instance v5, Ljava/util/concurrent/CountDownLatch;
invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->AB:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->e(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
move-result-object v6
new-instance v0, Lcom/google/android/gms/common/images/ImageManager$f;
iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$c;->AB:Lcom/google/android/gms/common/images/ImageManager;
iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->mUri:Landroid/net/Uri;
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/ImageManager$f;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_start_32
invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
:goto_35
:try_end_35
.catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_58
return-void
:catch_36
move-exception v0
const-string v2, "ImageManager"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "OOM while loading bitmap for uri: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$c;->mUri:Landroid/net/Uri;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move v4, v1
goto :goto_16
:catch_4f
move-exception v0
const-string v2, "ImageManager"
const-string v5, "closed failed"
invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_1b
:catch_58
move-exception v0
const-string v0, "ImageManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Latch interrupted while posting "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->mUri:Landroid/net/Uri;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_35
.end method