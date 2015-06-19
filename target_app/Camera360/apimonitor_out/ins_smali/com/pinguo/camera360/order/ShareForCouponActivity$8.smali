.class  Lcom/pinguo/camera360/order/ShareForCouponActivity$8;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "ShareForCouponActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
.field private final synthetic val$thumbArray:[B
.method constructor <init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;[B)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
iput-object p2, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->val$thumbArray:[B
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkIV:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$2(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkView:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$3(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
const v1, 0x7f080324
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#calls: Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$1(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$0(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/Button;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
return-void
.end method
.method public onSuccess(Lcom/pinguo/camera360/order/model/Campaign$Info;)V
.registers 18
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
move-object/from16 v0, p1
#setter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
invoke-static {v13, v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$4(Lcom/pinguo/camera360/order/ShareForCouponActivity;Lcom/pinguo/camera360/order/model/Campaign$Info;)V
:try_start_9
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$5(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/order/model/Campaign$Info;
move-result-object v13
iget-object v6, v13, Lcom/pinguo/camera360/order/model/Campaign$Info;->list:Ljava/util/List;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->getScreenWidth(Landroid/app/Activity;)I
move-result v12
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->getScreenHeight(Landroid/app/Activity;)I
move-result v4
add-int v7, v12, v4
const/4 v8, 0x0
const/4 v5, 0x0
:goto_27
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v13
if-lt v5, v13, :cond_cc
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mImageLoaderView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$6(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
move-result-object v14
invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;
iget-object v13, v13, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;->url:Ljava/lang/String;
invoke-virtual {v14, v13}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V
:try_end_40
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_40} :catch_f0
:goto_40
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkIV:Landroid/widget/ImageView;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$2(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/ImageView;
move-result-object v13
invoke-virtual {v13}, Landroid/widget/ImageView;->clearAnimation()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkView:Landroid/view/View;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$3(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/view/View;
move-result-object v13
const/16 v14, 0x8
invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$5(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/order/model/Campaign$Info;
move-result-object v13
iget-object v13, v13, Lcom/pinguo/camera360/order/model/Campaign$Info;->shareInfo:Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;
if-eqz v13, :cond_f6
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$5(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/order/model/Campaign$Info;
move-result-object v13
iget-object v13, v13, Lcom/pinguo/camera360/order/model/Campaign$Info;->shareInfo:Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;
iget-object v10, v13, Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;->shareTitle:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$5(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/order/model/Campaign$Info;
move-result-object v13
iget-object v13, v13, Lcom/pinguo/camera360/order/model/Campaign$Info;->shareInfo:Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;
iget-object v1, v13, Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;->shareDes:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$5(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/order/model/Campaign$Info;
move-result-object v13
iget-object v13, v13, Lcom/pinguo/camera360/order/model/Campaign$Info;->shareInfo:Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;
iget-object v11, v13, Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;->shareUrl:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#calls: Lcom/pinguo/camera360/order/ShareForCouponActivity;->showProgressDialog()V
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$7(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$0(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/Button;
move-result-object v13
const/4 v14, 0x0
invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->val$thumbArray:[B
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
invoke-static {v10, v1, v11, v13, v14}, Lcom/pinguo/share/local/LocalWXShare;->sendImageToFriendsForOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/Activity;)Z
move-result v9
if-nez v9, :cond_cb
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
const v14, 0x7f0803a2
const/4 v15, 0x0
invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v13
invoke-virtual {v13}, Landroid/widget/Toast;->show()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#calls: Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$1(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$0(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/Button;
move-result-object v13
const/4 v14, 0x1
invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V
:goto_cb
:cond_cb
return-void
:try_start_cc
:cond_cc
invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;
iget v13, v13, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;->height:I
sub-int/2addr v13, v4
invoke-static {v13}, Ljava/lang/Math;->abs(I)I
move-result v14
invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;
iget v13, v13, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;->width:I
sub-int/2addr v13, v12
invoke-static {v13}, Ljava/lang/Math;->abs(I)I
:try_end_e5
.catch Ljava/lang/Exception; {:try_start_cc .. :try_end_e5} :catch_f0
move-result v13
add-int v2, v14, v13
if-ge v2, v7, :cond_ec
move v7, v2
move v8, v5
:cond_ec
add-int/lit8 v5, v5, 0x1
goto/16 :goto_27
:catch_f0
move-exception v3
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_40
:cond_f6
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
const v14, 0x7f0803a2
const/4 v15, 0x0
invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v13
invoke-virtual {v13}, Landroid/widget/Toast;->show()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#calls: Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$1(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-static {v13}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$0(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/Button;
move-result-object v13
const/4 v14, 0x1
invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V
goto :goto_cb
.end method
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/pinguo/camera360/order/model/Campaign$Info;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;->onSuccess(Lcom/pinguo/camera360/order/model/Campaign$Info;)V
return-void
.end method