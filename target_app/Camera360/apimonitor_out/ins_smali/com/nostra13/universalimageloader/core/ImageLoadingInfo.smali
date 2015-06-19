.class final Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
.super Ljava/lang/Object;
.source "ImageLoadingInfo.java"
.field final imageViewRef:Ljava/lang/ref/Reference;
.field final listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
.field final loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;
.field final memoryCacheKey:Ljava/lang/String;
.field final options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.field final targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;
.field final uri:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;Ljava/util/concurrent/locks/ReentrantLock;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->imageViewRef:Ljava/lang/ref/Reference;
iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;
iput-object p5, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
iput-object p6, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
iput-object p7, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;
iput-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;
return-void
.end method