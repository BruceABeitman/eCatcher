.class  Lcom/admarvel/android/ads/AdMarvelActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$l;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$l;->b:Ljava/lang/ref/WeakReference;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$l;->c:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$l;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$l;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;
if-eqz v0, :cond_a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$l;->c:Ljava/lang/String;
if-eqz v1, :cond_a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$l;->c:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_a
sget-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z
if-eqz v1, :cond_3d
new-instance v1, Lcom/admarvel/android/b/a;
invoke-direct {v1}, Lcom/admarvel/android/b/a;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$l;->c:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;
move-result-object v3
invoke-virtual {v1, v2, v0, v3}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
:try_end_33
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34
goto :goto_a
:catch_34
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_a
:try_start_3d
:cond_3d
new-instance v1, Lcom/admarvel/android/ads/ab;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;
move-result-object v2
invoke-direct {v1, v0, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$l;->c:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;)V
:try_end_4b
.catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4b} :catch_34
goto :goto_a
.end method