.class Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoReelAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/HomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/HomeActivity;Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;-><init>(Lcom/facebook/katana/HomeActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStreamPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$12(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/HomeActivity$ReelAdapter;

    move-result-object v0

    invoke-virtual {v0, p7, p6}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public onPhotoDecodeComplete(Lcom/facebook/katana/binding/AppSession;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$12(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/HomeActivity$ReelAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public onStreamGetComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;J[JJJIILjava/util/List;Lcom/facebook/katana/binding/FacebookStreamContainer;)V
    .registers 25
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

    const/4 v4, 0x0

    if-eqz p16, :cond_7

    invoke-virtual/range {p16 .. p16}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPosts()Ljava/util/List;

    move-result-object v4

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz v4, :cond_2b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2b

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookPost;

    :cond_2b
    if-eqz v4, :cond_52

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_52

    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;

    const/4 v6, 0x0

    #calls: Lcom/facebook/katana/HomeActivity;->showProgress(Z)V
    invoke-static {v5, v6}, Lcom/facebook/katana/HomeActivity;->access$7(Lcom/facebook/katana/HomeActivity;Z)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4e

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_19

    :cond_4e
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_52
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6c

    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;
    invoke-static {v5}, Lcom/facebook/katana/HomeActivity;->access$12(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/HomeActivity$ReelAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->addMediaContent(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_6c

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;

    const/4 v6, 0x0

    #calls: Lcom/facebook/katana/HomeActivity;->showProgress(Z)V
    invoke-static {v5, v6}, Lcom/facebook/katana/HomeActivity;->access$7(Lcom/facebook/katana/HomeActivity;Z)V

    :cond_6c
    if-eqz v3, :cond_7c

    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;
    invoke-static {v5}, Lcom/facebook/katana/HomeActivity;->access$12(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/HomeActivity$ReelAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->getCount()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_39

    :cond_7c
    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-virtual {v5, v1}, Lcom/facebook/katana/HomeActivity;->streamGet(Lcom/facebook/katana/service/api/FacebookPost;)V

    goto :goto_39
.end method
