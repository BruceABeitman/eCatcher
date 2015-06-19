.class public Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;
.super Ljava/lang/Object;
.implements Lcom/millennialmedia/android/df;
.field private a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
return-void
.end method
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/bo;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelAdapterListener;->onClose()V
const-string v0, "MMSDK - MMAdOverlayClosed"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_e
return-void
:cond_f
const-string v0, "MMSDK-MMAdOverlayClosed --- No listener found"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_e
.end method
.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/bo;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelAdapterListener;->onExpand()V
const-string v0, "MMSDK-MMAdOverlayLaunched"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_e
return-void
:cond_f
const-string v0, "MMSDK-MMAdOverlayLaunched --- No listener found"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_e
.end method
.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/bo;)V
.registers 3
const-string v0, "MMSDK-MMAdRequestIsCaching"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
return-void
.end method
.method public destroyListener()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
return-void
.end method
.method public onSingleTap(Lcom/millennialmedia/android/bo;)V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
const-string v1, ""
invoke-interface {v0, v1}, Lcom/admarvel/android/ads/AdMarvelAdapterListener;->onClickAd(Ljava/lang/String;)V
const-string v0, "MMSDK - onSingleTap"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_10
return-void
:cond_11
const-string v0, "MMSDK-onSingleTap --- No listener found"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_10
.end method
.method public requestCompleted(Lcom/millennialmedia/android/bo;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelAdapterListener;->onReceiveAd()V
const-string v0, "MMSDK-requestCompleted"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_e
return-void
:cond_f
const-string v0, "MMSDK-requestCompleted --- No listener found"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_e
.end method
.method public requestFailed(Lcom/millennialmedia/android/bo;Lcom/millennialmedia/android/cc;)V
.registers 6
const/16 v2, 0xcd
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelUtils;->getErrorReason(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v1
invoke-interface {v0, v2, v1}, Lcom/admarvel/android/ads/AdMarvelAdapterListener;->onFailedToReceiveAd(ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V
const-string v0, "MMSDK - requestFailed"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_14
return-void
:cond_15
const-string v0, "MMSDK-requestFailed --- No listener found"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_14
.end method