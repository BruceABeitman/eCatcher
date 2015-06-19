.class  Lcom/facebook/katana/binding/UserImagesCache$2;
.super Ljava/lang/Object;
.source "UserImagesCache.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/facebook/katana/binding/UserImagesCache;
.field private final synthetic val$context:Landroid/content/Context;
.field private final synthetic val$listener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;
.field private final synthetic val$userId:J
.field private final synthetic val$userImage:Lcom/facebook/katana/binding/UserImage;
.method constructor <init>(Lcom/facebook/katana/binding/UserImagesCache;Landroid/content/Context;JLcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;)V
.registers 7
iput-object p1, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->this$0:Lcom/facebook/katana/binding/UserImagesCache;
iput-object p2, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->val$context:Landroid/content/Context;
iput-wide p3, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->val$userId:J
iput-object p5, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->val$userImage:Lcom/facebook/katana/binding/UserImage;
iput-object p6, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->val$listener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/binding/UserImagesCache$2;)Lcom/facebook/katana/binding/UserImagesCache;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->this$0:Lcom/facebook/katana/binding/UserImagesCache;
return-object v0
.end method
.method public run()V
.registers 10
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->val$context:Landroid/content/Context;
iget-wide v1, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->val$userId:J
#calls: Lcom/facebook/katana/binding/UserImagesCache;->getUserImageBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;
invoke-static {v0, v1, v2}, Lcom/facebook/katana/binding/UserImagesCache;->access$0(Landroid/content/Context;J)Landroid/graphics/Bitmap;
move-result-object v7
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->val$userImage:Lcom/facebook/katana/binding/UserImage;
invoke-virtual {v0, v7}, Lcom/facebook/katana/binding/UserImage;->setBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->this$0:Lcom/facebook/katana/binding/UserImagesCache;
#getter for: Lcom/facebook/katana/binding/UserImagesCache;->mLoaderThread:Lcom/facebook/katana/binding/WorkerThread;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache;->access$1(Lcom/facebook/katana/binding/UserImagesCache;)Lcom/facebook/katana/binding/WorkerThread;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/binding/WorkerThread;->getHandler()Landroid/os/Handler;
move-result-object v8
new-instance v0, Lcom/facebook/katana/binding/UserImagesCache$2$1;
iget-wide v2, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->val$userId:J
iget-object v4, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->val$userImage:Lcom/facebook/katana/binding/UserImage;
iget-object v5, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->val$context:Landroid/content/Context;
iget-object v6, p0, Lcom/facebook/katana/binding/UserImagesCache$2;->val$listener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/binding/UserImagesCache$2$1;-><init>(Lcom/facebook/katana/binding/UserImagesCache$2;JLcom/facebook/katana/binding/UserImage;Landroid/content/Context;Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;)V
invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method