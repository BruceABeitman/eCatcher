.class public final Lcom/google/android/gms/ads/AdActivity;
.super Landroid/app/Activity;
.field private a:Lcom/google/android/gms/internal/ch;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method private a()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
if-eqz v0, :cond_9
:try_start_4
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
invoke-interface {v0}, Lcom/google/android/gms/internal/ch;->j()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a
:cond_9
:goto_9
return-void
:catch_a
move-exception v0
const-string v1, "Could not forward setContentViewSet to ad overlay:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method protected final onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/ads/AdActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/google/android/gms/internal/cj;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/ch;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
if-nez v0, :cond_16
const-string v0, "Could not create ad overlay."
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V
:goto_15
const-string v1, " - Lcom/google/android/gms/ads/AdActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:try_start_16
:cond_16
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ch;->a(Landroid/os/Bundle;)V
:try_end_1b
.catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c
goto :goto_15
:catch_1c
move-exception v0
const-string v1, "Could not forward onCreate to ad overlay:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V
goto :goto_15
.end method
.method protected final onDestroy()V
.registers 3
const-string v1, " + Lcom/google/android/gms/ads/AdActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
invoke-interface {v0}, Lcom/google/android/gms/internal/ch;->i()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d
:cond_9
:goto_9
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/google/android/gms/ads/AdActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_d
move-exception v0
const-string v1, "Could not forward onDestroy to ad overlay:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method protected final onPause()V
.registers 3
const-string v1, " + Lcom/google/android/gms/ads/AdActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
invoke-interface {v0}, Lcom/google/android/gms/internal/ch;->g()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d
:cond_9
:goto_9
invoke-super {p0}, Landroid/app/Activity;->onPause()V
const-string v1, " - Lcom/google/android/gms/ads/AdActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_d
move-exception v0
const-string v1, "Could not forward onPause to ad overlay:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V
goto :goto_9
.end method
.method protected final onRestart()V
.registers 3
const-string v1, " + Lcom/google/android/gms/ads/AdActivity; onRestart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onRestart()V
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
invoke-interface {v0}, Lcom/google/android/gms/internal/ch;->d()V
:cond_c
:goto_c
:try_end_c
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d
const-string v1, " - Lcom/google/android/gms/ads/AdActivity; onRestart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_d
move-exception v0
const-string v1, "Could not forward onRestart to ad overlay:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V
goto :goto_c
.end method
.method protected final onResume()V
.registers 3
const-string v1, " + Lcom/google/android/gms/ads/AdActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
invoke-interface {v0}, Lcom/google/android/gms/internal/ch;->f()V
:cond_c
:goto_c
:try_end_c
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d
const-string v1, " - Lcom/google/android/gms/ads/AdActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_d
move-exception v0
const-string v1, "Could not forward onResume to ad overlay:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V
goto :goto_c
.end method
.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/ads/AdActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ch;->b(Landroid/os/Bundle;)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d
:cond_9
:goto_9
invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/google/android/gms/ads/AdActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_d
move-exception v0
const-string v1, "Could not forward onSaveInstanceState to ad overlay:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V
goto :goto_9
.end method
.method protected final onStart()V
.registers 3
const-string v1, " + Lcom/google/android/gms/ads/AdActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStart()V
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
invoke-interface {v0}, Lcom/google/android/gms/internal/ch;->e()V
:cond_c
:goto_c
:try_end_c
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d
const-string v1, " - Lcom/google/android/gms/ads/AdActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_d
move-exception v0
const-string v1, "Could not forward onStart to ad overlay:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V
goto :goto_c
.end method
.method protected final onStop()V
.registers 3
const-string v1, " + Lcom/google/android/gms/ads/AdActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->a:Lcom/google/android/gms/internal/ch;
invoke-interface {v0}, Lcom/google/android/gms/internal/ch;->h()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d
:cond_9
:goto_9
invoke-super {p0}, Landroid/app/Activity;->onStop()V
const-string v1, " - Lcom/google/android/gms/ads/AdActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_d
move-exception v0
const-string v1, "Could not forward onStop to ad overlay:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V
goto :goto_9
.end method
.method public final setContentView(I)V
.registers 2
invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V
invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->a()V
return-void
.end method
.method public final setContentView(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->a()V
return-void
.end method
.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 3
invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->a()V
return-void
.end method