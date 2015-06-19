.class  Lcom/pinguo/share/bind/BindActivity$3;
.super Landroid/os/Handler;
.source "BindActivity.java"
.field final synthetic this$0:Lcom/pinguo/share/bind/BindActivity;
.method constructor <init>(Lcom/pinguo/share/bind/BindActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 18
move-object/from16 v0, p1
iget v1, v0, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_21c
:goto_7
:cond_7
return-void
:pswitch_8
new-instance v8, Landroid/util/DisplayMetrics;
invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v1}, Lcom/pinguo/share/bind/BindActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v1
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
new-instance v1, Lcom/pinguo/share/bind/BindAdapter;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v2}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->onClick:Landroid/view/View$OnClickListener;
invoke-static {v3}, Lcom/pinguo/share/bind/BindActivity;->access$0(Lcom/pinguo/share/bind/BindActivity;)Landroid/view/View$OnClickListener;
move-result-object v3
iget v4, v8, Landroid/util/DisplayMetrics;->density:F
const/4 v5, 0x0
const/4 v6, 0x1
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v7}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v7
invoke-static {v7}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/share/bind/DispatchBean;->getArrayForList()Ljava/util/List;
move-result-object v7
invoke-direct/range {v1 .. v7}, Lcom/pinguo/share/bind/BindAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;FLandroid/widget/CompoundButton$OnCheckedChangeListener;ILjava/util/List;)V
#setter for: Lcom/pinguo/share/bind/BindActivity;->mBaseAdapter:Landroid/widget/BaseAdapter;
invoke-static {v15, v1}, Lcom/pinguo/share/bind/BindActivity;->access$1(Lcom/pinguo/share/bind/BindActivity;Landroid/widget/BaseAdapter;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mListView:Landroid/widget/ListView;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$2(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I
move-result v1
if-nez v1, :cond_8a
new-instance v9, Landroid/widget/ImageView;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/AbsListView$LayoutParams;
const/4 v2, -0x1
const/4 v3, 0x1
invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v1}, Lcom/pinguo/share/bind/BindActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f07001b
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mListView:Landroid/widget/ListView;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$2(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v9}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
:cond_8a
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mListView:Landroid/widget/ListView;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$2(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/ListView;
move-result-object v1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mBaseAdapter:Landroid/widget/BaseAdapter;
invoke-static {v2}, Lcom/pinguo/share/bind/BindActivity;->access$3(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/BaseAdapter;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
if-eqz v1, :cond_ca
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_ca
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v1}, Lcom/pinguo/share/bind/BindActivity;->isFinishing()Z
move-result v1
if-nez v1, :cond_ca
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->dismiss()V
:cond_ca
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mListView:Landroid/widget/ListView;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$2(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/ListView;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$11(Lcom/pinguo/share/bind/BindActivity;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/share/ShareAccess;->isLogin(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_7
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->isShareInto:Z
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$12(Lcom/pinguo/share/bind/BindActivity;)Z
move-result v1
if-nez v1, :cond_7
new-instance v11, Ljava/util/Random;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-direct {v11, v1, v2}, Ljava/util/Random;-><init>(J)V
invoke-virtual {v11}, Ljava/util/Random;->nextLong()J
move-result-wide v12
new-instance v14, Landroid/content/Intent;
const-string/jumbo v1, "com.pinguo.camera360.share.bind.FetchCloudBindInfoService"
invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "CMD"
const/4 v2, 0x0
invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v1, "rannum"
invoke-virtual {v14, v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$11(Lcom/pinguo/share/bind/BindActivity;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$8(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/bind/MyBroadCastReceiver;
move-result-object v1
invoke-virtual {v1, v12, v13}, Lcom/pinguo/share/bind/MyBroadCastReceiver;->setRanNum(J)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;
invoke-static {v2}, Lcom/pinguo/share/bind/BindActivity;->access$8(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/bind/MyBroadCastReceiver;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/share/bind/BindActivity;->registerFetchBroadCast(Lcom/pinguo/share/bind/MyBroadCastReceiver;)V
goto/16 :goto_7
:pswitch_137
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
if-eqz v1, :cond_164
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_164
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v1}, Lcom/pinguo/share/bind/BindActivity;->isFinishing()Z
move-result v1
if-nez v1, :cond_164
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->dismiss()V
:cond_164
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
const v3, 0x7f08006c
invoke-virtual {v2, v3}, Lcom/pinguo/share/bind/BindActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
goto/16 :goto_7
:pswitch_178
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
if-eqz v1, :cond_1a5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_1a5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v1}, Lcom/pinguo/share/bind/BindActivity;->isFinishing()Z
move-result v1
if-nez v1, :cond_1a5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->dismiss()V
:cond_1a5
move-object/from16 v0, p1
iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
if-nez v1, :cond_1c8
const/4 v10, 0x0
:goto_1ac
if-eqz v10, :cond_7
invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_7
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-static {v1, v10}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mBaseAdapter:Landroid/widget/BaseAdapter;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$3(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/BaseAdapter;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
goto/16 :goto_7
:cond_1c8
move-object/from16 v0, p1
iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v10
goto :goto_1ac
:pswitch_1d1
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
if-eqz v1, :cond_1fe
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_1fe
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v1}, Lcom/pinguo/share/bind/BindActivity;->isFinishing()Z
move-result v1
if-nez v1, :cond_1fe
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->dismiss()V
:cond_1fe
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
const v3, 0x7f08003d
invoke-virtual {v2, v3}, Lcom/pinguo/share/bind/BindActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
goto/16 :goto_7
:pswitch_212
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/bind/BindActivity$3;->this$0:Lcom/pinguo/share/bind/BindActivity;
const/4 v2, 0x1
#setter for: Lcom/pinguo/share/bind/BindActivity;->isCanClick:Z
invoke-static {v1, v2}, Lcom/pinguo/share/bind/BindActivity;->access$6(Lcom/pinguo/share/bind/BindActivity;Z)V
goto/16 :goto_7
:pswitch_data_21c
.packed-switch 0x1
:pswitch_8
:pswitch_137
:pswitch_178
:pswitch_1d1
:pswitch_212
.end packed-switch
.end method