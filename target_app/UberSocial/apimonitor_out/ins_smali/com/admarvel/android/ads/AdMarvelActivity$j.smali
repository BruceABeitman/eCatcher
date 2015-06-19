.class  Lcom/admarvel/android/ads/AdMarvelActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelActivity;
.field private final b:Lcom/admarvel/android/ads/AdMarvelAd;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelAd;)V
.registers 3
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$j;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$j;->b:Lcom/admarvel/android/ads/AdMarvelAd;
return-void
.end method
.method public run()V
.registers 5
const/4 v3, 0x0
:try_start_1
new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$a;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$j;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$j;->b:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelActivity$a;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelAd;)V
sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelActivity$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
:goto_12
:try_end_12
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$j;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->q(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_12
.end method