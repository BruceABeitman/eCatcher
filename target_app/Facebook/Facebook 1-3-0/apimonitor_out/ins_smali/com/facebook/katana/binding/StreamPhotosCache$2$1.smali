.class  Lcom/facebook/katana/binding/StreamPhotosCache$2$1;
.super Ljava/lang/Object;
.source "StreamPhotosCache.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/facebook/katana/binding/StreamPhotosCache$2;
.field private final synthetic val$listener:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;
.field private final synthetic val$photo:Lcom/facebook/katana/binding/StreamPhoto;
.method constructor <init>(Lcom/facebook/katana/binding/StreamPhotosCache$2;Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;Lcom/facebook/katana/binding/StreamPhoto;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2$1;->this$1:Lcom/facebook/katana/binding/StreamPhotosCache$2;
iput-object p2, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2$1;->val$listener:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;
iput-object p3, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2$1;->val$photo:Lcom/facebook/katana/binding/StreamPhoto;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2$1;->val$listener:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;
iget-object v1, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2$1;->val$photo:Lcom/facebook/katana/binding/StreamPhoto;
invoke-virtual {v1}, Lcom/facebook/katana/binding/StreamPhoto;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2$1;->val$photo:Lcom/facebook/katana/binding/StreamPhoto;
invoke-virtual {v2}, Lcom/facebook/katana/binding/StreamPhoto;->getUrl()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;->onPhotoDecoded(Landroid/graphics/Bitmap;Ljava/lang/String;)V
return-void
.end method