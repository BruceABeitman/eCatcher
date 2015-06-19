.class public Lcom/pinguo/camera360/lib/ui/RotateTextToast;
.super Ljava/lang/Object;
.source "RotateTextToast.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;


# static fields
.field public static final TOAST_DURATION:I = 0xbb8

.field public static final TOAST_DURATION_SHORT:I = 0x5dc


# instance fields
.field mHandler:Landroid/os/Handler;

.field mLayoutRoot:Landroid/view/ViewGroup;

.field private final mRunnable:Ljava/lang/Runnable;

.field mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;-><init>(Lcom/pinguo/camera360/lib/ui/RotateTextToast;)V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->initToast(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;-><init>(Lcom/pinguo/camera360/lib/ui/RotateTextToast;)V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->initToast(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;-><init>(Lcom/pinguo/camera360/lib/ui/RotateTextToast;)V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->initToast(Landroid/view/View;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private initToast(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
    .registers 9

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300f6

    iget-object v4, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0571

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iput-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    const v4, 0x7f0a008d

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->setOrientation(IZ)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initToast(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0300f6

    iget-object v4, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0571

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iput-object v2, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    const v3, 0x7f0a008d

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->setOrientation(IZ)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->setOrientation(IZ)V

    :cond_9
    return-void
.end method

.method public show()V
    .registers 2

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V

    return-void
.end method

.method public show(I)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
