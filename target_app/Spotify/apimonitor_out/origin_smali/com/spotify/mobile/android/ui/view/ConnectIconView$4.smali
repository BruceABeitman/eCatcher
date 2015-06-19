.class final Lcom/spotify/mobile/android/ui/view/ConnectIconView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$4;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$4;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->c(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$4;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->c(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_15
    move v0, v1

    :goto_16
    if-eqz v0, :cond_39

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v2, 0x3f19999a

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$4;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->d(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)F

    move-result v3

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_39

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$4;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$4;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    iget-object v2, v2, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(ILandroid/animation/Animator$AnimatorListener;)V

    :cond_39
    return-void

    :cond_3a
    const/4 v0, 0x0

    goto :goto_16
.end method
