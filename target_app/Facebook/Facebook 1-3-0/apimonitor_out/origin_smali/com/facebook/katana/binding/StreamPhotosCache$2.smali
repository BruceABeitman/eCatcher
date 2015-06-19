.class Lcom/facebook/katana/binding/StreamPhotosCache$2;
.super Ljava/lang/Object;
.source "StreamPhotosCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/binding/StreamPhotosCache;->decode(Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private final synthetic val$listener:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;

.field private final synthetic val$photo:Lcom/facebook/katana/binding/StreamPhoto;


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/StreamPhotosCache;Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2;->this$0:Lcom/facebook/katana/binding/StreamPhotosCache;

    iput-object p2, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2;->val$photo:Lcom/facebook/katana/binding/StreamPhoto;

    iput-object p3, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2;->val$listener:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2;->val$photo:Lcom/facebook/katana/binding/StreamPhoto;

    iget-object v1, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2;->val$photo:Lcom/facebook/katana/binding/StreamPhoto;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/StreamPhoto;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/StreamPhoto;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2;->val$photo:Lcom/facebook/katana/binding/StreamPhoto;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/StreamPhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2;->this$0:Lcom/facebook/katana/binding/StreamPhotosCache;

    #getter for: Lcom/facebook/katana/binding/StreamPhotosCache;->mDecoderThread:Lcom/facebook/katana/binding/WorkerThread;
    invoke-static {v0}, Lcom/facebook/katana/binding/StreamPhotosCache;->access$0(Lcom/facebook/katana/binding/StreamPhotosCache;)Lcom/facebook/katana/binding/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/binding/StreamPhotosCache$2$1;

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2;->val$listener:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;

    iget-object v3, p0, Lcom/facebook/katana/binding/StreamPhotosCache$2;->val$photo:Lcom/facebook/katana/binding/StreamPhoto;

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/katana/binding/StreamPhotosCache$2$1;-><init>(Lcom/facebook/katana/binding/StreamPhotosCache$2;Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;Lcom/facebook/katana/binding/StreamPhoto;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2d
    return-void
.end method
