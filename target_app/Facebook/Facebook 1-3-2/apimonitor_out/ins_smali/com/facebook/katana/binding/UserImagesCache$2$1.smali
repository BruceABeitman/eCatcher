.class  Lcom/facebook/katana/binding/UserImagesCache$2$1;
.super Ljava/lang/Object;
.source "UserImagesCache.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/facebook/katana/binding/UserImagesCache$2;
.field private final synthetic val$context:Landroid/content/Context;
.field private final synthetic val$listener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;
.field private final synthetic val$userId:J
.field private final synthetic val$userImage:Lcom/facebook/katana/binding/UserImage;
.method constructor <init>(Lcom/facebook/katana/binding/UserImagesCache$2;JLcom/facebook/katana/binding/UserImage;Landroid/content/Context;Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;)V
.registers 7
iput-object p1, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->this$1:Lcom/facebook/katana/binding/UserImagesCache$2;
iput-wide p2, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userId:J
iput-object p4, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userImage:Lcom/facebook/katana/binding/UserImage;
iput-object p5, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$context:Landroid/content/Context;
iput-object p6, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$listener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->this$1:Lcom/facebook/katana/binding/UserImagesCache$2;
#getter for: Lcom/facebook/katana/binding/UserImagesCache$2;->this$0:Lcom/facebook/katana/binding/UserImagesCache;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache$2;->access$0(Lcom/facebook/katana/binding/UserImagesCache$2;)Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v0
#getter for: Lcom/facebook/katana/binding/UserImagesCache;->mLoadPendingMap:Ljava/util/Map;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache;->access$2(Lcom/facebook/katana/binding/UserImagesCache;)Ljava/util/Map;
move-result-object v0
iget-wide v1, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userId:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userImage:Lcom/facebook/katana/binding/UserImage;
invoke-virtual {v0}, Lcom/facebook/katana/binding/UserImage;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_5f
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userImage:Lcom/facebook/katana/binding/UserImage;
invoke-virtual {v0}, Lcom/facebook/katana/binding/UserImage;->incrUsageCount()V
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->this$1:Lcom/facebook/katana/binding/UserImagesCache$2;
#getter for: Lcom/facebook/katana/binding/UserImagesCache$2;->this$0:Lcom/facebook/katana/binding/UserImagesCache;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache$2;->access$0(Lcom/facebook/katana/binding/UserImagesCache$2;)Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v0
#getter for: Lcom/facebook/katana/binding/UserImagesCache;->mUserImages:Ljava/util/Map;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache;->access$3(Lcom/facebook/katana/binding/UserImagesCache;)Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
int-to-long v0, v0
const-wide/16 v2, 0x4b
cmp-long v0, v0, v2
if-ltz v0, :cond_40
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->this$1:Lcom/facebook/katana/binding/UserImagesCache$2;
#getter for: Lcom/facebook/katana/binding/UserImagesCache$2;->this$0:Lcom/facebook/katana/binding/UserImagesCache;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache$2;->access$0(Lcom/facebook/katana/binding/UserImagesCache$2;)Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$context:Landroid/content/Context;
#calls: Lcom/facebook/katana/binding/UserImagesCache;->makeRoom(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/facebook/katana/binding/UserImagesCache;->access$4(Lcom/facebook/katana/binding/UserImagesCache;Landroid/content/Context;)V
:cond_40
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->this$1:Lcom/facebook/katana/binding/UserImagesCache$2;
#getter for: Lcom/facebook/katana/binding/UserImagesCache$2;->this$0:Lcom/facebook/katana/binding/UserImagesCache;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache$2;->access$0(Lcom/facebook/katana/binding/UserImagesCache$2;)Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v0
#getter for: Lcom/facebook/katana/binding/UserImagesCache;->mUserImages:Ljava/util/Map;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache;->access$3(Lcom/facebook/katana/binding/UserImagesCache;)Ljava/util/Map;
move-result-object v0
iget-wide v1, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userId:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userImage:Lcom/facebook/katana/binding/UserImage;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$listener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;
iget-object v1, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$context:Landroid/content/Context;
iget-object v2, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userImage:Lcom/facebook/katana/binding/UserImage;
invoke-interface {v0, v1, v2}, Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;->onUserImageLoaded(Landroid/content/Context;Lcom/facebook/katana/binding/UserImage;)V
:goto_5e
:cond_5e
return-void
:cond_5f
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->this$1:Lcom/facebook/katana/binding/UserImagesCache$2;
#getter for: Lcom/facebook/katana/binding/UserImagesCache$2;->this$0:Lcom/facebook/katana/binding/UserImagesCache;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache$2;->access$0(Lcom/facebook/katana/binding/UserImagesCache$2;)Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v0
#getter for: Lcom/facebook/katana/binding/UserImagesCache;->mPendingDownload:Ljava/util/Map;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache;->access$5(Lcom/facebook/katana/binding/UserImagesCache;)Ljava/util/Map;
move-result-object v0
iget-wide v1, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userId:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_5e
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->this$1:Lcom/facebook/katana/binding/UserImagesCache$2;
#getter for: Lcom/facebook/katana/binding/UserImagesCache$2;->this$0:Lcom/facebook/katana/binding/UserImagesCache;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache$2;->access$0(Lcom/facebook/katana/binding/UserImagesCache$2;)Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v0
#getter for: Lcom/facebook/katana/binding/UserImagesCache;->mListener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache;->access$6(Lcom/facebook/katana/binding/UserImagesCache;)Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$context:Landroid/content/Context;
iget-wide v2, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userId:J
iget-object v4, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userImage:Lcom/facebook/katana/binding/UserImage;
invoke-virtual {v4}, Lcom/facebook/katana/binding/UserImage;->getUrl()Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;->onUserImageDownload(Landroid/content/Context;JLjava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->this$1:Lcom/facebook/katana/binding/UserImagesCache$2;
#getter for: Lcom/facebook/katana/binding/UserImagesCache$2;->this$0:Lcom/facebook/katana/binding/UserImagesCache;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache$2;->access$0(Lcom/facebook/katana/binding/UserImagesCache$2;)Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v0
#getter for: Lcom/facebook/katana/binding/UserImagesCache;->mPendingDownload:Ljava/util/Map;
invoke-static {v0}, Lcom/facebook/katana/binding/UserImagesCache;->access$5(Lcom/facebook/katana/binding/UserImagesCache;)Ljava/util/Map;
move-result-object v0
iget-wide v1, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userId:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/binding/UserImagesCache$2$1;->val$userImage:Lcom/facebook/katana/binding/UserImage;
invoke-virtual {v2}, Lcom/facebook/katana/binding/UserImage;->getUrl()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_5e
.end method