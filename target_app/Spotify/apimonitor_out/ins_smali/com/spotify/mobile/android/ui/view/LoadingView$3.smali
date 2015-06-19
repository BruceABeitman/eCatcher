.class final Lcom/spotify/mobile/android/ui/view/LoadingView$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/LoadingView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$3;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$3;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->c:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
if-eq v0, v1, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$3;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->d:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
if-ne v0, v1, :cond_19
:cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$3;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->e(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
:cond_19
return-void
.end method