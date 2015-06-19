.class public Lcom/pinguo/camera360/sony/SonyCameraFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "SonyCameraFragment.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;
.implements Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;
.field private static final CONNECT_TIME_OUT:J = 0x4e20L
.field private static final MESSAGE_BASE:I = 0x0
.field private static final MESSAGE_DISMISS_RETRY_DIALOG:I = 0x63
.field private static final MESSAGE_DISMISS_WIFI_CONNECT:I = 0x66
.field private static final MESSAGE_PRESS_HOME:I = 0x68
.field private static final MESSAGE_SHOW_RETRY_DIALOG:I = 0x62
.field private static final MESSAGE_WIFI_CONNECT:I = 0x65
.field private static final MESSAGE_WIFI_CONNECT_TIMEOUT:I = 0x67
.field private static final PICTURE_STATUS_GETDATA:I = 0x1
.field private static final PICTURE_STATUS_IDLE:I = 0x0
.field private static final PICTURE_STATUS_SHOW_PREVIEW:I = 0x2
.field private static final REQUEST_CODE_SONY_GUIDE:I = 0x3e8
.field private static final RESTORE_TIME_INDICATOR_MSG:I = 0x64
.field private static final TAG:Ljava/lang/String;
.field private mDisconnetWifi:Z
.field private mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
.field private mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
.field private mKeyVolumeLongPress:Z
.field private mLiveOritation:I
.field private mLiveviewRect:Landroid/graphics/Rect;
.field private mLiveviewSurface:Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;
.field private mMyCenterReceiver:Landroid/content/BroadcastReceiver;
.field private mOpenWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mPictureStatus:I
.field private mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
.field private mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.field private mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
.field private mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
.field private mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
.field private mTargetServer:Lcom/pinguo/camera360/sony/model/ServerDevice;
.field private mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
.field  mVolumePressDelayHandler:Landroid/os/Handler;
.field  mVolumePressDelayRunnable:Ljava/lang/Runnable;
.field private mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveviewRect:Landroid/graphics/Rect;
iput v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mPictureStatus:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mDisconnetWifi:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mVolumePressDelayHandler:Landroid/os/Handler;
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$1;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;
iput v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveOritation:I
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mKeyVolumeLongPress:Z
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$2;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mMyCenterReceiver:Landroid/content/BroadcastReceiver;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
return-object v0
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/model/SonyCamera;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->showRetryDialog()V
return-void
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveviewRect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/sony/SonyCameraFragment;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mPictureStatus:I
return-void
.end method
.method static synthetic access$16(Lcom/pinguo/camera360/sony/SonyCameraFragment;Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$17(Lcom/pinguo/camera360/sony/SonyCameraFragment;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->prepareActZoomButtonsUi(Z)V
return-void
.end method
.method static synthetic access$18(Lcom/pinguo/camera360/sony/SonyCameraFragment;Ljava/lang/Runnable;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->runInUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic access$19(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->refreshUi()V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->updateMyCenterNewMsgView()V
return-void
.end method
.method static synthetic access$20(Lcom/pinguo/camera360/sony/SonyCameraFragment;Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
return-void
.end method
.method static synthetic access$21(Lcom/pinguo/camera360/sony/SonyCameraFragment;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mDisconnetWifi:Z
return-void
.end method
.method static synthetic access$22(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mDisconnetWifi:Z
return v0
.end method
.method static synthetic access$23(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->reconnectWifi()V
return-void
.end method
.method static synthetic access$3()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->showTouchTap()V
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->showMessageForRetryDialog()V
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->dismissRetryDialog()V
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->showConnectDialog()V
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->dismissConnectDialog()V
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
return-object v0
.end method
.method private actZoom(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private checkTimerAndStop()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->isTimerRunning()Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->stopTimer()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->reset()V
:cond_18
return-void
.end method
.method private dismissAllDialog()V
.registers 2
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$22;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$22;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->runInUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private dismissConnectDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mOpenWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mOpenWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mOpenWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->hide()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mOpenWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
:cond_16
return-void
.end method
.method private dismissRetryDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->hide()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V
:cond_16
return-void
.end method
.method private getHomes()Ljava/util/List;
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
new-instance v0, Landroid/content/Intent;
const-string/jumbo v5, "android.intent.action.MAIN"
invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "android.intent.category.HOME"
invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
const/high16 v5, 0x1
invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_25
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_2c
return-object v1
:cond_2c
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/content/pm/ResolveInfo;
iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_25
.end method
.method private hidePicturePreview()V
.registers 3
new-instance v0, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->setFromTag(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method private hideTouchTap()V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;->haveTouchScreen()Z
move-result v1
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;->setHaveTouchScreen(Z)V
:cond_1c
return-void
.end method
.method private prepareActZoomButtons(Z)V
.registers 3
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$15;
invoke-direct {v0, p0, p1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$15;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;Z)V
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$15;->start()V
return-void
.end method
.method private prepareActZoomButtonsUi(Z)V
.registers 7
const v4, 0x7f0a058a
const v3, 0x7f0a0588
const/16 v2, 0x8
const/4 v1, 0x0
if-eqz p1, :cond_22
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_21
return-void
:cond_22
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_21
.end method
.method private prepareFlashMode()V
.registers 1
return-void
.end method
.method private prepareZoomInOrOutEvent()V
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
const v3, 0x7f0a0589
invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
const v3, 0x7f0a058b
invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$9;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$9;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$10;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$10;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$11;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$11;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
new-instance v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$12;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$12;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
new-instance v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$13;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$13;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
new-instance v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$14;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$14;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-void
.end method
.method private reconnectWifi()V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
const/16 v1, 0x65
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->sendEmptyMessage(I)Z
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
const/16 v1, 0x67
const-wide/16 v2, 0x4e20
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->sendEmptyMessageDelayed(IJ)Z
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->reconnectWifi()V
return-void
.end method
.method private refreshUIOnMainThread()V
.registers 2
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$16;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$16;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->runInUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private refreshUi()V
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->getCameraStatus()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->getShootMode()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "still"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_32
const-string/jumbo v2, "IDLE"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_32
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->getShutterBtn()Landroid/widget/ImageButton;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V
:goto_2a
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->updateView()V
return-void
:cond_32
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->getShutterBtn()Landroid/widget/ImageButton;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V
goto :goto_2a
.end method
.method private removeSomeMessage()V
.registers 5
const/16 v3, 0x67
const/16 v2, 0x65
const/16 v1, 0x62
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->removeMessages(I)V
:cond_13
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->removeMessages(I)V
:cond_20
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->removeMessages(I)V
:cond_2d
return-void
.end method
.method private runInUiThread(Ljava/lang/Runnable;)V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_8
if-nez p1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
goto :goto_8
.end method
.method private setEnableParametersView(Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;Z)V
.registers 4
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$17;
invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/camera360/sony/SonyCameraFragment$17;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;Z)V
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->runInUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private setPostViewSize(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
const/16 v2, 0xc
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->setEnableParametersView(Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;Z)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v1, p1, p2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->setPostViewSize(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private showConnectDialog()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mOpenWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mOpenWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0800f0
const/4 v2, 0x1
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showProgressDialog(Landroid/content/Context;IZI)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mOpenWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mOpenWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mOpenWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mOpenWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
goto :goto_d
.end method
.method private showMessageForRetryDialog()V
.registers 3
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mIsPausing:Z
if-eqz v1, :cond_5
:goto_4
return-void
:cond_5
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$21;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$21;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->runInUiThread(Ljava/lang/Runnable;)V
goto :goto_4
.end method
.method private showRetryDialog()V
.registers 8
const/4 v6, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->checkTimerAndStop()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
:goto_10
return-void
:cond_11
new-instance v4, Lcom/pinguo/camera360/sony/SonyCameraFragment$18;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$18;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
new-instance v5, Lcom/pinguo/camera360/sony/SonyCameraFragment$19;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$19;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0800ee
const v2, 0x7f080327
const v3, 0x7f080329
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v6, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
goto :goto_10
.end method
.method private showTouchTap()V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;->haveTouchScreen()Z
move-result v1
if-nez v1, :cond_1c
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;->setHaveTouchScreen(Z)V
:cond_1c
return-void
.end method
.method private soundKeyDown(Ljava/lang/Enum;IZLandroid/view/KeyEvent;)V
.registers 9
sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->SHOT:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
if-ne v0, p1, :cond_17
if-nez p2, :cond_17
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mVolumePressDelayHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mVolumePressDelayHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;
const-wide/16 v2, 0xc8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_16
:cond_16
return-void
:cond_17
sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->ZOOM:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
if-ne v0, p1, :cond_24
if-nez p2, :cond_24
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mKeyVolumeLongPress:Z
invoke-virtual {p4}, Landroid/view/KeyEvent;->startTracking()V
goto :goto_16
:cond_24
sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->NONE:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
if-ne v0, p1, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
if-nez v0, :cond_36
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
:cond_36
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
invoke-virtual {v0, p3}, Lcom/pinguo/camera360/camera/model/SoundManager;->volumeAdjustment(Z)V
goto :goto_16
.end method
.method private soundKeyLongPress(Ljava/lang/Enum;IZ)V
.registers 6
sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->ZOOM:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
if-ne v0, p1, :cond_14
if-nez p2, :cond_14
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mKeyVolumeLongPress:Z
if-eqz p3, :cond_15
const-string/jumbo v0, "in"
const-string/jumbo v1, "start"
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
:goto_14
:cond_14
return-void
:cond_15
const-string/jumbo v0, "out"
const-string/jumbo v1, "start"
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_14
.end method
.method private soundKeyUp(Ljava/lang/Enum;IZ)V
.registers 6
sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->ZOOM:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
if-ne v0, p1, :cond_15
if-nez p2, :cond_15
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mKeyVolumeLongPress:Z
if-eqz v0, :cond_23
if-eqz p3, :cond_19
const-string/jumbo v0, "in"
const-string/jumbo v1, "stop"
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
:goto_15
:cond_15
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mKeyVolumeLongPress:Z
return-void
:cond_19
const-string/jumbo v0, "out"
const-string/jumbo v1, "stop"
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_15
:cond_23
if-eqz p3, :cond_2f
const-string/jumbo v0, "in"
const-string/jumbo v1, "1shot"
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_15
:cond_2f
const-string/jumbo v0, "out"
const-string/jumbo v1, "1shot"
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_15
.end method
.method private startTimerTakePicture()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->show()V
new-instance v0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-direct {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->getCountDownLimit()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->setTimerCount(I)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
new-instance v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$20;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$20;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->setTimerListener(Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->startTimer()V
return-void
.end method
.method private stopTimerTakePic()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->isTimerRunning()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->stopTimer()V
:cond_11
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->reset()V
return-void
.end method
.method private updateMyCenterNewMsgView()V
.registers 8
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-static {v5}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z
move-result v0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getUnreadFeedbackCount()I
move-result v1
if-lez v1, :cond_1c
iget-object v5, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
invoke-virtual {v5, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->updateTopMenuBarCloudPopView(I)V
:goto_1b
return-void
:cond_1c
if-eqz v0, :cond_2e
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getNewOrderCount()I
move-result v3
if-lez v3, :cond_2e
iget-object v5, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
invoke-virtual {v5, v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->updateTopMenuBarCloudPopView(I)V
goto :goto_1b
:cond_2e
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getNewMessageCount()I
move-result v2
if-lez v2, :cond_3e
iget-object v5, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
invoke-virtual {v5, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->updateTopMenuBarCloudPopView(I)V
goto :goto_1b
:cond_3e
iget-object v5, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->updateTopMenuBarCloudPopView(I)V
goto :goto_1b
.end method
.method private updateTimerUI()V
.registers 6
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSonyTimerSwitchState()Z
move-result v1
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerShotLimit()I
move-result v2
if-eqz v1, :cond_23
if-lez v2, :cond_23
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->show()V
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerShotLimit()I
move-result v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setCountDownLimit(I)V
:goto_22
return-void
:cond_23
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->hide()V
goto :goto_22
.end method
.method private updateTopMenuBar()V
.registers 7
const/4 v5, 0x0
const/4 v4, 0x1
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v2
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v3
if-eqz v3, :cond_1e
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V
sget-object v3, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I
aget v3, v3, v4
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V
:cond_1e
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSonyTimerSwitchState()Z
move-result v0
if-eqz v0, :cond_2c
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->updateTimerCamera(Z)V
:goto_2b
return-void
:cond_2c
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->updateTimerCamera(Z)V
goto :goto_2b
.end method
.method public createViewHolder(Landroid/view/View;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
.registers 3
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
invoke-direct {v0, p0, p1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;Landroid/view/View;)V
return-object v0
.end method
.method public getPictureStatusIdle()Z
.registers 3
const/4 v0, 0x1
iget v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mPictureStatus:I
if-eqz v1, :cond_a
iget v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mPictureStatus:I
if-eq v1, v0, :cond_a
const/4 v0, 0x0
:cond_a
return v0
.end method
.method public handleKeyBack(Landroid/view/KeyEvent;)Z
.registers 11
const/16 v8, 0x18
const/4 v5, 0x0
const/4 v6, 0x1
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v1
const/4 v7, 0x4
if-ne v1, v7, :cond_37
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z
move-result v7
if-eqz v7, :cond_25
iget-object v7, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
if-eqz v7, :cond_25
iget-object v7, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->isTimerRunning()Z
move-result v7
if-eqz v7, :cond_25
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->stopTimerTakePic()V
:goto_24
return v6
:cond_25
iget-object v7, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v7, v7, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->isMenuBarActivated()Z
move-result v7
if-eqz v7, :cond_56
iget-object v5, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v5, v5, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v5}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->hideOtherSettingPopMenu()V
goto :goto_24
:cond_37
const/16 v7, 0x19
if-eq v1, v7, :cond_3d
if-ne v1, v8, :cond_56
:cond_3d
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundKeyMode()Ljava/lang/String;
move-result-object v4
const-class v7, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
invoke-static {v7, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v2
if-ne v8, v1, :cond_52
move v5, v6
:cond_52
invoke-virtual {p0, v0, v5, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->soundKeyAction(Ljava/lang/Enum;ZI)V
goto :goto_24
:cond_56
move v6, v5
goto :goto_24
.end method
.method public handleKeyEventDown(ILandroid/view/KeyEvent;)Z
.registers 11
const/16 v7, 0x18
const/4 v4, 0x0
const/4 v5, 0x1
const/4 v6, 0x4
if-ne p1, v6, :cond_33
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSonyTimerSwitchState()Z
move-result v6
if-eqz v6, :cond_21
iget-object v6, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
if-eqz v6, :cond_21
iget-object v6, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-virtual {v6}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->isTimerRunning()Z
move-result v6
if-eqz v6, :cond_21
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->stopTimerTakePic()V
:goto_20
return v5
:cond_21
iget-object v6, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v6}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->isMenuBarActivated()Z
move-result v6
if-eqz v6, :cond_33
iget-object v4, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v4, v4, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v4}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->hideOtherSettingPopMenu()V
goto :goto_20
:cond_33
if-eq p1, v7, :cond_39
const/16 v6, 0x19
if-ne p1, v6, :cond_52
:cond_39
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundKeyMode()Ljava/lang/String;
move-result-object v3
const-class v6, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
invoke-static {v6, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v1
if-ne p1, v7, :cond_4e
move v4, v5
:cond_4e
invoke-direct {p0, v0, v1, v4, p2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->soundKeyDown(Ljava/lang/Enum;IZLandroid/view/KeyEvent;)V
goto :goto_20
:cond_52
move v5, v4
goto :goto_20
.end method
.method public handleKeyEventUp(ILandroid/view/KeyEvent;)Z
.registers 9
const/16 v5, 0x18
const/4 v3, 0x1
const/4 v4, 0x0
if-eq p1, v5, :cond_a
const/16 v2, 0x19
if-ne p1, v2, :cond_1f
:cond_a
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundKeyMode()Ljava/lang/String;
move-result-object v1
const-class v2, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
if-ne p1, v5, :cond_20
move v2, v3
:goto_1b
invoke-direct {p0, v0, v4, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->soundKeyUp(Ljava/lang/Enum;IZ)V
move v4, v3
:cond_1f
return v4
:cond_20
move v2, v4
goto :goto_1b
.end method
.method public handleKeyLongPressEvent(ILandroid/view/KeyEvent;)Z
.registers 9
const/16 v5, 0x18
const/4 v3, 0x1
const/4 v4, 0x0
if-eq p1, v5, :cond_a
const/16 v2, 0x19
if-ne p1, v2, :cond_21
:cond_a
iput-boolean v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mKeyVolumeLongPress:Z
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundKeyMode()Ljava/lang/String;
move-result-object v1
const-class v2, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
if-ne p1, v5, :cond_22
move v2, v3
:goto_1d
invoke-direct {p0, v0, v4, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->soundKeyLongPress(Ljava/lang/Enum;IZ)V
move v4, v3
:cond_21
return v4
:cond_22
move v2, v4
goto :goto_1d
.end method
.method public isHome()Z
.registers 6
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const-string/jumbo v4, "activity"
invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/app/ActivityManager;
const/4 v3, 0x1
invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
move-result-object v2
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getHomes()Ljava/util/List;
move-result-object v0
const/4 v3, 0x0
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;
iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v3
return v3
.end method
.method public makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 14
invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I
move-result p3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
new-instance v5, Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-direct {v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V
const/4 v6, 0x6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V
sget-object v6, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v1, v6, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
const/16 v6, 0x10
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setCameraModeIndex(I)V
invoke-virtual {v5, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
const/4 v6, 0x0
invoke-static {v1, v6}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getEffectAppend(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V
const/4 v6, 0x1
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V
invoke-virtual {v5, p3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V
invoke-virtual {v5, p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I
move-result v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifRotation(I)V
invoke-static {}, Lcom/pinguo/lib/UIContants;->getPreviewLength()I
move-result v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPreviewLength(I)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-virtual {v5, v6, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimeWaterMarkState()Z
move-result v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setAddTimeWaterMark(Z)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getGpsState()Z
move-result v6
if-eqz v6, :cond_95
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v3
if-eqz v3, :cond_95
sget-object v6, Lcom/pinguo/camera360/sony/SonyCameraFragment;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "location = "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/pinguo/lib/location/data/PGLocation;->getAddress()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, " /"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {v3}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLatitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v8
invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, "/"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {v3}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLongitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v8
invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v5, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
:cond_95
if-eqz p1, :cond_a2
if-eqz p2, :cond_a2
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderRealEnable()Z
move-result v6
if-eqz v6, :cond_a3
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectUsedWithRender(Ljava/lang/String;)V
:cond_a2
:goto_a2
return-object v5
:cond_a3
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v6
invoke-virtual {v6, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v2
if-eqz v2, :cond_a2
iget-object v6, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectUsedNoRender(Ljava/lang/String;)V
goto :goto_a2
.end method
.method public notifyTakePictureOrientationRest()V
.registers 1
return-void
.end method
.method public onApiListModified(Ljava/util/List;)V
.registers 7
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v3}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getAvailableApiSet()Ljava/util/Set;
move-result-object v1
monitor-enter v1
:try_start_7
invoke-interface {v1}, Ljava/util/Set;->clear()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_49
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
invoke-virtual {v3}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->getLiveviewStatus()Z
move-result v3
if-nez v3, :cond_38
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
const-string/jumbo v4, "startLiveview"
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_38
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v3}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getLiveview()Lcom/pinguo/camera360/sony/model/SonyLiveview;
move-result-object v2
if-eqz v2, :cond_38
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->isStarted()Z
move-result v3
if-nez v3, :cond_38
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->startLiveview()Z
:cond_38
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
const-string/jumbo v4, "actZoom"
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_58
const/4 v3, 0x1
invoke-direct {p0, v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->prepareActZoomButtons(Z)V
:goto_47
monitor-exit v1
return-void
:cond_49
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v4, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v4, v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->addApi(Ljava/lang/String;)V
goto :goto_e
:catchall_55
move-exception v3
monitor-exit v1
:try_end_57
.catchall {:try_start_7 .. :try_end_57} :catchall_55
throw v3
:cond_58
const/4 v3, 0x0
:try_start_59
invoke-direct {p0, v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->prepareActZoomButtons(Z)V
:try_end_5c
.catchall {:try_start_59 .. :try_end_5c} :catchall_55
goto :goto_47
.end method
.method public onBottomMenuClick()V
.registers 1
return-void
.end method
.method public onCameraStatusChanged(Ljava/lang/String;)V
.registers 4
const/4 v1, 0x0
const-string/jumbo v0, "StillCapturing"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15
iget v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mPictureStatus:I
if-eqz v0, :cond_f
:goto_e
return-void
:cond_f
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mPictureStatus:I
invoke-virtual {p0, v1, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->showPictiurePreview([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
:cond_15
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->refreshUi()V
goto :goto_e
.end method
.method public onCameraTimerSwitch(Z)V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setSonyTimerSwitchState(Z)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/sony/SonyCameraFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/sony/SonyCameraFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCloudHomeClick()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->hideOtherSettingPopMenu()V
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/pinguo/camera360/mycenter/MyCenterActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/pinguo/camera360/sony/SonyCameraFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V
invoke-static {}, Lcom/pinguo/camera360/sony/model/ServerDeviceInstance;->getServerDevice()Lcom/pinguo/camera360/sony/model/ServerDevice;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mTargetServer:Lcom/pinguo/camera360/sony/model/ServerDevice;
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mTargetServer:Lcom/pinguo/camera360/sony/model/ServerDevice;
if-nez v2, :cond_16
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string/jumbo v3, "Empty server device"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_16
new-instance v2, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mTargetServer:Lcom/pinguo/camera360/sony/model/ServerDevice;
invoke-direct {v2, v3}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;-><init>(Lcom/pinguo/camera360/sony/model/ServerDevice;)V
iput-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
new-instance v2, Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mTargetServer:Lcom/pinguo/camera360/sony/model/ServerDevice;
invoke-direct {v2, v3, v4}, Lcom/pinguo/camera360/sony/model/SonyCamera;-><init>(Landroid/app/Activity;Lcom/pinguo/camera360/sony/model/ServerDevice;)V
iput-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v2, p0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->setEventChangeListener(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getEventObserver()Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V
new-instance v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
iput-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
new-instance v0, Landroid/content/IntentFilter;
const-string/jumbo v2, "com.pinguo.camear360.feedback.update.mycenter"
invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mMyCenterReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
new-instance v2, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-direct {v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->setContext(Landroid/content/Context;)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->setWifiScanner(Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const-string/jumbo v3, "wifi"
invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/wifi/WifiManager;
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
new-instance v3, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;
move-result-object v4
invoke-direct {v3, v1, v4}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->setWifiScanner(Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
new-instance v3, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->setDectedListener(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->create(Landroid/os/Bundle;)V
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mIsPausing:Z
const-string v1, " - Lcom/pinguo/camera360/sony/SonyCameraFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0300a7
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a03db
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;
iput-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveviewSurface:Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveviewSurface:Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v1
invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->createViewHolder(Landroid/view/View;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->setController(Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->setListener(Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;->setGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->prepareZoomInOrOutEvent()V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->updateTimerUI()V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->updateTopMenuBar()V
return-object v0
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/sony/SonyCameraFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onDestroy()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mMyCenterReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const-string v1, " - Lcom/pinguo/camera360/sony/SonyCameraFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDown(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/HideModePickerViewEvent;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->closeModePickerBtn()V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;)V
.registers 5
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->getFromTag()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_30
sget-object v0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Not my event, ignore! From:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->getFromTag()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_2f
return-void
:cond_30
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mPictureStatus:I
goto :goto_2f
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/OnMyCenterNewMsgEvent;)V
.registers 4
const-string/jumbo v0, "PGM"
const-string/jumbo v1, "onEvent OnMyCenterNewMsgEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->updateMyCenterNewMsgView()V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;)V
.registers 10
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v5
if-eqz v5, :cond_13
iget-object v5, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v5, v5, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v6
const/4 v7, 0x1
invoke-virtual {v5, v6, v7}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->setThumbNail(Landroid/graphics/Bitmap;Z)V
:goto_12
return-void
:cond_13
:try_start_13
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getLastPhotoTakenTime()J
move-result-wide v3
const-wide/16 v5, 0x0
cmp-long v5, v3, v5
if-lez v5, :cond_38
sget-object v5, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v5, v3, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v1
iget-object v5, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v5, v5, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;
invoke-virtual {v5, v1}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->setThumbNail(Landroid/graphics/Bitmap;)V
:try_end_32
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_32} :catch_33
goto :goto_12
:catch_33
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_12
:cond_38
:try_start_38
iget-object v5, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v5, v5, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->setThumbNail(Landroid/graphics/Bitmap;)V
:try_end_40
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_40} :catch_33
goto :goto_12
.end method
.method public onEvent(Lcom/pinguo/camera360/lib/camera/event/TurnOnOffTimerEvent;)V
.registers 4
sget-object v0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onEvent TurnOnOffTimerEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->updateTimerUI()V
return-void
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 6
const/4 v0, 0x0
return v0
.end method
.method public onGalleryEnterClick()V
.registers 9
const/4 v7, 0x0
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v0
const-wide/16 v3, 0x0
invoke-virtual {v1, v0}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J
move-result-wide v5
cmp-long v3, v3, v5
if-nez v3, :cond_27
new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const v4, 0x7f0802f5
invoke-direct {v2, v3, v4, v7}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
:goto_26
return-void
:cond_27
new-instance v3, Ljava/io/File;
sget-object v4, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->SAND_B0X_DB_PATH:Ljava/lang/String;
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_44
new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const v4, 0x7f080339
invoke-direct {v2, v3, v4, v7}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto :goto_26
:cond_44
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v3
new-instance v4, Lcom/pinguo/camera360/camera/event/EnterGalleryEvent;
invoke-direct {v4}, Lcom/pinguo/camera360/camera/event/EnterGalleryEvent;-><init>()V
invoke-virtual {v3, v4}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
goto :goto_26
.end method
.method public onLiveviewError()V
.registers 3
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mIsPausing:Z
if-eqz v1, :cond_5
:goto_4
return-void
:cond_5
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$7;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$7;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->runInUiThread(Ljava/lang/Runnable;)V
goto :goto_4
.end method
.method public onLiveviewFrame(Landroid/graphics/Bitmap;)V
.registers 8
iget-object v4, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v4}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getLiveview()Lcom/pinguo/camera360/sony/model/SonyLiveview;
move-result-object v4
if-eqz v4, :cond_14
iget-object v4, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v4}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getLiveview()Lcom/pinguo/camera360/sony/model/SonyLiveview;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->isStarted()Z
move-result v4
if-nez v4, :cond_15
:goto_14
:cond_14
return-void
:cond_15
const/16 v0, 0x5a
invoke-static {p1, v0}, Lcom/pinguo/lib/image/BitmapUtils;->rotateBitmapIntate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v2
iget-object v4, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveviewSurface:Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;
invoke-virtual {v4, v2}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->drawFrame(Landroid/graphics/Bitmap;)V
iget-object v4, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveviewSurface:Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;
invoke-virtual {v4}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getLiveviewFrame()Landroid/graphics/Rect;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/Rect;->width()I
move-result v4
iget-object v5, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveviewRect:Landroid/graphics/Rect;
invoke-virtual {v5}, Landroid/graphics/Rect;->width()I
move-result v5
if-ne v4, v5, :cond_3e
invoke-virtual {v1}, Landroid/graphics/Rect;->height()I
move-result v4
iget-object v5, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveviewRect:Landroid/graphics/Rect;
invoke-virtual {v5}, Landroid/graphics/Rect;->height()I
move-result v5
if-eq v4, v5, :cond_14
:cond_3e
iput-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveviewRect:Landroid/graphics/Rect;
new-instance v3, Lcom/pinguo/camera360/sony/SonyCameraFragment$6;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$6;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-direct {p0, v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->runInUiThread(Ljava/lang/Runnable;)V
goto :goto_14
.end method
.method public onLiveviewOrientationChanged(I)V
.registers 2
if-eqz p1, :cond_4
iput p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveOritation:I
:cond_4
return-void
.end method
.method public onLiveviewStatusChanged(Z)V
.registers 5
sget-object v0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onLiveviewStatusChanged() called = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public onLongPress(Landroid/view/MotionEvent;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/sony/SonyCameraFragment; onLongPress "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/sony/SonyCameraFragment; onLongPress"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onMenuBarActivated(Z)V
.registers 2
return-void
.end method
.method public onModeFunctionClick()V
.registers 1
return-void
.end method
.method public onPause()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/sony/SonyCameraFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->pause()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z
move-result v1
if-eqz v1, :cond_12
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->checkTimerAndStop()V
:cond_12
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->removeSomeMessage()V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->hidePicturePreview()V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->dismissAllDialog()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/model/SonyCamera;->closeConnection()V
sget-object v1, Lcom/pinguo/camera360/sony/SonyCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onPause() completed."
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
instance-of v1, v1, LvStudio/Android/Camera360/activity/CameraActivity;
if-eqz v1, :cond_39
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
check-cast v1, LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v1, p0}, LvStudio/Android/Camera360/activity/CameraActivity;->unRegisterOrientationEvent(Lcom/pinguo/camera360/base/BaseFragment;)V
:cond_39
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->unBind(Landroid/content/Context;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onPause()V
new-instance v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$4;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$4;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$4;->start()V
const-string v1, " - Lcom/pinguo/camera360/sony/SonyCameraFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPostViewSizeChanged(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->refreshUi()V
return-void
.end method
.method public onPreviewFunClick()V
.registers 1
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/sony/SonyCameraFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->resume()V
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mIsPausing:Z
if-eqz v0, :cond_59
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->reconnectWifi()V
:goto_c
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->updateMyCenterNewMsgView()V
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$LoadThumbnailTask;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$LoadThumbnailTask;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$LoadThumbnailTask;->execute([Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->setEventChangeListener(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->closeModePickerBtn()V
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
instance-of v0, v0, LvStudio/Android/Camera360/activity/CameraActivity;
if-eqz v0, :cond_3a
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v0, p0}, LvStudio/Android/Camera360/activity/CameraActivity;->registerOrientationEvent(Lcom/pinguo/camera360/base/BaseFragment;)V
:cond_3a
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->bind(Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->start(Landroid/content/Context;)V
sget-object v0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onResume() completed."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v1, " - Lcom/pinguo/camera360/sony/SonyCameraFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_59
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->openConnection()V
goto :goto_c
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/sony/SonyCameraFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->saveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/pinguo/camera360/sony/SonyCameraFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/sony/SonyCameraFragment; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/sony/SonyCameraFragment; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onShootModeChange(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public onShootModeChanged(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->refreshUi()V
return-void
.end method
.method public onShowModeClick()V
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->isMenuBarActivated()Z
move-result v1
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->hideOtherSettingPopMenu()V
:cond_11
new-instance v0, Lcom/pinguo/camera360/camera/event/ShowModePickerEvent;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/event/ShowModePickerEvent;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/event/ShowModePickerEvent;->setFromTag(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method public onShowPress(Landroid/view/MotionEvent;)V
.registers 2
return-void
.end method
.method public onShutterBtnClick()V
.registers 4
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->isMenuBarActivated()Z
move-result v2
if-eqz v2, :cond_11
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->hideOtherSettingPopMenu()V
:cond_11
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->getShootMode()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_39
const-string/jumbo v2, "still"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_39
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSonyTimerSwitchState()Z
move-result v2
if-eqz v2, :cond_3a
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->hideTouchTap()V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->checkTimerAndStop()V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->startTimerTakePicture()V
:cond_39
:goto_39
return-void
:cond_3a
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->takePicture()V
goto :goto_39
.end method
.method public onShutterBtnLongClick()V
.registers 1
return-void
.end method
.method public onShutterBtnMoving()V
.registers 1
return-void
.end method
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
.registers 5
const/4 v1, 0x1
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSonyTimerSwitchState()Z
move-result v2
if-eqz v2, :cond_1e
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
if-eqz v2, :cond_1e
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->isTimerRunning()Z
move-result v2
if-eqz v2, :cond_1e
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->showTouchTap()V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->stopTimerTakePic()V
:goto_1d
return v1
:cond_1e
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->hideOtherSettingPopMenu()V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v2
if-eqz v2, :cond_2f
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->onShutterBtnClick()V
goto :goto_1d
:cond_2f
const/4 v1, 0x0
goto :goto_1d
.end method
.method public onSonyCameraOpen()V
.registers 5
const/4 v3, 0x1
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
const-string/jumbo v2, "startLiveview"
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getLiveview()Lcom/pinguo/camera360/sony/model/SonyLiveview;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->setLiveviewCallback(Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->startLiveview()Z
:cond_18
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
const-string/jumbo v2, "actZoom"
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_57
sget-object v1, Lcom/pinguo/camera360/sony/SonyCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "openConnection(): prepareActZoomButtons()"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->prepareActZoomButtons(Z)V
:goto_2e
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
const-string/jumbo v2, "getAvailableFlashMode"
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_47
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
const-string/jumbo v2, "setFlashMode"
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_47
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->prepareFlashMode()V
:cond_47
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
const/16 v2, 0x67
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->removeMessages(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->dismissAllDialog()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->setDectedStatus(I)V
return-void
:cond_57
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->prepareActZoomButtons(Z)V
goto :goto_2e
.end method
.method public onSonyCameraOpenFail(Ljava/io/IOException;)V
.registers 6
sget-object v1, Lcom/pinguo/camera360/sony/SonyCameraFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "openConnection: IOException: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mIsPausing:Z
if-eqz v1, :cond_1e
:goto_1d
return-void
:cond_1e
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$5;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$5;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->runInUiThread(Ljava/lang/Runnable;)V
goto :goto_1d
.end method
.method public onSonyPicturePostTaken()V
.registers 6
const/16 v4, 0x64
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSonyTimerSwitchState()Z
move-result v1
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->removeMessages(I)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
const-wide/16 v2, 0xa
invoke-virtual {v1, v4, v2, v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->sendEmptyMessageDelayed(IJ)Z
:cond_18
return-void
.end method
.method public onSonyPictureTaken([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
.registers 6
iget v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mPictureStatus:I
const/4 v2, 0x1
if-eq v1, v2, :cond_6
:goto_5
return-void
:cond_6
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$8;
invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/camera360/sony/SonyCameraFragment$8;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->runInUiThread(Ljava/lang/Runnable;)V
goto :goto_5
.end method
.method public onSonyTakePictureFail()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mPictureStatus:I
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->hidePicturePreview()V
return-void
.end method
.method public onStillSizeChanged(Ljava/lang/String;Z)V
.registers 5
if-eqz p2, :cond_13
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/sony/model/SonyCamera;->checkStillSizeHaveInList(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_14
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getTheConfigListFirstStillSize()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->setPostViewSize(Ljava/lang/String;Ljava/lang/String;)V
:cond_13
:goto_13
return-void
:cond_14
invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;
move-result-object v0
const-string/jumbo v1, "still-size"
invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->refreshUi()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getSupportedStillSize()V
goto :goto_13
.end method
.method public onTopBarPostViewSizeChanged(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->setPostViewSize(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onTopMenuClick()V
.registers 1
return-void
.end method
.method public onTouchShotSwitch(Z)V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTouchScreenTakePicState(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;->setHaveTouchScreen(Z)V
return-void
.end method
.method public onZoomPositionChanged(I)V
.registers 7
const/4 v4, 0x0
const v3, 0x7f0a058b
const v2, 0x7f0a0589
const/4 v1, 0x1
if-nez p1, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V
:goto_20
return-void
:cond_21
const/16 v0, 0x64
if-ne p1, v0, :cond_3c
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
goto :goto_20
:cond_3c
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
goto :goto_20
.end method
.method public setOrientation(IZ)V
.registers 3
return-void
.end method
.method public showPictiurePreview([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p0, p1, p2, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v1
if-eqz p1, :cond_f
invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getExifData([B)[B
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V
:cond_f
new-instance v0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;
invoke-direct {v0, v1, p1, v3, v3}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;-><init>(Lcom/pinguo/camera360/photoedit/PictureInfo;[BZZ)V
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/pinguo/lib/eventbus/BaseEvent;->setFromTag(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method protected soundKeyAction(Ljava/lang/Enum;ZI)V
.registers 8
sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->SHOT:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
if-ne v0, p1, :cond_17
if-nez p3, :cond_17
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mVolumePressDelayHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mVolumePressDelayHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;
const-wide/16 v2, 0xc8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_16
:goto_16
return-void
:cond_17
sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->ZOOM:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
if-ne v0, p1, :cond_1f
invoke-virtual {p0, p2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->soundKeyZoom(Z)V
goto :goto_16
:cond_1f
sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->NONE:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
if-ne v0, p1, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
if-nez v0, :cond_31
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
:cond_31
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/camera/model/SoundManager;->volumeAdjustment(Z)V
goto :goto_16
.end method
.method protected soundKeyZoom(Z)V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->getZoomPosition()I
move-result v0
if-eqz p1, :cond_16
const/16 v1, 0x64
if-ge v0, v1, :cond_15
const-string/jumbo v1, "in"
const-string/jumbo v2, "1shot"
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
:goto_15
:cond_15
return-void
:cond_16
if-lez v0, :cond_15
const-string/jumbo v1, "out"
const-string/jumbo v2, "1shot"
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_15
.end method
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
.registers 5
return-void
.end method
.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
.registers 2
return-void
.end method
.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->closeConnection()V
return-void
.end method
.method public updateSonyTopBarView()V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->refreshUIOnMainThread()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
const/16 v2, 0xc
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v0
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->setEnableParametersView(Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;Z)V
return-void
.end method