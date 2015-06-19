.class public abstract Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
.super Ljava/lang/Object;
.source "BaseController.java"
.field private static final HIDE_VIEW_FINISH:I = 0x2
.field private static final SHOW_VIEW_FINISH:I = 0x1
.field protected isFinish:Z
.field protected mContext:Landroid/content/Context;
.field private mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mHandler:Landroid/os/Handler;
.field protected mIsMain:Z
.field private mLastHideAnimation:Landroid/view/animation/Animation;
.field private mLastShowAnimation:Landroid/view/animation/Animation;
.field protected mRootView:Landroid/view/View;
.field private mTransDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mIsMain:Z
new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController$1;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/BaseController;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mHandler:Landroid/os/Handler;
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mRootView:Landroid/view/View;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/controller/BaseController;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method protected backMainViewFinish()V
.registers 1
return-void
.end method
.method protected backMainViewForButtom(Landroid/view/View;Landroid/view/View;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->changeAnimationForButtom(Landroid/view/View;Landroid/view/View;Z)V
return-void
.end method
.method protected backMainViewForTop(Landroid/view/View;Landroid/view/View;)V
.registers 4
const/16 v0, 0x8
invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
const/4 v0, 0x0
invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public changeAnimationForButtom(Landroid/view/View;Landroid/view/View;Z)V
.registers 11
const-wide/16 v5, 0xc8
const/4 v4, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mLastShowAnimation:Landroid/view/animation/Animation;
if-eqz v2, :cond_c
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mLastShowAnimation:Landroid/view/animation/Animation;
invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V
:cond_c
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mLastHideAnimation:Landroid/view/animation/Animation;
if-eqz v2, :cond_15
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mLastHideAnimation:Landroid/view/animation/Animation;
invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V
:cond_15
const/4 v2, 0x0
invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;
const/high16 v2, 0x42c8
invoke-direct {v1, v4, v4, v2, v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;-><init>(FFFF)V
invoke-virtual {v1, v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->setDuration(J)V
invoke-virtual {v1, p3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->setEnterChild(Z)V
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mLastShowAnimation:Landroid/view/animation/Animation;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mLastShowAnimation:Landroid/view/animation/Animation;
new-instance v3, Lcom/pinguo/camera360/IDPhoto/controller/BaseController$2;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController$2;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/BaseController;)V
invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mLastShowAnimation:Landroid/view/animation/Animation;
invoke-virtual {p2, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;
const/high16 v2, 0x42dc
invoke-direct {v0, v4, v4, v4, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;-><init>(FFFF)V
invoke-virtual {v0, v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->setDuration(J)V
invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->setView(Landroid/view/View;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mLastHideAnimation:Landroid/view/animation/Animation;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mLastHideAnimation:Landroid/view/animation/Animation;
new-instance v3, Lcom/pinguo/camera360/IDPhoto/controller/BaseController$3;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController$3;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/BaseController;)V
invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mLastHideAnimation:Landroid/view/animation/Animation;
invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method public enterChildView()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mIsMain:Z
return-void
.end method
.method protected enterChildViewFinish()V
.registers 1
return-void
.end method
.method protected enterChildViewForButtom(Landroid/view/View;Landroid/view/View;)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, p1, p2, v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->changeAnimationForButtom(Landroid/view/View;Landroid/view/View;Z)V
return-void
.end method
.method protected enterChildViewForTop(Landroid/view/View;Landroid/view/View;)V
.registers 4
const/16 v0, 0x8
invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
const/4 v0, 0x0
invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public finish()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->isFinish:Z
return-void
.end method
.method protected hideProcessDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
:cond_9
return-void
.end method
.method public hideProcessDialogInCenter()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mTransDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mTransDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
:cond_9
return-void
.end method
.method public isFinish()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->isFinish:Z
return v0
.end method
.method public isMain()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mIsMain:Z
return v0
.end method
.method protected isProcessShowing()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
goto :goto_5
.end method
.method protected isTransProcessShowing()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mTransDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mTransDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
goto :goto_5
.end method
.method public keyBack()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mIsMain:Z
return-void
.end method
.method public keyDone()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mIsMain:Z
return-void
.end method
.method public onPause()V
.registers 1
return-void
.end method
.method public onResume()V
.registers 1
return-void
.end method
.method protected showProcessDialog(Landroid/content/Context;I)V
.registers 4
const/4 v0, 0x0
invoke-static {p1, p2, v0, v0}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showProgressDialog(Landroid/content/Context;IZI)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method
.method public showProcessDialogInCenter()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showProgressDialogTransparent(Landroid/content/Context;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mTransDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mTransDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
return-void
.end method