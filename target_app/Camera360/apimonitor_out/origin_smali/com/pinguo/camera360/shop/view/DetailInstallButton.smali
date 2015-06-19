.class public Lcom/pinguo/camera360/shop/view/DetailInstallButton;
.super Landroid/widget/ViewFlipper;
.source "DetailInstallButton.java"

# interfaces
.implements Lcom/pinguo/camera360/shop/view/InstallButton;


# static fields
.field private static final DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I

    return v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;

    return-object v0
.end method

.method private init()V
    .registers 8

    const-wide/16 v5, 0x12c

    const/4 v4, 0x1

    new-instance v2, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;-><init>(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)V

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040019

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040012

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setOutAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040017

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040049

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setInAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method protected onStateChange(I)V
    .registers 2

    return-void
.end method

.method public setOnInstallBtnClickListener(Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;

    return-void
.end method

.method public setState(I)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I

    iget v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I

    packed-switch v0, :pswitch_data_36

    :pswitch_9
    sget-object v0, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-void

    :pswitch_1f
    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->onStateChange(I)V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setDisplayedChild(I)V

    goto :goto_1e

    :pswitch_26
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->onStateChange(I)V

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setDisplayedChild(I)V

    goto :goto_1e

    :pswitch_2e
    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->onStateChange(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setDisplayedChild(I)V

    goto :goto_1e

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_2e
        :pswitch_9
        :pswitch_26
    .end packed-switch
.end method
