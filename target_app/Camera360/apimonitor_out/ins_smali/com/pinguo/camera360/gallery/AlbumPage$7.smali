.class  Lcom/pinguo/camera360/gallery/AlbumPage$7;
.super Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.source "AlbumPage.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/AlbumPage$7;)Lcom/pinguo/camera360/gallery/AlbumPage;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
return-object v0
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 10
const/4 v7, 0x0
iget v3, p1, Landroid/os/Message;->what:I
packed-switch v3, :pswitch_data_c6
new-instance v3, Ljava/lang/AssertionError;
iget v4, p1, Landroid/os/Message;->what:I
invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(I)V
throw v3
:pswitch_e
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iget-object v3, v3, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/DataManager;->getActivityMode()I
move-result v3
const/4 v4, 0x5
if-ne v3, v4, :cond_25
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iget v4, p1, Landroid/os/Message;->arg1:I
#calls: Lcom/pinguo/camera360/gallery/AlbumPage;->pickPhotoToReturn(I)V
invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$20(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
:goto_24
return-void
:cond_25
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iget v4, p1, Landroid/os/Message;->arg1:I
#calls: Lcom/pinguo/camera360/gallery/AlbumPage;->pickPhotoToBrowse(I)V
invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$21(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
goto :goto_24
:pswitch_2d
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->isFinishing()Z
move-result v3
if-nez v3, :cond_52
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncProgressDlg:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$22(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
if-eqz v3, :cond_52
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncProgressDlg:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$22(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v3
if-eqz v3, :cond_52
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncProgressDlg:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$22(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
:cond_52
iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v2, Ljava/util/ArrayList;
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iget-object v3, v3, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-direct {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iget-object v3, v3, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0801ee
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v7
invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
const v3, 0x7f080291
new-instance v4, Lcom/pinguo/camera360/gallery/AlbumPage$7$1;
invoke-direct {v4, p0, v2}, Lcom/pinguo/camera360/gallery/AlbumPage$7$1;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage$7;Ljava/util/ArrayList;)V
invoke-virtual {v0, v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v3
const v4, 0x7f080292
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v1
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iget-object v3, v3, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getOrientation()I
move-result v3
invoke-virtual {v1, v3, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
invoke-virtual {v1, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
goto/16 :goto_24
:pswitch_aa
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iget-object v4, v4, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const v5, 0x7f0802c4
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/gallery/RootActivity;->showProgressCancel(I)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v4
#setter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncProgressDlg:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$23(Lcom/pinguo/camera360/gallery/AlbumPage;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncProgressDlg:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$22(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
invoke-virtual {v3, v7}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
goto/16 :goto_24
nop
:pswitch_data_c6
.packed-switch 0x1
:pswitch_e
:pswitch_2d
:pswitch_aa
.end packed-switch
.end method