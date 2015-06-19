.class public final Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;
.super Landroid/app/Activity;
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.purchase.InAppPurchaseActivity"
.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "InAppPurchaseActivity"
.field private sY:Lcom/google/android/gms/internal/de;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->sY:Lcom/google/android/gms/internal/de;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->sY:Lcom/google/android/gms/internal/de;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/de;->onActivityResult(IILandroid/content/Intent;)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d
:cond_9
:goto_9
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
return-void
:catch_d
move-exception v0
const-string v1, "Could not forward onActivityResult to in-app purchase manager:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/google/android/gms/internal/dj;->d(Landroid/app/Activity;)Lcom/google/android/gms/internal/de;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->sY:Lcom/google/android/gms/internal/de;
iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->sY:Lcom/google/android/gms/internal/de;
if-nez v0, :cond_16
const-string v0, "Could not create in-app purchase manager."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->finish()V
:goto_15
const-string v1, " - Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:try_start_16
:cond_16
iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->sY:Lcom/google/android/gms/internal/de;
invoke-interface {v0}, Lcom/google/android/gms/internal/de;->onCreate()V
:try_end_1b
.catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c
goto :goto_15
:catch_1c
move-exception v0
const-string v1, "Could not forward onCreate to in-app purchase manager:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p0}, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->finish()V
goto :goto_15
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->sY:Lcom/google/android/gms/internal/de;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->sY:Lcom/google/android/gms/internal/de;
invoke-interface {v0}, Lcom/google/android/gms/internal/de;->onDestroy()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d
:cond_9
:goto_9
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_d
move-exception v0
const-string v1, "Could not forward onDestroy to in-app purchase manager:"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method