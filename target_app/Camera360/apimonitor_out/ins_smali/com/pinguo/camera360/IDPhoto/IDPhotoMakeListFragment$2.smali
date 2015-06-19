.class  Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$2;
.super Ljava/lang/Object;
.source "IDPhotoMakeListFragment.java"
.implements Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
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