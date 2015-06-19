.class public Lcom/pinguo/camera360/camera/view/DebounceView;
.super Landroid/widget/RelativeLayout;
.source "DebounceView.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;


# instance fields
.field private debounceLayout:Landroid/widget/RelativeLayout;

.field private focusResIds:[I

.field private mFocusImg:Landroid/widget/ImageView;

.field private mFocusIndicatorImg:Landroid/widget/ImageView;

.field private mFocusLayout:Lcom/pinguo/camera360/lib/ui/RotateLayout;

.field private orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->focusResIds:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->orientation:I

    return-void

    nop

    :array_14
    .array-data 0x4
        0xdt 0x0t 0x6t 0x1t
        0xdt 0x0t 0x6t 0x1t
        0x76t 0x1t 0x2t 0x7ft
        0x77t 0x1t 0x2t 0x7ft
        0x78t 0x1t 0x2t 0x7ft
        0x79t 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->focusResIds:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->orientation:I

    return-void

    nop

    :array_14
    .array-data 0x4
        0xdt 0x0t 0x6t 0x1t
        0xdt 0x0t 0x6t 0x1t
        0x76t 0x1t 0x2t 0x7ft
        0x77t 0x1t 0x2t 0x7ft
        0x78t 0x1t 0x2t 0x7ft
        0x79t 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getDebounceLevel()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->focusResIds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public gone()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/DebounceView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusIndicatorImg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusImg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusLayout:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    :cond_12
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/DebounceView;->setVisibility(I)V

    return-void
.end method

.method public hide()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/DebounceView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusIndicatorImg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusImg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusLayout:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    :cond_12
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/DebounceView;->setVisibility(I)V

    return-void
.end method

.method public isShowing()Z
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/DebounceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setDebounceLevel(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusIndicatorImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusImg:Landroid/widget/ImageView;

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusIndicatorImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->focusResIds:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    if-lt v0, p1, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusImg:Landroid/widget/ImageView;

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    :cond_22
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusImg:Landroid/widget/ImageView;

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c
.end method

.method public setOrientation(IZ)V
    .registers 4

    iput p1, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->orientation:I

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusLayout:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusLayout:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->setOrientation(IZ)V

    :cond_b
    return-void
.end method

.method public show()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_41

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/camera/view/DebounceView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a028c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusIndicatorImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a028d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a028b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->mFocusLayout:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->debounceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/DebounceView;->addView(Landroid/view/View;)V

    :cond_41
    iget v0, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->orientation:I

    invoke-virtual {p0, v0, v3}, Lcom/pinguo/camera360/camera/view/DebounceView;->setOrientation(IZ)V

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/view/DebounceView;->setVisibility(I)V

    return-void
.end method

.method public showToast(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    const v1, 0x7f080313

    iget v2, p0, Lcom/pinguo/camera360/camera/view/DebounceView;->orientation:I

    invoke-direct {v0, p1, v1, v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V

    return-void
.end method
