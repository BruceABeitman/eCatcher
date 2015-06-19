.class public Lcom/glympse/android/controls/ToggleButton;
.super Landroid/widget/ToggleButton;
.source "ToggleButton.java"


# instance fields
.field private _density:F

.field private _gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/glympse/android/controls/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/glympse/android/controls/R$attr;->glympseToggleButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/glympse/android/controls/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/glympse/android/controls/ToggleButton;->_density:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/glympse/android/controls/ToggleButton;->_density:F

    sget-object v0, Lcom/glympse/android/controls/R$styleable;->GlympseToggleButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/glympse/android/controls/ToggleButton;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/glympse/android/controls/ToggleButton;->updatePadding(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/glympse/android/controls/ToggleButton;)Landroid/view/GestureDetector;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton;->_gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private updatePadding(Z)V
    .registers 5

    const/4 v2, 0x0

    const/high16 v0, 0x4120

    invoke-virtual {p0, v0}, Lcom/glympse/android/controls/ToggleButton;->dpToPixelSize(F)I

    move-result v0

    const/high16 v1, 0x4210

    invoke-virtual {p0, v1}, Lcom/glympse/android/controls/ToggleButton;->dpToPixelSize(F)I

    move-result v1

    if-eqz p1, :cond_13

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/glympse/android/controls/ToggleButton;->setPadding(IIII)V

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/glympse/android/controls/ToggleButton;->setPadding(IIII)V

    goto :goto_12
.end method


# virtual methods
.method public dpToPixelSize(F)I
    .registers 4

    iget v0, p0, Lcom/glympse/android/controls/ToggleButton;->_density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method protected onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Landroid/widget/ToggleButton;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton;->_gestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_20

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/glympse/android/controls/ToggleButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;-><init>(Lcom/glympse/android/controls/ToggleButton;Lcom/glympse/android/controls/ToggleButton$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/glympse/android/controls/ToggleButton;->_gestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/glympse/android/controls/ToggleButton$1;

    invoke-direct {v0, p0}, Lcom/glympse/android/controls/ToggleButton$1;-><init>(Lcom/glympse/android/controls/ToggleButton;)V

    invoke-virtual {p0, v0}, Lcom/glympse/android/controls/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_20
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton;->_gestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v1}, Lcom/glympse/android/controls/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v1, p0, Lcom/glympse/android/controls/ToggleButton;->_gestureDetector:Landroid/view/GestureDetector;

    :cond_a
    invoke-super {p0}, Landroid/widget/ToggleButton;->onDetachedFromWindow()V

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/glympse/android/controls/ToggleButton;->updatePadding(Z)V

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
