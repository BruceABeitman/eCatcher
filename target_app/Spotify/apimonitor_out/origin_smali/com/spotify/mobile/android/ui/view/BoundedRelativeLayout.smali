.class public Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;->b:I

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/spotify/music/d;->l:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;->a:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;->a:I

    if-lez v1, :cond_16

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;->a:I

    if-le v0, v1, :cond_16

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;->a:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;->b:I

    if-lez v1, :cond_2c

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;->b:I

    if-le v0, v1, :cond_2c

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/BoundedRelativeLayout;->b:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2c
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
