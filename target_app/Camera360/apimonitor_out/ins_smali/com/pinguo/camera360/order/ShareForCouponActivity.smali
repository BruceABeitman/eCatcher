.class public Lcom/pinguo/camera360/order/ShareForCouponActivity;
.super Landroid/app/Activity;
.source "ShareForCouponActivity.java"
.implements Landroid/view/View$OnClickListener;
.field public static final ORDER_SHARE_REQUEST:I = 0x64
.field private static final TAG:Ljava/lang/String;
.field private mCampaign:Lcom/pinguo/camera360/order/model/Campaign;
.field private mCampaignInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
.field private mCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
.field private mCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
.field private mFinishR:Ljava/lang/Runnable;
.field private mHandler:Landroid/os/Handler;
.field private mImageLoaderView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
.field private mLoadingDialogShowing:Z
.field private mNetworkIV:Landroid/widget/ImageView;
.field  mNetworkRefreshAnim:Landroid/view/animation/Animation;
.field private mNetworkView:Landroid/view/View;
.field private mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mShareBtn:Landroid/widget/Button;
.field private mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
.field private mWxWrapper:Lcom/pinguo/camera360/order/model/WXTimelineWrapper;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/ShareForCouponActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/pinguo/camera360/order/ShareForCouponActivity$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity$1;-><init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
iput-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mFinishR:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
return-void
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/order/ShareForCouponActivity;Lcom/pinguo/camera360/order/model/Coupon$Info;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->onResult(Lcom/pinguo/camera360/order/model/Coupon$Info;)V
return-void
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/order/ShareForCouponActivity;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mLoadingDialogShowing:Z
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkIV:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/order/ShareForCouponActivity;Lcom/pinguo/camera360/order/model/Campaign$Info;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/order/model/Campaign$Info;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mImageLoaderView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->showProgressDialog()V
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/order/ShareForCouponActivity;Lcom/pinguo/camera360/order/model/Coupon$Info;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/order/model/Coupon$Info;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
return-object v0
.end method
.method private cancelProgressDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
:cond_14
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mLoadingDialogShowing:Z
return-void
.end method
.method private checkWX()Z
.registers 9
const v2, 0x7f0801d5
const v3, 0x7f0801d4
const/4 v7, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mWxWrapper:Lcom/pinguo/camera360/order/model/WXTimelineWrapper;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;->isWXAppInstalled()Z
move-result v0
if-nez v0, :cond_2f
const v1, 0x7f080363
new-instance v4, Lcom/pinguo/camera360/order/ShareForCouponActivity$4;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity$4;-><init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
new-instance v5, Lcom/pinguo/camera360/order/ShareForCouponActivity$5;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity$5;-><init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
move-object v0, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v6, v7, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
move v0, v7
:goto_2e
return v0
:cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mWxWrapper:Lcom/pinguo/camera360/order/model/WXTimelineWrapper;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;->isTimelineSupported()Z
move-result v0
if-nez v0, :cond_57
const v1, 0x7f080365
new-instance v4, Lcom/pinguo/camera360/order/ShareForCouponActivity$6;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity$6;-><init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
new-instance v5, Lcom/pinguo/camera360/order/ShareForCouponActivity$7;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity$7;-><init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
move-object v0, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v6, v7, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
move v0, v7
goto :goto_2e
:cond_57
const/4 v0, 0x1
goto :goto_2e
.end method
.method public static getScreenHeight(Landroid/app/Activity;)I
.registers 4
const/4 v1, 0x0
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I
return v1
.end method
.method public static getScreenWidth(Landroid/app/Activity;)I
.registers 4
const/4 v1, 0x0
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
return v1
.end method
.method private initAnim()V
.registers 3
const v1, 0x7f040006
invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;
new-instance v0, Landroid/view/animation/LinearInterpolator;
invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;
invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
return-void
.end method
.method private loadCampaign(Z)V
.registers 4
if-eqz p1, :cond_5
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->showProgressDialog()V
:cond_5
new-instance v0, Lcom/pinguo/camera360/order/model/Campaign;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/order/model/Campaign;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaign:Lcom/pinguo/camera360/order/model/Campaign;
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaignInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaignInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_16
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaign:Lcom/pinguo/camera360/order/model/Campaign;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Campaign;->getInfo()Lcom/pinguo/lib/os/AsyncFuture;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaignInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaignInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
new-instance v1, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;-><init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V
return-void
.end method
.method private onResult(Lcom/pinguo/camera360/order/model/Coupon$Info;)V
.registers 7
const/4 v2, 0x0
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
if-eqz p1, :cond_2e
const-string/jumbo v1, "coupon"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const/4 v1, -0x1
invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->setResult(ILandroid/content/Intent;)V
const v1, 0x7f08039f
invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
:goto_1c
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mHandler:Landroid/os/Handler;
iget-object v2, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mFinishR:Ljava/lang/Runnable;
const-wide/16 v3, 0x514
invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
sget-object v1, Lcom/pinguo/camera360/order/ShareForCouponActivity;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onResult"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_2e
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->setResult(I)V
goto :goto_1c
.end method
.method private sendWXTimeline()V
.registers 12
const v10, 0x7f0803a2
const/4 v9, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f0201f2
invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v1
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v8, 0x5f
invoke-virtual {v1, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v4
iget-object v7, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
if-nez v7, :cond_43
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->showProgressDialog()V
iget-object v7, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaignInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v7, :cond_30
iget-object v7, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaignInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
const/4 v8, 0x1
invoke-interface {v7, v8}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_30
iget-object v7, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaign:Lcom/pinguo/camera360/order/model/Campaign;
invoke-virtual {v7}, Lcom/pinguo/camera360/order/model/Campaign;->getInfo()Lcom/pinguo/lib/os/AsyncFuture;
move-result-object v7
iput-object v7, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaignInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
iget-object v7, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaignInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
new-instance v8, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;
invoke-direct {v8, p0, v4}, Lcom/pinguo/camera360/order/ShareForCouponActivity$8;-><init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;[B)V
invoke-interface {v7, v8}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V
:goto_42
:cond_42
return-void
:cond_43
iget-object v7, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
iget-object v7, v7, Lcom/pinguo/camera360/order/model/Campaign$Info;->shareInfo:Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;
if-eqz v7, :cond_6c
iget-object v7, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
iget-object v7, v7, Lcom/pinguo/camera360/order/model/Campaign$Info;->shareInfo:Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;
iget-object v5, v7, Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;->shareTitle:Ljava/lang/String;
iget-object v7, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
iget-object v7, v7, Lcom/pinguo/camera360/order/model/Campaign$Info;->shareInfo:Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;
iget-object v2, v7, Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;->shareDes:Ljava/lang/String;
iget-object v7, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
iget-object v7, v7, Lcom/pinguo/camera360/order/model/Campaign$Info;->shareInfo:Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;
iget-object v6, v7, Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;->shareUrl:Ljava/lang/String;
invoke-static {v5, v2, v6, v4, p0}, Lcom/pinguo/share/local/LocalWXShare;->sendImageToFriendsForOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/Activity;)Z
move-result v3
if-nez v3, :cond_42
invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v7
invoke-virtual {v7}, Landroid/widget/Toast;->show()V
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
goto :goto_42
:cond_6c
invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v7
invoke-virtual {v7}, Landroid/widget/Toast;->show()V
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
goto :goto_42
.end method
.method private showProgressDialog()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
new-instance v1, Lcom/pinguo/camera360/order/ShareForCouponActivity$10;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity$10;-><init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
iput-boolean v2, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mLoadingDialogShowing:Z
goto :goto_d
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 4
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
return-void
.end method
.method public onBackPressed()V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
if-eqz v1, :cond_19
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string/jumbo v1, "coupon"
iget-object v2, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const/4 v1, -0x1
invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->setResult(ILandroid/content/Intent;)V
:goto_15
invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
return-void
:cond_19
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->setResult(I)V
goto :goto_15
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/order/ShareForCouponActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
sparse-switch v1, :sswitch_data_3e
:goto_8
:cond_8
const-string v1, " - Lcom/pinguo/camera360/order/ShareForCouponActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_9
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportShareFree()V
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->checkWX()Z
move-result v1
if-eqz v1, :cond_8
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->sendWXTimeline()V
goto :goto_8
:sswitch_16
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
if-eqz v1, :cond_2f
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string/jumbo v1, "coupon"
iget-object v2, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const/4 v1, -0x1
invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->setResult(ILandroid/content/Intent;)V
:goto_2b
invoke-virtual {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->finish()V
goto :goto_8
:cond_2f
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->setResult(I)V
goto :goto_2b
:sswitch_33
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkIV:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
invoke-direct {p0, v3}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->loadCampaign(Z)V
goto :goto_8
:sswitch_data_3e
.sparse-switch
0x7f0a02de -> :sswitch_16
0x7f0a0399 -> :sswitch_33
0x7f0a03a0 -> :sswitch_9
.end sparse-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/pinguo/camera360/order/ShareForCouponActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v4, 0x8
const/4 v3, 0x1
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f030098
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->setContentView(I)V
const v1, 0x7f0a02df
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f080366
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
const v1, 0x7f0a02de
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a0398
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkView:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkView:Landroid/view/View;
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
const v1, 0x7f0a0399
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkIV:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkIV:Landroid/widget/ImageView;
invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->initAnim()V
const v1, 0x7f0a03a0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V
const v1, 0x7f0a039f
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
iput-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mImageLoaderView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v1
sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v1
sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v1
invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mImageLoaderView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mImageLoaderView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
new-instance v2, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;-><init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageLoadingListener(Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
new-instance v1, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mWxWrapper:Lcom/pinguo/camera360/order/model/WXTimelineWrapper;
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V
invoke-direct {p0, v3}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->loadCampaign(Z)V
const-string v1, " - Lcom/pinguo/camera360/order/ShareForCouponActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/order/ShareForCouponActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_a
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaignInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCampaignInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_13
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mFinishR:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/order/ShareForCouponActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/order/event/WXTimelineResultEvent;)V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x1
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
sget-object v0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "WXTimelineResultEvent code = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p1, Lcom/pinguo/camera360/order/event/WXTimelineResultEvent;->code:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p1, Lcom/pinguo/camera360/order/event/WXTimelineResultEvent;->code:I
if-nez v0, :cond_50
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
invoke-direct {p0, v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->onResult(Lcom/pinguo/camera360/order/model/Coupon$Info;)V
:goto_2e
return-void
:cond_2f
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->showProgressDialog()V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
invoke-interface {v0, v3}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_3b
invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->createShareCoupon()Lcom/pinguo/lib/os/AsyncFuture;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
new-instance v1, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;-><init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V
goto :goto_2e
:cond_50
iget v0, p1, Lcom/pinguo/camera360/order/event/WXTimelineResultEvent;->code:I
const/4 v1, -0x2
if-ne v0, v1, :cond_5b
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
goto :goto_2e
:cond_5b
const v0, 0x7f0803a2
invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
goto :goto_2e
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/order/ShareForCouponActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
iget-boolean v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity;->mLoadingDialogShowing:Z
if-eqz v0, :cond_a
invoke-direct {p0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->showProgressDialog()V
:cond_a
const-string v1, " - Lcom/pinguo/camera360/order/ShareForCouponActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method