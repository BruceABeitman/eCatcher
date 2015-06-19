.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->b(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;F)F

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;F)F

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->c(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;F)F

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->b(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->c(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)Landroid/widget/ImageButton;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->c(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleX(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->c(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleY(F)V

    return-void
.end method
