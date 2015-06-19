.class public Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "NbtfSendActivity.java"
.field private static final MSG_SEND_FAIL:I = 0x66
.field private static final MSG_SEND_SUCCESS:I = 0x67
.field private static final MSG_START:I = 0x65
.field private static final TAG:Ljava/lang/String;
.field private mActivityDestroyed:Z
.field private mHandler:Landroid/os/Handler;
.field private mNearbyTransferListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
.field private mPaths:Ljava/util/List;
.field private mPickedDevice:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
.field private mSendListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
.field private mSenderName:Ljava/lang/String;
.field private mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
.field private mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.field private sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->STOPED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->stopSend()V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
return-void
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
return-void
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mPaths:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mPickedDevice:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onSendFailure()V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onSendSuccess()V
return-void
.end method
.method static synthetic access$4()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onRemoteCancelReceive()V
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onRemoteReject()V
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onConnectFail()V
return-void
.end method
.method private enterWaittingFragment(Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;
invoke-direct {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;-><init>()V
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->setName(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
const v2, 0x7f0a043e
invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
return-void
.end method
.method private getHandler()Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
:goto_6
return-object v0
:cond_7
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$14;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$14;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
goto :goto_6
.end method
.method private getNearbyTransferListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mNearbyTransferListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mNearbyTransferListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
:goto_6
return-object v0
:cond_7
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
goto :goto_6
.end method
.method private getSendListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
.registers 2
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
return-object v0
.end method
.method private onConnectFail()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->stopClient()V
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->showConnectFailDialog()V
return-void
.end method
.method private onRemoteCancelReceive()V
.registers 6
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->stopClient()V
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V
const v1, 0x7f080114
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V
const/4 v1, -0x2
const v2, 0x7f0801d4
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getString(I)Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$4;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$4;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$5;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$5;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
return-void
.end method
.method private onRemoteReject()V
.registers 6
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->stopClient()V
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V
const v1, 0x7f08012f
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V
const/4 v1, -0x2
const v2, 0x7f0801d4
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getString(I)Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$2;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$2;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$3;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$3;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
return-void
.end method
.method private onSendFailure()V
.registers 5
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->SEND_END:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$6;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$6;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
const-wide/16 v2, 0xbb8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V
:cond_21
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->showSendFailDialog()V
return-void
.end method
.method private onSendSuccess()V
.registers 5
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->SEND_END:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$7;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$7;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
const-wide/16 v2, 0xbb8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V
:cond_21
return-void
.end method
.method private showConnectFailDialog()V
.registers 7
const/4 v5, 0x0
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V
const v2, 0x7f080125
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V
const/4 v2, -0x2
const v3, 0x7f080036
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getString(I)Ljava/lang/String;
move-result-object v3
new-instance v4, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$12;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$12;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
invoke-virtual {v0, v2, v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
new-instance v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$13;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$13;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
:try_start_2e
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
:try_end_31
.catch Landroid/view/WindowManager$BadTokenException; {:try_start_2e .. :try_end_31} :catch_32
:goto_31
return-void
:catch_32
move-exception v1
invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V
goto :goto_31
.end method
.method private showSendFailDialog()V
.registers 7
const/4 v5, 0x0
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V
const v2, 0x7f08012b
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V
const/4 v2, -0x2
const v3, 0x7f0801d4
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getString(I)Ljava/lang/String;
move-result-object v3
new-instance v4, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$10;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$10;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
invoke-virtual {v0, v2, v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
new-instance v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$11;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$11;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
:try_start_2e
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
:try_end_31
.catch Landroid/view/WindowManager$BadTokenException; {:try_start_2e .. :try_end_31} :catch_32
:goto_31
return-void
:catch_32
move-exception v1
invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V
goto :goto_31
.end method
.method private showStopSendDialog()V
.registers 7
const v0, 0x7f08012e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const v2, 0x7f0801d4
const v3, 0x7f0801d5
new-instance v4, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$8;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$8;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
new-instance v5, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$9;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$9;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
move-object v0, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
return-void
.end method
.method private stopSend()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->stopClient()V
return-void
.end method
.method public back2MainActivity()V
.registers 5
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/event/FinishPickPhtotsActivityEvent;
invoke-direct {v1}, Lcom/pinguo/camera360/nearbytransfer/event/FinishPickPhtotsActivityEvent;-><init>()V
invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
const-wide/16 v2, 0x64
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public back2PickPhotos()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->finish()V
return-void
.end method
.method public connectDevice(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
sget-object v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->REQUEST_CONNECTING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-ne v1, v2, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-eqz p1, :cond_6
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->REQUEST_CONNECTING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mPickedDevice:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
:try_start_f
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-virtual {p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->getSsid()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->connect(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mPickedDevice:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->getName()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->enterWaittingFragment(Ljava/lang/String;)V
:try_end_21
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_22
goto :goto_6
:catch_22
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_6
.end method
.method public enterDevicePickerFragment()V
.registers 5
iget-boolean v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mActivityDestroyed:Z
if-nez v1, :cond_a
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->isFinishing()Z
move-result v1
if-eqz v1, :cond_b
:cond_a
:goto_a
return-void
:cond_b
:try_start_b
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
const v2, 0x7f0a043e
new-instance v3, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;
invoke-direct {v3}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;-><init>()V
invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
:try_end_22
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_23
goto :goto_a
:catch_23
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_a
.end method
.method public enterGuideActivity()V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/nearbytransfer/NbtfSendGuideActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public enterSendFragment()V
.registers 5
iget-boolean v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mActivityDestroyed:Z
if-nez v1, :cond_a
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->isFinishing()Z
move-result v1
if-eqz v1, :cond_b
:cond_a
:goto_a
return-void
:cond_b
:try_start_b
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
const v2, 0x7f0a043e
new-instance v3, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
invoke-direct {v3}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;-><init>()V
invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
:try_end_22
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_23
goto :goto_a
:catch_23
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_a
.end method
.method public onBackPressed()V
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
const v2, 0x7f0a043e
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_1a
instance-of v1, v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;
if-eqz v1, :cond_1a
check-cast v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;->onBackPressed()Z
move-result v1
if-eqz v1, :cond_1a
:goto_19
return-void
:cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
sget-object v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->SENDING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-ne v1, v2, :cond_24
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->showStopSendDialog()V
goto :goto_19
:cond_24
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
sget-object v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->SEND_END:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-ne v1, v2, :cond_2e
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->back2MainActivity()V
goto :goto_19
:cond_2e
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
goto :goto_19
.end method
.method public onConnectRemoteTimeout()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->REQUEST_CONNECTING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-eq v0, v1, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->CONNECTED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-eq v0, v1, :cond_d
:goto_c
return-void
:cond_d
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->stopClient()V
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->showConnectFailDialog()V
goto :goto_c
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v4, 0x7f0300c1
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->setContentView(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getHandler()Landroid/os/Handler;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
const/4 v0, 0x0
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v3
if-eqz v3, :cond_46
iget-object v2, v3, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;
iget-object v0, v3, Lcom/pinguo/camera360/login/model/User$Info;->avatar:Ljava/lang/String;
:goto_1e
:cond_1e
const/16 v4, 0x14
invoke-static {v2, v4}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->subStringByByteCount(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderName:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->startClient()V
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string/jumbo v4, "paths"
invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mPaths:Ljava/util/List;
iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mPaths:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryNearBySendSum(I)V
const/4 v4, 0x0
iput-boolean v4, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mActivityDestroyed:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->enterDevicePickerFragment()V
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_46
sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_1e
sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;
goto :goto_1e
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mActivityDestroyed:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->stopClient()V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onFragmentBackPressed()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->SENDING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-ne v0, v1, :cond_a
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->showStopSendDialog()V
:goto_9
return-void
:cond_a
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->finish()V
goto :goto_9
.end method
.method protected onPause()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
sget-object v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->STOPED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-eq v1, v2, :cond_17
:try_start_9
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->pause()V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->onPause()V
:cond_17
:try_end_17
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_18
:goto_17
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_18
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_17
.end method
.method protected onResume()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
sget-object v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->STOPED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-eq v1, v2, :cond_13
:try_start_9
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->resume()V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->onResume()V
:cond_13
:try_end_13
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14
:goto_13
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_14
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_13
.end method
.method public startClient()V
.registers 6
const/4 v4, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->STOPED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-eq v0, v1, :cond_8
:goto_7
return-void
:cond_8
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->getInstance()Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->build(I)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderName:Ljava/lang/String;
const/4 v3, 0x2
invoke-virtual {v0, v1, v2, v4, v3}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->init(Landroid/content/Context;Ljava/lang/String;ZI)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->asClient(I)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getNearbyTransferListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mNearbyTransferListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->addNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getSendListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSendListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->addSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->STARTED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
goto :goto_7
.end method
.method public stopClient()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->STOPED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-ne v0, v1, :cond_7
:goto_6
:cond_6
return-void
:cond_7
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->STOPED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSendListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->removeSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mNearbyTransferListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->removeNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->stopClient()V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->destroy()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->TAG:Ljava/lang/String;
const-string/jumbo v1, "stopClient end"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_6
.end method