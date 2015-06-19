.class final Lco/vine/android/util/ViewUtil$4;
.super Landroid/view/animation/Animation;
.source "ViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/util/ViewUtil;->makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$initialSize:I

.field final synthetic val$params:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$typeWidth:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ZLandroid/view/ViewGroup$LayoutParams;I)V
    .registers 5

    iput-object p1, p0, Lco/vine/android/util/ViewUtil$4;->val$v:Landroid/view/View;

    iput-boolean p2, p0, Lco/vine/android/util/ViewUtil$4;->val$typeWidth:Z

    iput-object p3, p0, Lco/vine/android/util/ViewUtil$4;->val$params:Landroid/view/ViewGroup$LayoutParams;

    iput p4, p0, Lco/vine/android/util/ViewUtil$4;->val$initialSize:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lco/vine/android/util/ViewUtil$4;->val$v:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lco/vine/android/util/ViewUtil$4;->val$typeWidth:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lco/vine/android/util/ViewUtil$4;->val$params:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lco/vine/android/util/ViewUtil$4;->val$initialSize:I

    iget v2, p0, Lco/vine/android/util/ViewUtil$4;->val$initialSize:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1e
    iget-object v0, p0, Lco/vine/android/util/ViewUtil$4;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_d

    :cond_24
    iget-object v0, p0, Lco/vine/android/util/ViewUtil$4;->val$params:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lco/vine/android/util/ViewUtil$4;->val$initialSize:I

    iget v2, p0, Lco/vine/android/util/ViewUtil$4;->val$initialSize:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1e
.end method

.method public willChangeBounds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
