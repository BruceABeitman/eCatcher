.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnAttachStateChangeListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$5;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onViewAttachedToWindow(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public final onViewDetachedFromWindow(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$5;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->c(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$5;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->c(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$5;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->d(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Landroid/view/View$OnAttachStateChangeListener;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$5;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->e(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Landroid/view/View;
:cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$5;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->aD:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$5;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a()V
return-void
.end method