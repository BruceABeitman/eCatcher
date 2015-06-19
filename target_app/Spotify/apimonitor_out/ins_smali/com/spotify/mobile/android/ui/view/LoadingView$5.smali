.class final Lcom/spotify/mobile/android/ui/view/LoadingView$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/LoadingView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$5;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$5;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->j(Lcom/spotify/mobile/android/ui/view/LoadingView;)Landroid/view/animation/Animation;
move-result-object v0
if-ne p1, v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$5;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->c:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
if-ne v0, v1, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$5;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->d:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;Lcom/spotify/mobile/android/ui/view/LoadingView$State;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
:goto_19
:cond_19
return-void
:cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$5;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->k(Lcom/spotify/mobile/android/ui/view/LoadingView;)Landroid/view/animation/Animation;
move-result-object v0
if-ne p1, v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$5;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->f:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;Lcom/spotify/mobile/android/ui/view/LoadingView$State;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$5;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->i(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
goto :goto_19
.end method
.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public final onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method