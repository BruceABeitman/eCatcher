.class final Lcom/spotify/mobile/android/ui/fragments/p$17;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$17;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 11
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$17;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->o(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/os/Handler;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p$17;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/p;->n(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
and-int/lit16 v2, v2, 0xff
const/4 v3, 0x3
if-eq v2, v3, :cond_43
if-eq v2, v0, :cond_43
:goto_1c
if-nez v0, :cond_42
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$17;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->p(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/fragments/q;
move-result-object v0
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$17;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->o(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/os/Handler;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$17;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->p(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/fragments/q;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p$17;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/p;->n(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/Object;
move-result-object v3
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v4
const-wide/16 v6, 0x3e8
add-long/2addr v4, v6
invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
:cond_42
return v1
:cond_43
move v0, v1
goto :goto_1c
.end method