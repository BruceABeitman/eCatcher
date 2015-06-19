.class  Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5;
.super Ljava/lang/Object;
.source "IDPhotoMakeListFragment.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCartLayBtnClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
invoke-virtual {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const-class v3, Lcom/pinguo/camera360/order/ShareForCouponActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/16 v2, 0x3ea
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->startActivityForResult(Landroid/content/Intent;I)V
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method