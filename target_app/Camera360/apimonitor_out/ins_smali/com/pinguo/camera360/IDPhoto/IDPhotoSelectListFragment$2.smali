.class  Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;
.super Ljava/lang/Object;
.source "IDPhotoSelectListFragment.java"
.implements Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public adapterReleaseSelectedNum(I)Z
.registers 6
const/4 v3, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$11(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_13
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$12(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/ui/TitleView;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnClickState(Z)V
:cond_13
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mReleaseList:Ljava/util/ArrayList;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$6(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/util/ArrayList;
move-result-object v1
if-eqz v1, :cond_44
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter1:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mReleaseList:Ljava/util/ArrayList;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$6(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/util/ArrayList;
move-result-object v1
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_44
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mReleaseList:Ljava/util/ArrayList;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$6(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/util/ArrayList;
move-result-object v1
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_44
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$11(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)I
move-result v2
add-int/lit8 v2, v2, -0x1
#setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
invoke-static {v1, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$13(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;I)V
return v3
.end method
.method public adapterSelectedNum(I)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$11(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)I
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$12(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/ui/TitleView;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnClickState(Z)V
:cond_12
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$11(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)I
move-result v1
add-int/lit8 v1, v1, 0x1
#setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$13(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;I)V
const/4 v0, 0x0
return v0
.end method