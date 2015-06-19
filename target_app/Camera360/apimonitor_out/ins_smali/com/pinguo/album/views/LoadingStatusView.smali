.class public Lcom/pinguo/album/views/LoadingStatusView;
.super Landroid/widget/RelativeLayout;
.source "LoadingStatusView.java"
.implements Landroid/view/View$OnClickListener;
.field public static final TAG:Ljava/lang/String;
.field private mFailLoadLayout:Landroid/view/View;
.field private mFailTv:Landroid/widget/TextView;
.field private mNodataLoadLayout:Landroid/view/View;
.field private mOnRetryClickListener:Lcom/pinguo/album/views/LoadingStatusView$OnRetryClickListener;
.field private mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mRetryIv:Landroid/widget/ImageButton;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/album/views/LoadingStatusView;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/views/LoadingStatusView;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/pinguo/album/views/LoadingStatusView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0}, Lcom/pinguo/album/views/LoadingStatusView;->init()V
return-void
.end method
.method private init()V
.registers 1
return-void
.end method
.method public clearRetryLoadingAnimation()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mRetryIv:Landroid/widget/ImageButton;
invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V
return-void
.end method
.method public hide()V
.registers 2
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/pinguo/album/views/LoadingStatusView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
:cond_19
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/views/LoadingStatusView; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
const v1, 0x7f0a004d
if-ne v0, v1, :cond_12
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mOnRetryClickListener:Lcom/pinguo/album/views/LoadingStatusView$OnRetryClickListener;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mOnRetryClickListener:Lcom/pinguo/album/views/LoadingStatusView$OnRetryClickListener;
invoke-interface {v0}, Lcom/pinguo/album/views/LoadingStatusView$OnRetryClickListener;->onRetryClick()V
:cond_12
const-string v1, " - Lcom/pinguo/album/views/LoadingStatusView; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onFinishInflate()V
.registers 3
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a004c
invoke-virtual {p0, v0}, Lcom/pinguo/album/views/LoadingStatusView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailLoadLayout:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailLoadLayout:Landroid/view/View;
const v1, 0x7f0a004d
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mRetryIv:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailLoadLayout:Landroid/view/View;
const v1, 0x7f0a004e
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailTv:Landroid/widget/TextView;
const v0, 0x7f0a004f
invoke-virtual {p0, v0}, Lcom/pinguo/album/views/LoadingStatusView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mNodataLoadLayout:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mRetryIv:Landroid/widget/ImageButton;
invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public setOnRetryClickListener(Lcom/pinguo/album/views/LoadingStatusView$OnRetryClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/LoadingStatusView;->mOnRetryClickListener:Lcom/pinguo/album/views/LoadingStatusView$OnRetryClickListener;
return-void
.end method
.method public showRetryLoadingAnimation(Landroid/content/Context;)V
.registers 5
const v2, 0x7f040006
invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
new-instance v0, Landroid/view/animation/LinearInterpolator;
invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
iget-object v2, p0, Lcom/pinguo/album/views/LoadingStatusView;->mRetryIv:Landroid/widget/ImageButton;
invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method public showStatusLoadFail()V
.registers 3
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/album/views/LoadingStatusView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailLoadLayout:Landroid/view/View;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailLoadLayout:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mRetryIv:Landroid/widget/ImageButton;
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailTv:Landroid/widget/TextView;
const v1, 0x7f080180
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
:cond_1a
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
:cond_2e
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mNodataLoadLayout:Landroid/view/View;
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mNodataLoadLayout:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_39
return-void
.end method
.method public showStatusLoadFail(I)V
.registers 4
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/album/views/LoadingStatusView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailLoadLayout:Landroid/view/View;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailLoadLayout:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mRetryIv:Landroid/widget/ImageButton;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailTv:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V
:cond_18
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
:cond_2c
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mNodataLoadLayout:Landroid/view/View;
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mNodataLoadLayout:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_37
return-void
.end method
.method public showStatusLoading()V
.registers 4
const/16 v1, 0x8
const/4 v2, 0x0
invoke-virtual {p0, v2}, Lcom/pinguo/album/views/LoadingStatusView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailLoadLayout:Landroid/view/View;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailLoadLayout:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_f
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mNodataLoadLayout:Landroid/view/View;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mNodataLoadLayout:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_18
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_25
:goto_24
return-void
:cond_25
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {p0}, Lcom/pinguo/album/views/LoadingStatusView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
goto :goto_24
.end method
.method public showStatusNoData()V
.registers 3
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/album/views/LoadingStatusView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mNodataLoadLayout:Landroid/view/View;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mNodataLoadLayout:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_d
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
:cond_21
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailLoadLayout:Landroid/view/View;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/pinguo/album/views/LoadingStatusView;->mFailLoadLayout:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_2c
return-void
.end method