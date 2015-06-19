.class  Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
.super Landroid/os/Handler;
.source "WebSiteShareMainActivity.java"
.field final synthetic this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
return-object v0
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 22
move-object/from16 v0, p1
iget v0, v0, Landroid/os/Message;->what:I
move/from16 v17, v0
sparse-switch v17, :sswitch_data_470
invoke-static {}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$12()Ljava/lang/String;
move-result-object v17
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "Invalid message:"
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p1
iget v0, v0, Landroid/os/Message;->what:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:goto_26
:cond_26
return-void
:sswitch_27
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
const/16 v18, 0x0
#setter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->bindPressed:Z
invoke-static/range {v17 .. v18}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity;Z)V
goto :goto_26
:sswitch_33
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
const/16 v18, 0x1
#setter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->isShared:Z
invoke-static/range {v17 .. v18}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$1(Lcom/pinguo/share/website/WebSiteShareMainActivity;Z)V
goto :goto_26
:sswitch_3f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;
move-object/from16 v17, v0
if-eqz v17, :cond_26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;
move-object/from16 v17, v0
move-object/from16 v0, p1
iget v0, v0, Landroid/os/Message;->arg1:I
move/from16 v18, v0
invoke-virtual/range {v17 .. v18}, Lcom/pinguo/share/ui/ShareProcessBar;->setProgress(I)V
goto :goto_26
:sswitch_63
move-object/from16 v0, p1
iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v10, Ljava/util/Map;
invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v17
invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v8
:cond_71
:goto_71
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v17
if-eqz v17, :cond_26
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v14
check-cast v14, Lcom/pinguo/share/website/ShareResultBean;
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->isSuccess()Z
move-result v17
if-eqz v17, :cond_89
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->isReBind()Z
move-result v17
if-eqz v17, :cond_96
:cond_89
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v17
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v17, v0
invoke-static/range {v17 .. v17}, Lcom/pinguo/share/ShareAccess;->statShareNowFail(Ljava/lang/String;)V
:cond_96
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->isSuccess()Z
move-result v17
if-eqz v17, :cond_71
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v17
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v17, v0
invoke-static/range {v17 .. v17}, Lcom/pinguo/share/ShareAccess;->statShareNowSuccess(Ljava/lang/String;)V
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->isRefresh()Z
move-result v17
if-eqz v17, :cond_71
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v17
move-object/from16 v0, v17
invoke-static {v0, v14}, Lcom/pinguo/share/bind/BindManager;->refreshLocalWebSiteToken(Landroid/content/Context;Lcom/pinguo/share/website/ShareResultBean;)V
goto :goto_71
:sswitch_bf
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isFinishing()Z
move-result v17
if-nez v17, :cond_26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->isShowDialog:Z
invoke-static/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$2(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Z
move-result v17
if-eqz v17, :cond_26
:try_start_d7
move-object/from16 v0, p1
iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v10, Ljava/util/Map;
new-instance v12, Ljava/util/ArrayList;
invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
new-instance v11, Ljava/util/ArrayList;
invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
new-instance v15, Ljava/util/ArrayList;
invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v17
invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v8
:cond_f4
:goto_f4
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v17
if-nez v17, :cond_1bd
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
move-object/from16 v0, v17
#calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->isFirstShareSuccess(Ljava/util/List;)Z
invoke-static {v0, v15}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$3(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/util/List;)Z
move-result v7
invoke-interface {v12}, Ljava/util/List;->size()I
move-result v17
if-nez v17, :cond_112
invoke-interface {v15}, Ljava/util/List;->size()I
move-result v17
if-eqz v17, :cond_1a2
:cond_112
new-instance v2, Lcom/pinguo/share/website/ShareResultsAdapter;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-direct {v2, v0, v10, v7}, Lcom/pinguo/share/website/ShareResultsAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;Z)V
if-eqz v7, :cond_22d
new-instance v17, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$1;
move-object/from16 v0, v17
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$1;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)V
move-object/from16 v0, v17
invoke-virtual {v2, v0}, Lcom/pinguo/share/website/ShareResultsAdapter;->setCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
:goto_12f
new-instance v3, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-direct {v3, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v17, 0x7f08007d
move/from16 v0, v17
invoke-virtual {v3, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-result-object v17
const/16 v18, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v0, v2, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
const/4 v4, 0x0
move-object/from16 v0, p1
iget v0, v0, Landroid/os/Message;->arg1:I
move/from16 v17, v0
invoke-interface {v10}, Ljava/util/Map;->size()I
move-result v18
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_236
const v17, 0x7f080070
new-instance v18, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$2;
move-object/from16 v0, v18
move-object/from16 v1, p0
invoke-direct {v0, v1, v15, v10, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$2;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;Ljava/util/List;Ljava/util/Map;Z)V
move/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v3, v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V
:goto_17a
new-instance v17, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;
move-object/from16 v0, v17
move-object/from16 v1, p0
invoke-direct {v0, v1, v15, v10, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;Ljava/util/List;Ljava/util/Map;Z)V
move-object/from16 v0, v17
invoke-virtual {v4, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowOrientation:I
invoke-static/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$7(Lcom/pinguo/share/website/WebSiteShareMainActivity;)I
move-result v17
const/16 v18, 0x0
move/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v4, v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setOrientation(IZ)V
const/16 v17, 0x0
move/from16 v0, v17
invoke-virtual {v4, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setCancelable(Z)V
:cond_1a2
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v17
if-eqz v17, :cond_26
const/16 v17, 0x4
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1, v11}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V
:try_end_1b5
.catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_1b5} :catch_1b7
goto/16 :goto_26
:catch_1b7
move-exception v5
invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_26
:try_start_1bd
:cond_1bd
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v14
check-cast v14, Lcom/pinguo/share/website/ShareResultBean;
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->isSuccess()Z
move-result v17
if-nez v17, :cond_1d2
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v17
move-object/from16 v0, v17
invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1d2
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->isSuccess()Z
move-result v17
if-eqz v17, :cond_1de
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->isReBind()Z
move-result v17
if-eqz v17, :cond_1eb
:cond_1de
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v17
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v17, v0
invoke-static/range {v17 .. v17}, Lcom/pinguo/share/ShareAccess;->statShareNowFail(Ljava/lang/String;)V
:cond_1eb
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->isReBind()Z
move-result v17
if-eqz v17, :cond_1fa
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v17
move-object/from16 v0, v17
invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1fa
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->isSuccess()Z
move-result v17
if-eqz v17, :cond_f4
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v17
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v17, v0
invoke-static/range {v17 .. v17}, Lcom/pinguo/share/ShareAccess;->statShareNowSuccess(Ljava/lang/String;)V
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v17
move-object/from16 v0, v17
invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v14}, Lcom/pinguo/share/website/ShareResultBean;->isRefresh()Z
move-result v17
if-eqz v17, :cond_f4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v17
move-object/from16 v0, v17
invoke-static {v0, v14}, Lcom/pinguo/share/bind/BindManager;->refreshLocalWebSiteToken(Landroid/content/Context;Lcom/pinguo/share/website/ShareResultBean;)V
goto/16 :goto_f4
:cond_22d
const/16 v17, 0x0
move-object/from16 v0, v17
invoke-virtual {v2, v0}, Lcom/pinguo/share/website/ShareResultsAdapter;->setCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
goto/16 :goto_12f
:cond_236
const v17, 0x7f080076
new-instance v18, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;
move-object/from16 v0, v18
move-object/from16 v1, p0
invoke-direct {v0, v1, v7, v15, v12}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;ZLjava/util/List;Ljava/util/List;)V
move/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v3, v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-result-object v17
const v18, 0x7f08006f
new-instance v19, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;
move-object/from16 v0, v19
move-object/from16 v1, p0
invoke-direct {v0, v1, v7, v15}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;ZLjava/util/List;)V
invoke-virtual/range {v17 .. v19}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V
:try_end_261
.catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_261} :catch_1b7
goto/16 :goto_17a
:sswitch_263
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isFinishing()Z
move-result v17
if-nez v17, :cond_26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;
move-object/from16 v17, v0
if-eqz v17, :cond_28c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/ui/ShareProcessBar;->dismiss()V
:cond_28c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSiteAdapter:Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;
invoke-static/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$8(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->notifyDataSetChanged()V
new-instance v13, Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
const v18, 0x7f080073
invoke-virtual/range {v17 .. v18}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getString(I)Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v17, ":\n"
move-object/from16 v0, v17
invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p1
iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v9, Ljava/util/List;
invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v17
:goto_2bf
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z
move-result v18
if-nez v18, :cond_30f
:try_start_2c5
new-instance v17, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v18, v0
invoke-direct/range {v17 .. v18}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-virtual/range {v17 .. v18}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-result-object v17
const v18, 0x7f080070
new-instance v19, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$6;
invoke-direct/range {v19 .. v20}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$6;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)V
invoke-virtual/range {v17 .. v19}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-result-object v17
const v18, 0x7f08006f
const/16 v19, 0x0
invoke-virtual/range {v17 .. v19}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowOrientation:I
invoke-static/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$7(Lcom/pinguo/share/website/WebSiteShareMainActivity;)I
move-result v17
const/16 v18, 0x0
move/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v4, v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setOrientation(IZ)V
:try_end_307
.catch Ljava/lang/Exception; {:try_start_2c5 .. :try_end_307} :catch_309
goto/16 :goto_26
:catch_309
move-exception v5
invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_26
:cond_30f
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Lcom/pinguo/share/website/WebSiteInfoBean;
move-object/from16 v0, v16
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string/jumbo v19, "\n"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2bf
:sswitch_328
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isFinishing()Z
move-result v17
if-nez v17, :cond_26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$10(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v17
if-eqz v17, :cond_35d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$10(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v17
if-eqz v17, :cond_35d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$10(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->hide()V
:cond_35d
new-instance v6, Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
const-class v18, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v17, "push"
move-object/from16 v0, p1
iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v17, "theme"
const/16 v18, 0x1
move-object/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string/jumbo v17, "path"
new-instance v18, Ljava/lang/StringBuilder;
sget-object v19, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v19, "/"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v19, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mActivityTxs:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static/range {v19 .. v19}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$11(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v19
invoke-static/range {v19 .. v19}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v17, "big_path"
new-instance v18, Ljava/lang/StringBuilder;
sget-object v19, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v19, "/"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v19, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mActivityTxs:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static/range {v19 .. v19}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$11(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewUrl()Ljava/lang/String;
move-result-object v19
invoke-static/range {v19 .. v19}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v17, "id"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v18, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mActivityTxs:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static/range {v18 .. v18}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$11(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v18
invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v17, "activity_id"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v18, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mActivityTxs:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static/range {v18 .. v18}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$11(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getActivity()I
move-result v18
move-object/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v17, "tag"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v18, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mActivityTxs:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static/range {v18 .. v18}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$11(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTag()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v17, "description"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v18, v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mActivityTxs:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static/range {v18 .. v18}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$11(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getDescription()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-object/from16 v17, v0
const/16 v18, 0x1
move-object/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v0, v6, v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto/16 :goto_26
nop
:sswitch_data_470
.sparse-switch
0x0 -> :sswitch_27
0x1 -> :sswitch_33
0x2 -> :sswitch_3f
0x3 -> :sswitch_bf
0x4 -> :sswitch_263
0x5 -> :sswitch_63
0x10011 -> :sswitch_328
.end sparse-switch
.end method