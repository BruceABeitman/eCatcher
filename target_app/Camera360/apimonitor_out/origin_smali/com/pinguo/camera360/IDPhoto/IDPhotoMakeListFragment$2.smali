.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$2;
.super Ljava/lang/Object;
.source "IDPhotoMakeListFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapterDataAdd(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->adapterItemAddEvent(I)V
    invoke-static {v0, p1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$5(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V

    return-void
.end method

.method public adapterDataDeleted(ILandroid/widget/TextView;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->adapterItemDeletedEvent(ILandroid/widget/TextView;)V
    invoke-static {v0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$6(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;ILandroid/widget/TextView;)V

    return-void
.end method

.method public adapterDataMinus(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->adapterItemMinusEvent(I)V
    invoke-static {v0, p1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$4(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V

    return-void
.end method
