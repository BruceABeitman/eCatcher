.class Lcom/facebook/katana/binding/AppSession$1;
.super Ljava/lang/Object;
.source "AppSession.java"

# interfaces
.implements Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/binding/AppSession;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/binding/AppSession;


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/AppSession;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserImageDownload(Landroid/content/Context;JLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    #calls: Lcom/facebook/katana/binding/AppSession;->downloadUserImage(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/facebook/katana/binding/AppSession;->access$0(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onUserImageLoaded(Landroid/content/Context;Lcom/facebook/katana/binding/UserImage;)V
    .registers 8

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    #getter for: Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I
    invoke-static {v1}, Lcom/facebook/katana/binding/AppSession;->access$1(Lcom/facebook/katana/binding/AppSession;)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    #getter for: Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/katana/binding/AppSession;->access$2(Lcom/facebook/katana/binding/AppSession;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_55

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    #getter for: Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;
    invoke-static {v1}, Lcom/facebook/katana/binding/AppSession;->access$2(Lcom/facebook/katana/binding/AppSession;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    #getter for: Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I
    invoke-static {v2}, Lcom/facebook/katana/binding/AppSession;->access$1(Lcom/facebook/katana/binding/AppSession;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookStatus;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/facebook/katana/binding/UserImage;->getFriendId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_55

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    #getter for: Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;
    invoke-static {v1}, Lcom/facebook/katana/binding/AppSession;->access$2(Lcom/facebook/katana/binding/AppSession;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    #getter for: Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I
    invoke-static {v3}, Lcom/facebook/katana/binding/AppSession;->access$1(Lcom/facebook/katana/binding/AppSession;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookStatus;

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    #getter for: Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I
    invoke-static {v3}, Lcom/facebook/katana/binding/AppSession;->access$1(Lcom/facebook/katana/binding/AppSession;)I

    move-result v3

    invoke-virtual {p2}, Lcom/facebook/katana/binding/UserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    #calls: Lcom/facebook/katana/binding/AppSession;->updateWidget(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookStatus;ILandroid/graphics/Bitmap;)V
    invoke-static {v2, p1, v1, v3, v4}, Lcom/facebook/katana/binding/AppSession;->access$3(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookStatus;ILandroid/graphics/Bitmap;)V

    :cond_55
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    #getter for: Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/facebook/katana/binding/AppSession;->access$4(Lcom/facebook/katana/binding/AppSession;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_66

    return-void

    :cond_66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$1;->this$0:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0, v2, p2}, Lcom/facebook/katana/binding/AppSessionListener;->onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V

    goto :goto_5f
.end method
