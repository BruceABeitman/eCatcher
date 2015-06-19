.class Lcom/pinguo/album/fragment/PGFullImageFragment$5;
.super Ljava/lang/Object;
.source "PGFullImageFragment.java"

# interfaces
.implements Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/fragment/PGFullImageFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeletePaths()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/album/data/MediaPath;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
    invoke-static {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$15(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/fragment/PGFullImageFragment$Model;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/pinguo/album/fragment/PGFullImageFragment$Model;->getMediaItem(I)Lcom/pinguo/album/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onConfirmDialogDismissed(Z)V
    .registers 9

    const v6, 0x7f0800a1

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mMediaSet:Lcom/pinguo/album/data/MediaSet;
    invoke-static {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$18(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/album/data/MediaSet;->getMediaItemCountWithoutCache()I

    move-result v1

    #setter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
    invoke-static {v0, v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$19(Lcom/pinguo/album/fragment/PGFullImageFragment;I)V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
    invoke-static {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$12(Lcom/pinguo/album/fragment/PGFullImageFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
    invoke-static {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$13(Lcom/pinguo/album/fragment/PGFullImageFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_75

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mActivity:Lcom/pinguo/album/activities/BaseActivity;
    invoke-static {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$11(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/album/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
    invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$13(Lcom/pinguo/album/fragment/PGFullImageFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
    invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$13(Lcom/pinguo/album/fragment/PGFullImageFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/pinguo/album/fragment/PGFullImageFragment;->updateActionBarMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$14(Lcom/pinguo/album/fragment/PGFullImageFragment;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
    invoke-static {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$13(Lcom/pinguo/album/fragment/PGFullImageFragment;)I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_e

    :cond_75
    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
    invoke-static {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$12(Lcom/pinguo/album/fragment/PGFullImageFragment;)I

    move-result v0

    if-ltz v0, :cond_5b

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mActivity:Lcom/pinguo/album/activities/BaseActivity;
    invoke-static {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$11(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/album/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
    invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$12(Lcom/pinguo/album/fragment/PGFullImageFragment;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$5;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
    invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$13(Lcom/pinguo/album/fragment/PGFullImageFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/pinguo/album/fragment/PGFullImageFragment;->updateActionBarMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$14(Lcom/pinguo/album/fragment/PGFullImageFragment;Ljava/lang/String;)V

    goto :goto_5b
.end method
