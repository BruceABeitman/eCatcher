.class public Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "ImageLoader.java"
.field private mBitmap:Landroid/graphics/Bitmap;
.field private final mCacheKey:Ljava/lang/String;
.field private final mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;
.field private final mRequestUrl:Ljava/lang/String;
.field final synthetic this$0:Lcom/android/volley/toolbox/ImageLoader;
.method public constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V
.registers 6
iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/android/volley/toolbox/ImageLoader;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;
iput-object p3, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;
iput-object p4, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;
iput-object p5, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;
return-void
.end method
.method static synthetic access$0(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
.registers 2
iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;
return-object v0
.end method
.method static synthetic access$1(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method public cancelRequest()V
.registers 5
iget-object v2, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;
if-nez v2, :cond_5
:cond_4
:goto_4
return-void
:cond_5
iget-object v2, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/android/volley/toolbox/ImageLoader;
#getter for: Lcom/android/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;
invoke-static {v2}, Lcom/android/volley/toolbox/ImageLoader;->access$0(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
move-result-object v2
iget-object v3, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;
if-eqz v1, :cond_27
invoke-virtual {v1, p0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z
move-result v0
if-eqz v0, :cond_4
iget-object v2, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/android/volley/toolbox/ImageLoader;
#getter for: Lcom/android/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;
invoke-static {v2}, Lcom/android/volley/toolbox/ImageLoader;->access$0(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
move-result-object v2
iget-object v3, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4
:cond_27
iget-object v2, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/android/volley/toolbox/ImageLoader;
#getter for: Lcom/android/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
invoke-static {v2}, Lcom/android/volley/toolbox/ImageLoader;->access$1(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
move-result-object v2
iget-object v3, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;
if-eqz v1, :cond_4
invoke-virtual {v1, p0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z
#getter for: Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;
invoke-static {v1}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->access$0(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
move-result v2
if-nez v2, :cond_4
iget-object v2, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/android/volley/toolbox/ImageLoader;
#getter for: Lcom/android/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
invoke-static {v2}, Lcom/android/volley/toolbox/ImageLoader;->access$1(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
move-result-object v2
iget-object v3, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4
.end method
.method public getBitmap()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public getRequestUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;
return-object v0
.end method