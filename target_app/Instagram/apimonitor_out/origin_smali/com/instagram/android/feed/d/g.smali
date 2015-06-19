.class final Lcom/instagram/android/feed/d/g;
.super Ljava/lang/Object;
.source "SponsoredHideHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/d/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/d/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/d/g;->a:Lcom/instagram/android/feed/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/instagram/android/feed/d/g;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v1}, Lcom/instagram/android/feed/d/d;->j(Lcom/instagram/android/feed/d/d;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/instagram/android/feed/d/g;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->j(Lcom/instagram/android/feed/d/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
