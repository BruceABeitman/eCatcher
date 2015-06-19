.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$2;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$2;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->d(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)Lcom/spotify/mobile/android/spotlets/tinkerbell/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$2;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->d(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)Lcom/spotify/mobile/android/spotlets/tinkerbell/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/e;->a()V

    :cond_11
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
