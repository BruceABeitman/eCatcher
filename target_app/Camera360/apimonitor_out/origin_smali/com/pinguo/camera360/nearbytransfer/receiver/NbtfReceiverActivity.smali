.class public Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "NbtfReceiverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
    }
.end annotation


# static fields
.field private static final MSG_ONE_RESULT:I = 0x66

.field private static final MSG_PROGRESS:I = 0x64

.field private static final MSG_RESULT:I = 0x67

.field private static final MSG_RESULT_FAILURE:I = 0x69

.field private static final MSG_RESULT_SUCCESS:I = 0x68

.field private static final MSG_START:I = 0x65

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityDestroyed:Z

.field private mConnectedUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

.field private mHandler:Landroid/os/Handler;

.field private mNearbyTransferListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

.field private mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

.field private mReceiveListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;

.field private mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

.field private mStopReceiveDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

.field private sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->START:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->showReceiveFailureDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mConnectedUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    return-void
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->enterTransFragment()V

    return-void
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->showNoEnoughtSpaceDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->stopReceive()V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mConnectedUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->delReceivedFiles(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V

    return-void
.end method

.method static synthetic access$5()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->enterIfAcceptFragment()V

    return-void
.end method

.method private delReceivedFiles(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
    .registers 6

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pinguo/camera360/nearbytransfer/NbtfService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "intent_delete_files"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->getReceivedFiles(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)Ljava/util/List;

    move-result-object v0

    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_23

    const-string/jumbo v2, "files"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_1f
    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_23
    const-string/jumbo v2, "files"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1f
.end method

.method private enterIfAcceptFragment()V
    .registers 5

    iget-boolean v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mActivityDestroyed:Z

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a043e

    new-instance v3, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment;

    invoke-direct {v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment;-><init>()V

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

.method private enterScanFragment()V
    .registers 5

    iget-boolean v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mActivityDestroyed:Z

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a043e

    new-instance v3, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment;

    invoke-direct {v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment;-><init>()V

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

.method private enterTransFragment()V
    .registers 5

    iget-boolean v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mActivityDestroyed:Z

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a043e

    new-instance v3, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;

    invoke-direct {v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;-><init>()V

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

.method private enterWaittingFragment()V
    .registers 5

    iget-boolean v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mActivityDestroyed:Z

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a043e

    new-instance v3, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;

    invoke-direct {v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;-><init>()V

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

.method private getHandler()Landroid/os/Handler;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    return-object v0
.end method

.method private showNoEnoughtSpaceDialog()V
    .registers 7

    const/4 v5, 0x0

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080130

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, -0x2

    const v3, 0x7f0801d4

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$8;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$8;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V

    new-instance v2, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$9;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$9;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

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

.method private showReceiveFailureDialog()V
    .registers 7

    const/4 v5, 0x0

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08012b

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, -0x2

    const v3, 0x7f0801d4

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$6;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$6;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V

    new-instance v2, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$7;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$7;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

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

.method private showRemoteStopSendDialog()V
    .registers 7

    const/4 v5, 0x0

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080114

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, -0x2

    const v3, 0x7f0801d4

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$4;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$4;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V

    new-instance v2, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$5;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$5;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

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

.method private showStopReceiveDialog()V
    .registers 8

    const v0, 0x7f08012e

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0801d4

    const v3, 0x7f0801d5

    new-instance v4, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$10;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$10;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    new-instance v5, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$11;

    invoke-direct {v5, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$11;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    iput-object v6, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mStopReceiveDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    return-void
.end method

.method private stopReceive()V
    .registers 2

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->START:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    return-void
.end method


# virtual methods
.method public accept()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->isPending()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    invoke-virtual {v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->acceptUser(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->enterWaittingFragment()V

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->WAITTING_CONNECT:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public enterGuideActivity()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/nearbytransfer/NbtfReceiveGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getNearbyTransferListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mNearbyTransferListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mNearbyTransferListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    goto :goto_6
.end method

.method public getReceiveListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mConnectedUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mConnectedUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_16
    const-string/jumbo v0, ""

    goto :goto_a
.end method

.method public onBackPressed()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->RECEIVING:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->showStopReceiveDialog()V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f0300c1

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->getInstance()Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->build(I)V

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v2

    if-eqz v2, :cond_6a

    iget-object v1, v2, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;

    iget-object v0, v2, Lcom/pinguo/camera360/login/model/User$Info;->avatar:Ljava/lang/String;

    :cond_2a
    :goto_2a
    const/16 v3, 0x14

    invoke-static {v1, v3}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->subStringByByteCount(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v6, v5}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->init(Landroid/content/Context;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getNearbyTransferListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mNearbyTransferListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->addNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V

    iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getReceiveListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiveListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->addReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V

    iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->asHost(I)Z

    move-result v3

    if-nez v3, :cond_63

    const-string/jumbo v3, "not support ap"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_63
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mActivityDestroyed:Z

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->enterScanFragment()V

    return-void

    :cond_6a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_2a
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mActivityDestroyed:Z

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiveListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->removeReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mNearbyTransferListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->removeNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V

    :try_start_11
    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->stopHost()V

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->destroy()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1f

    :goto_1b
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    :try_start_3
    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->pause()V

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->onPause()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public onReceiveFailure(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pinguo/camera360/nearbytransfer/NbtfService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v2, p1, Ljava/util/ArrayList;

    if-eqz v2, :cond_2a

    const-string/jumbo v2, "files"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_13
    const-string/jumbo v2, "intent_delete_files"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x69

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v2, "files"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_13
.end method

.method public onReceiveSuccess(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryNearByReceiverSuccess()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/nearbytransfer/NbtfService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "intent_insert_files"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_31

    const-string/jumbo v1, "files"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_1c
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mStopReceiveDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mStopReceiveDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mStopReceiveDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V

    :cond_30
    return-void

    :cond_31
    const-string/jumbo v1, "files"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1c
.end method

.method public onRemoteCancelRequestConnect()V
    .registers 7

    const/4 v5, 0x0

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080123

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, -0x2

    const v3, 0x7f0801d4

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$2;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$2;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$3;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$3;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

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

.method public onRemoteStopSending(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->delReceivedFiles(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->showRemoteStopSendDialog()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    :try_start_3
    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->resume()V

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->onResume()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public reject()Z
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->START:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    iput-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    if-nez v2, :cond_b

    :goto_a
    return v1

    :cond_b
    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    invoke-virtual {v3}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->acceptUser(Ljava/lang/String;Z)V

    iput-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mConnectedUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    iput-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "result_code"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->finish()V

    const/4 v1, 0x1

    goto :goto_a
.end method
