.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/d$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$7;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$7;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->invalidate()V
return-void
.end method