.class final Lcom/spotify/mobile/android/ui/view/LoadingView$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/LoadingView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
sget-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$6;->a:[I
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_72
:goto_11
return-void
:pswitch_12
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->c:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
if-ne v0, v1, :cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->f(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
:cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->c(Lcom/spotify/mobile/android/ui/view/LoadingView;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->e:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;Lcom/spotify/mobile/android/ui/view/LoadingView$State;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->g(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->d(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/l;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/l;->a()V
goto :goto_11
:pswitch_42
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->b:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
if-ne v0, v1, :cond_57
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->h(Lcom/spotify/mobile/android/ui/view/LoadingView;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_57
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->f:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;Lcom/spotify/mobile/android/ui/view/LoadingView$State;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->f(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->d(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/l;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/l;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->i(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
goto :goto_11
:pswitch_data_72
.packed-switch 0x1
:pswitch_12
:pswitch_12
:pswitch_42
:pswitch_42
.end packed-switch
.end method