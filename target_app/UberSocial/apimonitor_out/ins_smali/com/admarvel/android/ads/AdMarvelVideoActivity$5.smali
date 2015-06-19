.class  Lcom/admarvel/android/ads/AdMarvelVideoActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$5;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$5;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;
if-eqz v0, :cond_f
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->d()V
:goto_f
:cond_f
:try_end_f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_f
.end method