.class public Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;
.super Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;
.source "NbtfWaittingFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectTimeoutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mReceiverNickname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;)V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->mConnectTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->showTimeoutDialog()V

    return-void
.end method

.method private showTimeoutDialog()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showTimeoutDialog"

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->getContainerActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onConnectRemoteTimeout()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->getContainerActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->stopClient()V

    :try_start_7
    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->getContainerActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_14

    :goto_12
    const/4 v1, 0x1

    return v1

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->mConnectTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v0, 0x7f0300c7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->mConnectTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v1, 0x7f0a0432

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TitleView;

    new-instance v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment$2;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const v1, 0x7f080112

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0454

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f080121

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->mReceiverNickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0453

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f040006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->mReceiverNickname:Ljava/lang/String;

    return-void
.end method
