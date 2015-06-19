.class  Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;
.super Ljava/lang/Object;
.source "IDPhotoSelectListFragment.java"
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onBackClick()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
return-void
.end method
.method public onRightBtnClick()V
.registers 11
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportSelectedLayBtnClick()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v9, 0x0
:goto_9
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter1:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->getCount()I
move-result v0
if-lt v9, v0, :cond_5d
const/4 v7, 0x0
:goto_16
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter2:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$2(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->getCount()I
move-result v0
if-lt v7, v0, :cond_88
const/4 v7, 0x0
:goto_23
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter3:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$4(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->getCount()I
move-result v0
if-lt v7, v0, :cond_b4
invoke-static {}, Lcom/pinguo/lib/util/Util;->isFastDoubleClick()Z
move-result v0
if-nez v0, :cond_5c
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mReleaseList:Ljava/util/ArrayList;
invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$6(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/util/ArrayList;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mPhotoPath:Ljava/lang/String;
invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$7(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mHasExported:Z
invoke-static {v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$8(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Z
move-result v4
iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mIsShared:Z
invoke-static {v5}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$9(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Z
move-result v5
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
invoke-static {v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$10(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/order/model/Coupon$Info;
move-result-object v6
invoke-static/range {v0 .. v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity;->startActivity(Landroid/app/Activity;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/io/Serializable;)V
:cond_5c
return-void
:cond_5d
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter1:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
move-result-object v0
invoke-virtual {v0, v9}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;
invoke-virtual {v8}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->isChecked()Z
move-result v0
if-eqz v0, :cond_85
iget-object v0, v8, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList1:Ljava/util/Map;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$1(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/util/Map;
move-result-object v0
iget-object v2, v8, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_85
add-int/lit8 v9, v9, 0x1
goto :goto_9
:cond_88
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter2:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$2(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
move-result-object v0
invoke-virtual {v0, v7}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;
invoke-virtual {v8}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->isChecked()Z
move-result v0
if-eqz v0, :cond_b0
iget-object v0, v8, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList2:Ljava/util/Map;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$3(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/util/Map;
move-result-object v0
iget-object v2, v8, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_b0
add-int/lit8 v7, v7, 0x1
goto/16 :goto_16
:cond_b4
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter3:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$4(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
move-result-object v0
invoke-virtual {v0, v7}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;
invoke-virtual {v8}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->isChecked()Z
move-result v0
if-eqz v0, :cond_dc
iget-object v0, v8, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList3:Ljava/util/Map;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->access$5(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/util/Map;
move-result-object v0
iget-object v2, v8, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_dc
add-int/lit8 v7, v7, 0x1
goto/16 :goto_23
.end method