.class final Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
.super Landroid/os/ResultReceiver;
.field  a:Z
.field final synthetic b:Lcom/google/android/gms/common/images/ImageManager;
.field private final c:Landroid/net/Uri;
.field private final d:Ljava/util/ArrayList;
.method constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->b:Lcom/google/android/gms/common/images/ImageManager;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a:Z
iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->c:Landroid/net/Uri;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->d:Ljava/util/ArrayList;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->d:Ljava/util/ArrayList;
return-object v0
.end method
.method public a()V
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "com.google.android.gms.common.images.LOAD_IMAGE"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "com.google.android.gms.extras.uri"
iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->c:Landroid/net/Uri;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "com.google.android.gms.extras.resultReceiver"
invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "com.google.android.gms.extras.priority"
const/4 v2, 0x3
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->b:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/images/h;)V
.registers 4
iget-boolean v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a:Z
if-nez v0, :cond_15
const/4 v0, 0x1
:goto_5
const-string v1, "Cannot add an ImageRequest when mHandlingRequests is true"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/gj;->a(ZLjava/lang/Object;)V
const-string v0, "ImageReceiver.addImageRequest() must be called in the main thread"
invoke-static {v0}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->d:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
:cond_15
const/4 v0, 0x0
goto :goto_5
.end method
.method public b(Lcom/google/android/gms/common/images/h;)V
.registers 4
iget-boolean v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a:Z
if-nez v0, :cond_15
const/4 v0, 0x1
:goto_5
const-string v1, "Cannot remove an ImageRequest when mHandlingRequests is true"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/gj;->a(ZLjava/lang/Object;)V
const-string v0, "ImageReceiver.removeImageRequest() must be called in the main thread"
invoke-static {v0}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->d:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return-void
:cond_15
const/4 v0, 0x0
goto :goto_5
.end method
.method public onReceiveResult(ILandroid/os/Bundle;)V
.registers 8
const-string v0, "com.google.android.gms.extra.fileDescriptor"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/os/ParcelFileDescriptor;
iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->b:Lcom/google/android/gms/common/images/ImageManager;
invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
move-result-object v1
new-instance v2, Lcom/google/android/gms/common/images/d;
iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->b:Lcom/google/android/gms/common/images/ImageManager;
iget-object v4, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->c:Landroid/net/Uri;
invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/common/images/d;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method