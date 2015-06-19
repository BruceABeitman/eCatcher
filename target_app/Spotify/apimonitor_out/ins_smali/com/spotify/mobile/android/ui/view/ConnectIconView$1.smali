.class final Lcom/spotify/mobile/android/ui/view/ConnectIconView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/animation/Animator$AnimatorListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$1;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onAnimationCancel(Landroid/animation/Animator;)V
.registers 2
return-void
.end method
.method public final onAnimationEnd(Landroid/animation/Animator;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$1;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)Lcom/spotify/mobile/android/ui/view/d;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$1;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)Lcom/spotify/mobile/android/ui/view/d;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$1;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
move-result-object v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/view/d;->a(Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;)V
:cond_17
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