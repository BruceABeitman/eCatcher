.class Lcom/millennialmedia/android/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/i;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/android/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "AdViewOverlayView"

    const-string v2, "Finishing overlay this is in w/ anim finishOverLayWithAnim()"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1a
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->b(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->b(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_19
    return-void
.end method
