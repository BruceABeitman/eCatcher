.class public Lco/vine/android/recorder/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"


# instance fields
.field protected final mPaint:Landroid/graphics/Paint;

.field public mProgressRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lco/vine/android/recorder/ProgressView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lco/vine/android/recorder/ProgressView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lco/vine/android/recorder/ProgressView;->init()V

    return-void
.end method

.method private init()V
    .registers 4

    iget-object v0, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lco/vine/android/recorder/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lco/vine/android/recorder/R$color;->vine_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setProgressRatio(F)V
    .registers 4

    const/high16 v0, 0x3f80

    cmpl-float v1, p1, v0

    if-lez v1, :cond_7

    move p1, v0

    :cond_7
    iput p1, p0, Lco/vine/android/recorder/ProgressView;->mProgressRatio:F

    new-instance v0, Lco/vine/android/recorder/ProgressView$1;

    invoke-direct {v0, p0}, Lco/vine/android/recorder/ProgressView$1;-><init>(Lco/vine/android/recorder/ProgressView;)V

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/ProgressView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
