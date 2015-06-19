.class public Lcom/pinguo/camera360/sony/SonyGuideActivity;
.super Landroid/app/Activity;
.source "SonyGuideActivity.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
.field private static final COUPON_RESOURCE_KEY:Ljava/lang/String; = "android_sony_activity_coupon_201409"
.field private static final MESSAGE_CONNECT_TIMEOUT:I = 0x2
.field private static final MESSAGE_CREATE_WIFI_DIALOG:I = 0x5
.field private static final MESSAGE_FINIDH_ME:I = 0xa
.field private static final MESSAGE_HIDE_SCAN_DIALOG:I = 0x8
.field private static final MESSAGE_SCAN_TIMEOUT:I = 0x1
.field private static final MESSAGE_SHOW_NO_DEVICE:I = 0x7
.field private static final MESSAGE_SHOW_PASSWORD_ERROR:I = 0xb
.field private static final MESSAGE_SHOW_RETRY_DIALOG:I = 0x9
.field private static final MESSAGE_SHOW_SCAN:I = 0x4
.field private static final MESSAGE_SSDP_RETRY:I = 0x3
.field private static final MESSAGE_WIFI_CONNECTING_DIALOG:I = 0x6
.field private static final SONY_ABOUT_ME_URL:Ljava/lang/String; = "http://www.sonystyle.com.cn/products/cyber-shot/qx/combine/qx_mobile0807/index.htm"
.field private static final SONY_CLUB_URL:Ljava/lang/String; = "http://fans.camera360.com/forum.php?mod=viewthread&tid=8906"
.field private static final SONY_CUPON_URL:Ljava/lang/String; = "http://yyz.m.taobao.com/yyz/page_view.htm?url=page-782731205-843101963"
.field private static final SONY_GUIDE_URL_AU:Ljava/lang/String; = "http://www.sony.com.au/productcategory/di-cybershot-lens-style-camera"
.field private static final SONY_GUIDE_URL_DE:Ljava/lang/String; = "http://www.sony.de/hub/smart-objektiv"
.field private static final SONY_GUIDE_URL_EN:Ljava/lang/String; = "http://store.sony.com/cyber-shot-qx/cat-27-catid-All-Cyber-shot-Q-Series-Cameras"
.field private static final SONY_GUIDE_URL_HK:Ljava/lang/String; = "http://www.sony.com.hk/products/cybershot/index_lens.jsp?cid=1309_camera360_cybershot_qx_debut"
.field private static final SONY_GUIDE_URL_JA:Ljava/lang/String; = "http://www.sony.jp/cyber-shot/qx/"
.field private static final SONY_GUIDE_URL_KR:Ljava/lang/String; = "http://store.sony.co.kr/"
.field private static final SONY_GUIDE_URL_MA:Ljava/lang/String; = "http://www.sony-asia.com/productcategory/di-cybershot-lens-style-camera"
.field private static final SONY_GUIDE_URL_NZ:Ljava/lang/String; = "http://www.sony.co.nz/productcategory/di-cybershot-lens-style-camera"
.field private static final SONY_GUIDE_URL_SI:Ljava/lang/String; = "http://www.sony.com.sg/productcategory/di-cybershot-lens-style-camera"
.field private static final SONY_GUIDE_URL_TH:Ljava/lang/String; = "http://www.sony-asia.com/productcategory/di-cybershot-lens-style-camera"
.field private static final SONY_GUIDE_URL_TW:Ljava/lang/String; = "http://store.sony.com.tw/is-bin/INTERSHOP.enfinity/WFS/Sony-SonyStyle-Site/zh_TW/-/TWD/ViewStandardCatalog-Browse?CategoryDomainName=Sony-SonyStyle-OnlineStore&CategoryName=pi-dsc"
.field private static final SONY_GUIDE_URL_UK:Ljava/lang/String; = "http://www.sony.co.uk/hub/lens-style-camera"
.field private static final SONY_GUIDE_URL_ZH:Ljava/lang/String; = "http://www.sonystyle.com.cn/mobile_app/promotion/qx_series/index.htm"
.field private static final TAG:Ljava/lang/String; = "SonyGuideActivity"
.field private static final TAOBAO_PACKAGE:Ljava/lang/String; = "com.taobao.taobao"
.field private static final TMALL_PACKAGE:Ljava/lang/String; = "com.tmall.wireless"
.field private static final WIFI_DIALOG_ID:I = 0x1
.field private static final WIFI_DIALOG_IDS:I = 0x2
.field private mAccessPonit:Lcom/pinguo/camera360/sony/wifi/AccessPoint;
.field private mAccessPonits:Ljava/util/List;
.field private mBtnClick:Z
.field private mHandler:Landroid/os/Handler;
.field private mNoSonyDevice:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.field private mPause:Z
.field private mPreviousRootView:Landroid/view/View;
.field private mPreviousSonyAboutMe:Landroid/widget/ImageView;
.field private mPreviousSonyConnectCamera:Landroid/widget/ImageView;
.field private mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mRetry:I
.field private mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.field private mRootView:Landroid/view/View;
.field private mSaveWifi:Z
.field private mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mSonyAboutMe:Landroid/widget/TextView;
.field private mSonyClub:Landroid/widget/TextView;
.field private mSonyConnectCamera:Landroid/widget/ImageView;
.field private mSonyCoupon:Landroid/widget/ImageView;
.field private mSonyCouponApi:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
.field private mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
.field private mStartSonyCamera:Z
.field private mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.field private mWifiDialogId:I
.field private mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mBtnClick:Z
iput v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetry:I
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mStartSonyCamera:Z
iput v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogId:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSaveWifi:Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->ssdpSonyDevice()V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissScanDialog()V
return-void
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/sony/SonyGuideActivity;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->hideSoftInputMethod(Landroid/view/View;)V
return-void
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/sony/wifi/AccessPoint;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mAccessPonit:Lcom/pinguo/camera360/sony/wifi/AccessPoint;
return-object v0
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mBtnClick:Z
return v0
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
return-object v0
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/sony/SonyGuideActivity;Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
return-void
.end method
.method static synthetic access$16(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mAccessPonits:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$17(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mNoSonyDevice:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
return-object v0
.end method
.method static synthetic access$18(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissRetryDialog()V
return-void
.end method
.method static synthetic access$19(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissNoDevice()V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->showRetryDialog()V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/sony/SonyGuideActivity;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->showToast(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissWifiDialog()V
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissWifiDialogList()V
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissConnectingDialog()V
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->startSonyCamera()V
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/sony/SonyGuideActivity;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mBtnClick:Z
return-void
.end method
.method private dismissConnectingDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->hide()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->cancel()V
:cond_16
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method
.method private dismissNoDevice()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mNoSonyDevice:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mNoSonyDevice:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mNoSonyDevice:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->hide()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mNoSonyDevice:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->cancel()V
:cond_16
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method
.method private dismissRetryDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->hide()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->cancel()V
:cond_16
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
return-void
.end method
.method private dismissScanDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->hide()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->cancel()V
:cond_16
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method
.method private dismissViewAndRest()V
.registers 8
const/4 v6, 0x5
const/4 v5, 0x4
const/4 v4, 0x3
const/4 v3, 0x2
const/4 v2, 0x1
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->clear()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
:cond_17
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_24
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V
:cond_24
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_31
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V
:cond_31
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_3e
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V
:cond_3e
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_4b
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V
:cond_4b
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
const/4 v2, 0x6
invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_5a
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
const/4 v2, 0x6
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
:cond_5a
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
const/4 v2, 0x7
invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_69
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
const/4 v2, 0x7
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
:cond_69
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
const/16 v2, 0x9
invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_7a
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
const/16 v2, 0x9
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
:cond_7a
new-instance v0, Lcom/pinguo/camera360/sony/SonyGuideActivity$19;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$19;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private dismissWifiDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->hide()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->cancel()V
:cond_16
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
return-void
.end method
.method private dismissWifiDialogList()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->hide()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->cancel()V
:cond_16
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
return-void
.end method
.method private gotoSonyQxStore()V
.registers 7
:try_start_0
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v4
iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v4
iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v1
const/4 v0, 0x0
const-string/jumbo v4, "zh"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_42
const-string/jumbo v4, "cn"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_42
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://www.sonystyle.com.cn/mobile_app/promotion/qx_series/index.htm"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
:goto_3e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->startActivity(Landroid/content/Intent;)V
:goto_41
return-void
:cond_42
const-string/jumbo v4, "zh"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_64
const-string/jumbo v4, "tw"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_64
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://store.sony.com.tw/is-bin/INTERSHOP.enfinity/WFS/Sony-SonyStyle-Site/zh_TW/-/TWD/ViewStandardCatalog-Browse?CategoryDomainName=Sony-SonyStyle-OnlineStore&CategoryName=pi-dsc"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto :goto_3e
:cond_64
const-string/jumbo v4, "zh"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_86
const-string/jumbo v4, "hk"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_86
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://www.sony.com.hk/products/cybershot/index_lens.jsp?cid=1309_camera360_cybershot_qx_debut"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto :goto_3e
:cond_86
const-string/jumbo v4, "en"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_a8
const-string/jumbo v4, "gb"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_a8
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://www.sony.co.uk/hub/lens-style-camera"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto :goto_3e
:cond_a8
const-string/jumbo v4, "de"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_c2
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://www.sony.de/hub/smart-objektiv"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto/16 :goto_3e
:cond_c2
const-string/jumbo v4, "ja"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_dc
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://www.sony.jp/cyber-shot/qx/"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto/16 :goto_3e
:cond_dc
const-string/jumbo v4, "ko"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_ff
const-string/jumbo v4, "kr"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_ff
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://store.sony.co.kr/"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto/16 :goto_3e
:cond_ff
const-string/jumbo v4, "ms"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_122
const-string/jumbo v4, "my"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_122
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://www.sony-asia.com/productcategory/di-cybershot-lens-style-camera"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto/16 :goto_3e
:cond_122
const-string/jumbo v4, "th"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_13c
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://www.sony-asia.com/productcategory/di-cybershot-lens-style-camera"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto/16 :goto_3e
:cond_13c
const-string/jumbo v4, "en"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_15f
const-string/jumbo v4, "sg"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_15f
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://www.sony.com.sg/productcategory/di-cybershot-lens-style-camera"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto/16 :goto_3e
:cond_15f
const-string/jumbo v4, "en"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_182
const-string/jumbo v4, "au"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_182
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://www.sony.com.au/productcategory/di-cybershot-lens-style-camera"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto/16 :goto_3e
:cond_182
const-string/jumbo v4, "en"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_1a5
const-string/jumbo v4, "nz"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_1a5
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://www.sony.co.nz/productcategory/di-cybershot-lens-style-camera"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto/16 :goto_3e
:cond_1a5
new-instance v0, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
const-string/jumbo v5, "http://store.sony.com/cyber-shot-qx/cat-27-catid-All-Cyber-shot-Q-Series-Cameras"
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
:try_end_1b4
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b4} :catch_1b6
goto/16 :goto_3e
:catch_1b6
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_41
.end method
.method private hideSoftInputMethod(Landroid/view/View;)V
.registers 6
:try_start_0
const-string/jumbo v2, "input_method"
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
:try_end_11
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12
:goto_11
return-void
:catch_12
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_11
.end method
.method private init()V
.registers 3
const v0, 0x7f0a05a1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRootView:Landroid/view/View;
const v0, 0x7f0a05a0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyConnectCamera:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyConnectCamera:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a059f
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyAboutMe:Landroid/widget/TextView;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyAboutMe:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a059e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyClub:Landroid/widget/TextView;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyClub:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a059b
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyCoupon:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyCoupon:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a05a2
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mPreviousRootView:Landroid/view/View;
const v0, 0x7f0a054a
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mPreviousSonyConnectCamera:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mPreviousSonyConnectCamera:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a054b
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mPreviousSonyAboutMe:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mPreviousSonyAboutMe:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-direct {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mStartSonyCamera:Z
return-void
.end method
.method private installApp(Landroid/content/Context;Ljava/lang/String;)Z
.registers 8
const/4 v2, 0x0
const/4 v1, 0x0
:try_start_2
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_a
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_a} :catch_11
move-result-object v1
if-eqz v1, :cond_f
const/4 v2, 0x1
:goto_e
return v2
:cond_f
const/4 v2, 0x0
goto :goto_e
:catch_11
move-exception v0
const/4 v2, 0x0
goto :goto_e
.end method
.method private saveWifiInstance()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->getInstance()Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->reset()V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->setSaveWifiInstance(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->getConnectedWifiInfo()Landroid/net/wifi/WifiInfo;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->setConnectWifiInfo(Landroid/net/wifi/WifiInfo;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->getSonyWifiInfo()Landroid/net/wifi/WifiInfo;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->setSonyWifiInfo(Landroid/net/wifi/WifiInfo;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->getWifiIsOpen()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->setWifiIsOpen(Z)V
return-void
.end method
.method private showRetryDialog()V
.registers 9
const/4 v7, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
new-instance v4, Lcom/pinguo/camera360/sony/SonyGuideActivity$13;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$13;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
new-instance v5, Lcom/pinguo/camera360/sony/SonyGuideActivity$14;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$14;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
new-instance v6, Lcom/pinguo/camera360/sony/SonyGuideActivity$15;
invoke-direct {v6, p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$15;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
const v1, 0x7f0800ee
const v2, 0x7f080300
const v3, 0x7f080327
move-object v0, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v7, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetryAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
goto :goto_d
.end method
.method private showToast(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
return-void
.end method
.method private ssdpSonyDevice()V
.registers 9
const-wide/16 v6, 0x3e8
const/4 v5, 0x5
const/4 v4, 0x0
const/4 v3, 0x3
const-string/jumbo v2, "connectivity"
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v1
if-eqz v1, :cond_56
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v2
if-eqz v2, :cond_33
new-instance v2, Lcom/pinguo/camera360/sony/SonyGuideActivity$5;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$5;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity$5;->start()V
iput v4, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetry:I
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z
move-result v2
if-eqz v2, :cond_32
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V
:goto_32
:cond_32
return-void
:cond_33
iget v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetry:I
if-gt v2, v5, :cond_43
iget v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetry:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetry:I
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
goto :goto_32
:cond_43
iput v4, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetry:I
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z
move-result v2
if-eqz v2, :cond_52
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V
:cond_52
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->wifiConnectFail(Z)V
goto :goto_32
:cond_56
iget v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetry:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetry:I
iget v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetry:I
if-gt v2, v5, :cond_66
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
goto :goto_32
:cond_66
iput v4, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRetry:I
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z
move-result v2
if-eqz v2, :cond_75
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V
:cond_75
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->wifiConnectFail(Z)V
goto :goto_32
.end method
.method private startC360WebView(Ljava/lang/String;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/lib/ui/WebViewActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "web_view_url"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private startSonyCamera()V
.registers 4
const/4 v2, 0x3
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mStartSonyCamera:Z
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
:cond_11
new-instance v0, Lcom/pinguo/camera360/sony/SonyGuideActivity$4;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$4;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->runOnUiThread(Ljava/lang/Runnable;)V
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSaveWifi:Z
if-eqz v1, :cond_20
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->saveWifiInstance()V
:cond_20
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
const/16 v2, 0xa
invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-void
.end method
.method private startSpecifyWebView(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
:try_start_0
new-instance v1, Landroid/content/Intent;
const-string/jumbo v2, "android.intent.action.VIEW"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "android.intent.category.BROWSABLE"
invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->startActivity(Landroid/content/Intent;)V
:goto_1b
:try_end_1b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c
return-void
:catch_1c
move-exception v0
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->startC360WebView(Ljava/lang/String;)V
goto :goto_1b
.end method
.method public checkWifiDialogShow()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public checkWifiDialogsShow()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public createWifiConfigDialog(ILcom/pinguo/camera360/sony/wifi/AccessPoint;Ljava/util/List;Z)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.registers 7
iput p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogId:I
iput-object p2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mAccessPonit:Lcom/pinguo/camera360/sony/wifi/AccessPoint;
iput-object p3, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mAccessPonits:Ljava/util/List;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
const/4 v0, 0x0
return-object v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/sony/SonyGuideActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
const/4 v1, 0x0
invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V
const/4 v1, 0x1
const/16 v2, 0x1f4
invoke-static {p1, v1, v2}, Lcom/pinguo/lib/util/ViewUtils;->setDelayedClickable(Landroid/view/View;ZI)V
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraSonyLayClick(I)V
sparse-switch v0, :sswitch_data_50
:cond_14
:goto_14
const-string v1, " - Lcom/pinguo/camera360/sony/SonyGuideActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_15
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->getStartConnectWifi()Z
move-result v1
if-nez v1, :cond_14
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->startWifi()V
goto :goto_14
:sswitch_23
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->gotoSonyQxStore()V
goto :goto_14
:sswitch_27
const-string/jumbo v1, "http://www.sonystyle.com.cn/products/cyber-shot/qx/combine/qx_mobile0807/index.htm"
invoke-direct {p0, v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->startC360WebView(Ljava/lang/String;)V
goto :goto_14
:sswitch_2e
const-string/jumbo v1, "http://fans.camera360.com/forum.php?mod=viewthread&tid=8906"
invoke-direct {p0, v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->startC360WebView(Ljava/lang/String;)V
goto :goto_14
:sswitch_35
const-string/jumbo v1, "com.taobao.taobao"
invoke-direct {p0, p0, v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->installApp(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_48
const-string/jumbo v1, "http://yyz.m.taobao.com/yyz/page_view.htm?url=page-782731205-843101963"
const-string/jumbo v2, "com.taobao.taobao"
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->startSpecifyWebView(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_14
:cond_48
const-string/jumbo v1, "http://yyz.m.taobao.com/yyz/page_view.htm?url=page-782731205-843101963"
invoke-direct {p0, v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->startC360WebView(Ljava/lang/String;)V
goto :goto_14
nop
:sswitch_data_50
.sparse-switch
0x7f0a054a -> :sswitch_15
0x7f0a054b -> :sswitch_23
0x7f0a059b -> :sswitch_35
0x7f0a059e -> :sswitch_2e
0x7f0a059f -> :sswitch_27
0x7f0a05a0 -> :sswitch_15
.end sparse-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 14
const-string v1, " + Lcom/pinguo/camera360/sony/SonyGuideActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v11, 0x8
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v9, 0x7f0300fe
invoke-virtual {p0, v9}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->setContentView(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->init()V
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
if-eqz v1, :cond_1e
const-string/jumbo v9, "savewifi"
const/4 v10, 0x1
invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v9
iput-boolean v9, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSaveWifi:Z
:cond_1e
iget-object v9, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->setContext(Landroid/content/Context;)V
const-string/jumbo v9, "wifi"
invoke-virtual {p0, v9}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/net/wifi/WifiManager;
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getMainLooper()Landroid/os/Looper;
move-result-object v4
new-instance v8, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-direct {v8, v7, v4}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V
iget-object v9, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v9, v8}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->setWifiScanner(Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;)V
iget-object v9, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v9, p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->setWifiModeListener(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;)V
iget-object v9, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->create()V
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->getInstance()Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;
move-result-object v5
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getResources()Landroid/content/res/Resources;
move-result-object v9
invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v9
iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getResources()Landroid/content/res/Resources;
move-result-object v9
invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v9
iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
const-string/jumbo v9, "zh"
invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_7c
const-string/jumbo v9, "cn"
invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_7c
const/4 v2, 0x1
:cond_7c
invoke-virtual {v5, p0}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->getShowCouponPage(Landroid/content/Context;)Z
move-result v6
if-eqz v6, :cond_99
if-eqz v2, :cond_99
new-instance v9, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
const-string/jumbo v10, "android_sony_activity_coupon_201409"
invoke-direct {v9, p0, v10}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v9, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyCouponApi:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
iget-object v9, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyCouponApi:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
new-instance v10, Lcom/pinguo/camera360/sony/SonyGuideActivity$1;
invoke-direct {v10, p0, v5}, Lcom/pinguo/camera360/sony/SonyGuideActivity$1;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;)V
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->get(Lcom/pinguo/lib/os/AsyncResult;)V
:cond_98
:goto_98
const-string v1, " - Lcom/pinguo/camera360/sony/SonyGuideActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_99
iget-object v9, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRootView:Landroid/view/View;
invoke-virtual {v9}, Landroid/view/View;->getVisibility()I
move-result v9
if-eq v9, v11, :cond_a6
iget-object v9, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mRootView:Landroid/view/View;
invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V
:cond_a6
iget-object v9, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mPreviousRootView:Landroid/view/View;
invoke-virtual {v9}, Landroid/view/View;->getVisibility()I
move-result v9
if-eqz v9, :cond_98
iget-object v9, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mPreviousRootView:Landroid/view/View;
const/4 v10, 0x0
invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V
goto :goto_98
.end method
.method protected onDestroy()V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/sony/SonyGuideActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyCouponApi:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
if-eqz v2, :cond_a
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyCouponApi:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
const/4 v3, 0x1
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->cancel(Z)Z
:cond_a
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->destroy()V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
iget-boolean v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mStartSonyCamera:Z
if-nez v2, :cond_29
invoke-static {}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->getInstance()Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
move-result-object v1
const-string/jumbo v2, "wifi"
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->recoverWifiState(Landroid/net/wifi/WifiManager;)V
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->clear()V
:cond_29
const-string v1, " - Lcom/pinguo/camera360/sony/SonyGuideActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/sony/SonyGuideActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->pause()V
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mStartSonyCamera:Z
if-nez v0, :cond_c
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissViewAndRest()V
:cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mPause:Z
invoke-super {p0}, Landroid/app/Activity;->onPause()V
const-string v1, " - Lcom/pinguo/camera360/sony/SonyGuideActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/sony/SonyGuideActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->resume()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mPause:Z
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissViewAndRest()V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
const-string v1, " - Lcom/pinguo/camera360/sony/SonyGuideActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public removeHandleMessage(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V
return-void
.end method
.method public sendMessageDelayed(IJ)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
return-void
.end method
.method public sendMessageForWhat(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-void
.end method
.method public showConfigWifiDialog()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.registers 24
const-string/jumbo v3, "layout_inflater"
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v17
check-cast v17, Landroid/view/LayoutInflater;
const/4 v3, 0x0
move-object/from16 v0, p0
iput-boolean v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mBtnClick:Z
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogId:I
packed-switch v3, :pswitch_data_16e
const/4 v3, 0x0
:goto_18
return-object v3
:pswitch_19
const v3, 0x7f030129
const/4 v5, 0x0
move-object/from16 v0, v17
invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v4
const v3, 0x7f0a0614
invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v22
check-cast v22, Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mAccessPonit:Lcom/pinguo/camera360/sony/wifi/AccessPoint;
iget-object v3, v3, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
move-object/from16 v0, v22
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v3, 0x7f0a0616
invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v19
check-cast v19, Lcom/pinguo/camera360/login/EditTextWithLine;
new-instance v18, Landroid/graphics/Paint;
invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V
sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
move-object/from16 v0, v18
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
const v3, -0x93928f
move-object/from16 v0, v18
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/EditTextWithLine;->setCustomPaint(Landroid/graphics/Paint;)V
const v3, 0x7f0a0617
invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v20
check-cast v20, Landroid/widget/LinearLayout;
const v3, 0x7f0a0618
invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v21
check-cast v21, Landroid/widget/ImageView;
new-instance v3, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;
move-object/from16 v0, p0
move-object/from16 v1, v21
move-object/from16 v2, v19
invoke-direct {v3, v0, v1, v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Landroid/widget/ImageView;Lcom/pinguo/camera360/login/EditTextWithLine;)V
move-object/from16 v0, v20
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v7, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-direct {v7, v0, v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Lcom/pinguo/camera360/login/EditTextWithLine;)V
new-instance v8, Lcom/pinguo/camera360/sony/SonyGuideActivity$8;
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-direct {v8, v0, v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity$8;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Lcom/pinguo/camera360/login/EditTextWithLine;)V
const v5, 0x7f0800f3
const v6, 0x7f08028c
const/4 v9, 0x0
const/4 v10, 0x0
move-object/from16 v3, p0
invoke-static/range {v3 .. v10}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogHasViewAndTwoButton(Landroid/content/Context;Landroid/view/View;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IZ)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v3
move-object/from16 v0, p0
iput-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
new-instance v5, Lcom/pinguo/camera360/sony/SonyGuideActivity$9;
move-object/from16 v0, p0
invoke-direct {v5, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$9;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
const/4 v5, 0x0
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
const/4 v5, -0x1
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getButton(I)Landroid/widget/Button;
move-result-object v3
invoke-virtual {v3}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;
move-result-object v14
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
const/4 v5, -0x1
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getButton(I)Landroid/widget/Button;
move-result-object v3
const/4 v5, 0x0
invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
const/4 v5, -0x1
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getButton(I)Landroid/widget/Button;
move-result-object v3
const v5, -0x93928f
invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextColor(I)V
new-instance v3, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;
move-object/from16 v0, p0
invoke-direct {v3, v0, v14}, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Landroid/content/res/ColorStateList;)V
move-object/from16 v0, v19
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/login/EditTextWithLine;->addTextChangedListener(Landroid/text/TextWatcher;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto/16 :goto_18
:pswitch_f9
new-instance v13, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;
move-object/from16 v0, p0
invoke-direct {v13, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
new-instance v12, Lcom/pinguo/camera360/sony/SonyGuideActivity$12;
move-object/from16 v0, p0
invoke-direct {v12, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$12;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
new-instance v11, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-object/from16 v0, p0
invoke-direct {v11, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v5, 0x7f0800f6
invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v11, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mAccessPonits:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
new-array v15, v3, [Ljava/lang/String;
const/16 v16, 0x0
:goto_128
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mAccessPonits:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
move/from16 v0, v16
if-lt v0, v3, :cond_15a
const/4 v3, 0x0
invoke-virtual {v11, v15, v3, v13}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/Object;ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {v11, v12}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {v11}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v3
move-object/from16 v0, p0
iput-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
const/4 v5, 0x0
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
const/4 v5, 0x0
const/4 v6, 0x0
invoke-virtual {v3, v5, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto/16 :goto_18
:cond_15a
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mAccessPonits:Ljava/util/List;
move/from16 v0, v16
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/sony/wifi/AccessPoint;
iget-object v3, v3, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
aput-object v3, v15, v16
add-int/lit8 v16, v16, 0x1
goto :goto_128
nop
:pswitch_data_16e
.packed-switch 0x1
:pswitch_19
:pswitch_f9
.end packed-switch
.end method
.method public showConnectingDialog()V
.registers 5
const/4 v3, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v1, :cond_e
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_e
:goto_d
return-void
:cond_e
new-instance v0, Lcom/pinguo/camera360/sony/SonyGuideActivity$17;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$17;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
const v1, 0x7f0800f0
const/4 v2, 0x1
invoke-static {p0, v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showProgressDialog(Landroid/content/Context;IZI)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
goto :goto_d
.end method
.method public showNoDeviceFound()V
.registers 8
const/4 v6, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mNoSonyDevice:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mNoSonyDevice:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
const v1, 0x7f0800ed
const v2, 0x7f0802c5
const/16 v3, -0x3e7
new-instance v4, Lcom/pinguo/camera360/sony/SonyGuideActivity$18;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$18;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
const/4 v5, 0x0
move-object v0, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mNoSonyDevice:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mNoSonyDevice:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mNoSonyDevice:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
goto :goto_d
.end method
.method public showScanDialog()V
.registers 5
const/4 v3, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v1, :cond_e
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_e
:goto_d
return-void
:cond_e
new-instance v0, Lcom/pinguo/camera360/sony/SonyGuideActivity$16;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$16;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
const v1, 0x7f0800ef
const/4 v2, 0x1
invoke-static {p0, v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showProgressDialog(Landroid/content/Context;IZI)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mScannerDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
goto :goto_d
.end method
.method public startSearch()V
.registers 13
new-instance v5, Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;
const-string/jumbo v10, "ST: urn:schemas-sony-com:service:ScalarWebAPI:1"
invoke-direct {v5, v10}, Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;-><init>(Ljava/lang/String;)V
const/4 v7, 0x0
const-string/jumbo v10, "wifi"
invoke-virtual {p0, v10}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/net/wifi/WifiManager;
:try_start_12
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/WifiUtil;->getNetworkInterface(Landroid/net/wifi/WifiManager;)Ljava/net/NetworkInterface;
move-result-object v4
const/4 v3, 0x0
const/4 v2, 0x0
move-object v8, v7
:goto_19
const/4 v10, 0x3
if-lt v2, v10, :cond_33
move-object v7, v8
:goto_1d
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v10
if-eqz v10, :cond_78
new-instance v10, Ljava/lang/IllegalArgumentException;
const-string/jumbo v11, "location not found"
invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v10
:catchall_2c
:try_end_2c
.catchall {:try_start_12 .. :try_end_2c} :catchall_2c
move-exception v10
if-eqz v7, :cond_32
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->close()V
:cond_32
throw v10
:cond_33
:try_start_33
new-instance v7, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;
invoke-direct {v7, v4}, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;-><init>(Ljava/net/NetworkInterface;)V
:try_start_38
:try_end_38
.catchall {:try_start_33 .. :try_end_38} :catchall_6a
.catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_56
invoke-virtual {v5}, Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v7, v10}, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->send(Ljava/lang/String;)V
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->receive()Ljava/net/DatagramPacket;
move-result-object v0
const-string/jumbo v10, "LOCATION"
invoke-static {v0, v10}, Lcom/pinguo/camera360/sony/ssdp/SSDPParserHeader;->parseHeaderValue(Ljava/net/DatagramPacket;Ljava/lang/String;)Ljava/lang/String;
:try_end_49
.catchall {:try_start_38 .. :try_end_49} :catchall_90
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_49} :catch_92
move-result-object v3
if-eqz v7, :cond_4f
:try_start_4c
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->close()V
:cond_4f
:try_end_4f
.catchall {:try_start_4c .. :try_end_4f} :catchall_2c
.catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_51
const/4 v7, 0x0
goto :goto_1d
:catch_51
move-exception v1
:try_start_52
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_55
.catchall {:try_start_52 .. :try_end_55} :catchall_2c
goto :goto_1d
:catch_56
move-exception v1
move-object v7, v8
:goto_58
:try_start_58
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_5b
.catchall {:try_start_58 .. :try_end_5b} :catchall_90
if-eqz v7, :cond_60
:try_start_5d
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->close()V
:try_end_60
.catchall {:try_start_5d .. :try_end_60} :catchall_2c
.catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_65
:cond_60
const/4 v7, 0x0
:goto_61
add-int/lit8 v2, v2, 0x1
move-object v8, v7
goto :goto_19
:catch_65
move-exception v1
:try_start_66
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_69
.catchall {:try_start_66 .. :try_end_69} :catchall_2c
goto :goto_61
:catchall_6a
move-exception v10
move-object v7, v8
:goto_6c
if-eqz v7, :cond_71
:try_start_6e
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->close()V
:cond_71
:try_end_71
.catchall {:try_start_6e .. :try_end_71} :catchall_2c
.catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_73
const/4 v7, 0x0
:goto_72
:try_start_72
throw v10
:catch_73
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_72
:cond_78
invoke-static {v3}, Lcom/pinguo/camera360/sony/model/ServerDeviceInstance;->createServerDevice(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/sony/model/ServerDeviceInstance;->getServerDevice()Lcom/pinguo/camera360/sony/model/ServerDevice;
move-result-object v6
if-nez v6, :cond_8a
new-instance v10, Ljava/lang/IllegalArgumentException;
const-string/jumbo v11, "Empty server device"
invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v10
:cond_8a
:try_end_8a
.catchall {:try_start_72 .. :try_end_8a} :catchall_2c
if-eqz v7, :cond_8f
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->close()V
:cond_8f
return-void
:catchall_90
move-exception v10
goto :goto_6c
:catch_92
move-exception v1
goto :goto_58
.end method
.method public wifiConnectFail(Z)V
.registers 8
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
const/4 v2, 0x4
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->setWifiState(I)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_16
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V
:cond_16
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V
:cond_23
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_30
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V
:cond_30
new-instance v0, Lcom/pinguo/camera360/sony/SonyGuideActivity$3;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$3;-><init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->runOnUiThread(Ljava/lang/Runnable;)V
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSaveWifi:Z
if-eqz v1, :cond_3f
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->saveWifiInstance()V
:cond_3f
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mPause:Z
if-nez v1, :cond_4d
if-eqz p1, :cond_4d
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
const/16 v2, 0xb
invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:goto_4c
:cond_4c
return-void
:cond_4d
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mPause:Z
if-nez v1, :cond_4c
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
const/16 v2, 0x9
invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_4c
.end method
.method public wifiConnectSuccess()V
.registers 5
const/4 v3, 0x2
const/4 v2, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->setWifiState(I)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V
:cond_15
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
:cond_22
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->ssdpSonyDevice()V
return-void
.end method