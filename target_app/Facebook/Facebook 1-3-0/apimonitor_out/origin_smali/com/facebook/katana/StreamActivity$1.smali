.class Lcom/facebook/katana/StreamActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "StreamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/StreamActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/StreamActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/StreamActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStreamPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
    invoke-static {v0}, Lcom/facebook/katana/StreamActivity;->access$13(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, p7, p6}, Lcom/facebook/katana/StreamAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public onHomeStreamUpdated(Lcom/facebook/katana/binding/AppSession;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mHome:Z
    invoke-static {v0}, Lcom/facebook/katana/StreamActivity;->access$17(Lcom/facebook/katana/StreamActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
    invoke-static {v0}, Lcom/facebook/katana/StreamActivity;->access$13(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/StreamAdapter;->refreshStream()V

    :cond_11
    return-void
.end method

.method public onPhotoDecodeComplete(Lcom/facebook/katana/binding/AppSession;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
    invoke-static {v0}, Lcom/facebook/katana/StreamActivity;->access$13(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/katana/StreamAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public onStreamGetComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;J[JJJIILjava/util/List;Lcom/facebook/katana/binding/FacebookStreamContainer;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "J[JJJII",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;",
            "Lcom/facebook/katana/binding/FacebookStreamContainer;",
            ")V"
        }
    .end annotation

    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mWall:Z
    invoke-static {v2}, Lcom/facebook/katana/StreamActivity;->access$10(Lcom/facebook/katana/StreamActivity;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz p8, :cond_17

    const/4 v2, 0x0

    aget-wide v2, p8, v2

    iget-object v4, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mUserId:J
    invoke-static {v4}, Lcom/facebook/katana/StreamActivity;->access$11(Lcom/facebook/katana/StreamActivity;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    :cond_17
    :goto_17
    return-void

    :cond_18
    if-nez p8, :cond_17

    :cond_1a
    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    const/4 v3, 0x0

    #calls: Lcom/facebook/katana/StreamActivity;->showProgress(Z)V
    invoke-static {v2, v3}, Lcom/facebook/katana/StreamActivity;->access$12(Lcom/facebook/katana/StreamActivity;Z)V

    const/16 v2, 0xc8

    if-ne p3, v2, :cond_54

    const/4 v2, 0x2

    move/from16 v0, p14

    move v1, v2

    if-ne v0, v1, :cond_34

    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
    invoke-static {v2}, Lcom/facebook/katana/StreamActivity;->access$13(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/StreamAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/katana/StreamAdapter;->loadingMore(Z)V

    :cond_34
    invoke-virtual/range {p16 .. p16}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPosts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4b

    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
    invoke-static {v2}, Lcom/facebook/katana/StreamActivity;->access$13(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/StreamAdapter;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p16

    invoke-virtual {v0, v1}, Lcom/facebook/katana/StreamAdapter;->refreshStream(Lcom/facebook/katana/binding/FacebookStreamContainer;)V

    goto :goto_17

    :cond_4b
    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    move-object v0, v2

    move-object/from16 v1, p16

    #calls: Lcom/facebook/katana/StreamActivity;->handleStreamError(Lcom/facebook/katana/binding/FacebookStreamContainer;)Z
    invoke-static {v0, v1}, Lcom/facebook/katana/StreamActivity;->access$14(Lcom/facebook/katana/StreamActivity;Lcom/facebook/katana/binding/FacebookStreamContainer;)Z

    goto :goto_17

    :cond_54
    const/4 v2, 0x2

    move/from16 v0, p14

    move v1, v2

    if-ne v0, v1, :cond_64

    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
    invoke-static {v2}, Lcom/facebook/katana/StreamActivity;->access$13(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/StreamAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/katana/StreamAdapter;->loadingMore(Z)V

    :cond_64
    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    iget-object v3, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    iget-object v4, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    const v5, 0x7f08012d

    invoke-virtual {v4, v5}, Lcom/facebook/katana/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_17
.end method

.method public onStreamPublishComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/service/api/FacebookPost;)V
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/StreamActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #setter for: Lcom/facebook/katana/StreamActivity;->mPublishReqId:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/facebook/katana/StreamActivity;->access$15(Lcom/facebook/katana/StreamActivity;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_28

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
    invoke-static {v0}, Lcom/facebook/katana/StreamActivity;->access$13(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/StreamAdapter;->refreshStream()V

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    const v3, 0x7f08013f

    invoke-virtual {v2, v3}, Lcom/facebook/katana/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_27
.end method

.method public onStreamRemovePostComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/StreamActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    const/4 v1, 0x0

    #setter for: Lcom/facebook/katana/StreamActivity;->mRemoveReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/katana/StreamActivity;->access$16(Lcom/facebook/katana/StreamActivity;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
    invoke-static {v0}, Lcom/facebook/katana/StreamActivity;->access$13(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/StreamAdapter;->refreshStream()V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    const v3, 0x7f080147

    invoke-virtual {v2, v3}, Lcom/facebook/katana/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_19
.end method

.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
    .registers 9

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_d

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
    invoke-static {v0}, Lcom/facebook/katana/StreamActivity;->access$13(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/facebook/katana/StreamAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V

    :cond_d
    return-void
.end method

.method public onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$1;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
    invoke-static {v0}, Lcom/facebook/katana/StreamActivity;->access$13(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/katana/StreamAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V

    return-void
.end method
