.class public Lcom/google/android/gms/plus/PlusOneDummyView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusOneDummyView$1;,
        Lcom/google/android/gms/plus/PlusOneDummyView$a;,
        Lcom/google/android/gms/plus/PlusOneDummyView$c;,
        Lcom/google/android/gms/plus/PlusOneDummyView$b;,
        Lcom/google/android/gms/plus/PlusOneDummyView$d;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlusOneDummyView"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->jO()Lcom/google/android/gms/plus/PlusOneDummyView$d;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/gms/plus/PlusOneDummyView$d;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/plus/PlusOneDummyView;->cY(I)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x11

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/plus/PlusOneDummyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private cY(I)Landroid/graphics/Point;
    .registers 10

    const/16 v1, 0x18

    const/16 v0, 0x14

    const/4 v4, 0x1

    const-wide/high16 v5, 0x3fe0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    packed-switch p1, :pswitch_data_3a

    const/16 v0, 0x26

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    int-to-float v1, v1

    invoke-static {v4, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    int-to-float v0, v0

    invoke-static {v4, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v3, v1

    add-double/2addr v3, v5

    double-to-int v1, v3

    iput v1, v2, Landroid/graphics/Point;->x:I

    float-to-double v0, v0

    add-double/2addr v0, v5

    double-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    return-object v2

    :pswitch_31
    const/16 v1, 0x20

    goto :goto_14

    :pswitch_34
    const/16 v0, 0xe

    goto :goto_14

    :pswitch_37
    const/16 v1, 0x32

    goto :goto_14

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_34
        :pswitch_31
        :pswitch_37
    .end packed-switch
.end method

.method private jO()Lcom/google/android/gms/plus/PlusOneDummyView$d;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView$b;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V

    invoke-interface {v0}, Lcom/google/android/gms/plus/PlusOneDummyView$d;->isValid()Z

    move-result v1

    if-nez v1, :cond_19

    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView$c;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$c;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V

    :cond_19
    invoke-interface {v0}, Lcom/google/android/gms/plus/PlusOneDummyView$d;->isValid()Z

    move-result v1

    if-nez v1, :cond_28

    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView$a;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V

    :cond_28
    return-object v0
.end method
