.class public Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
.super Ljava/lang/Object;
.source "SourceFile"
.field final adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
.field final adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
.field private final adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
.field private final contextReference:Ljava/lang/ref/WeakReference;
.field private final handler:Landroid/os/Handler;
.field private lockedOrientation:Ljava/lang/String;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/os/Handler;Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/content/Context;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->lockedOrientation:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->contextReference:Ljava/lang/ref/WeakReference;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$4900(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
return-object v0
.end method
.method public cacheitem(Ljava/lang/String;Ljava/lang/String;I)V
.registers 12
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
move-object v3, v0
check-cast v3, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v3, :cond_c
:goto_b
:cond_b
return-void
:cond_c
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v2, :cond_b
if-eqz v2, :cond_1e
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v0
if-nez v0, :cond_b
:cond_1e
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xb
if-lt v0, v1, :cond_3c
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$a;
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->O(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/io/File;
move-result-object v6
move-object v3, p1
move-object v4, p2
move v5, p3
invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelWebView$a;-><init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V
invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_b
:cond_3c
new-instance v0, Lcom/admarvel/android/ads/k;
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->O(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/io/File;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/admarvel/android/ads/k;-><init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/io/File;)V
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
const/4 v2, 0x2
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_b
.end method
.method public checkForApplicationSupportedOrientations(Ljava/lang/String;)V
.registers 9
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
if-eqz v0, :cond_13
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_a
:cond_13
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v1
if-eqz v1, :cond_a
instance-of v2, v1, Landroid/app/Activity;
if-eqz v2, :cond_a
check-cast v1, Landroid/app/Activity;
invoke-static {v1}, Lcom/admarvel/android/ads/ab;->a(Landroid/app/Activity;)Ljava/lang/String;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const-string v1, "portrait"
const-string v4, "NO"
invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "landscapeLeft"
const-string v4, "NO"
invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "landscapeRight"
const-string v4, "NO"
invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "portraitUpsideDown"
const-string v4, "NO"
invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
array-length v4, v2
const/4 v1, 0x0
:goto_4c
if-ge v1, v4, :cond_92
aget-object v5, v2, v1
const-string v6, "0"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_62
const-string v5, "portrait"
const-string v6, "YES"
invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_5f
:cond_5f
add-int/lit8 v1, v1, 0x1
goto :goto_4c
:cond_62
const-string v6, "90"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_72
const-string v5, "landscapeLeft"
const-string v6, "YES"
invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_5f
:cond_72
const-string v6, "-90"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_82
const-string v5, "landscapeRight"
const-string v6, "YES"
invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_5f
:cond_82
const-string v6, "180"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_5f
const-string v5, "portraitUpsideDown"
const-string v6, "YES"
invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_5f
:cond_92
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\"{portrait:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v1, "portrait"
invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "landscapeLeft:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v1, "landscapeLeft"
invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "landscapeRight:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v1, "landscapeRight"
invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "portraitUpsideDown:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v1, "portraitUpsideDown"
invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "}\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
if-eqz v0, :cond_a
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v3, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$1;
invoke-direct {v3, p0, v0, p1, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$1;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_a
.end method
.method public checkFrameValues(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_a
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_a
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v2
const/16 v3, 0x9
if-lt v2, v3, :cond_2d
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$t;
invoke-direct {v2, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$t;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_2d
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v3, Lcom/admarvel/android/ads/AdMarvelWebView$f;
invoke-direct {v3, p1, v1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$f;-><init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_a
.end method
.method public checkNetworkAvailable(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_a
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$g;
invoke-direct {v2, v0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView$g;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_a
.end method
.method public cleanup()V
.registers 3
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "window.ADMARVEL.cleanup()"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_8
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$h;
invoke-direct {v1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$h;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_8
.end method
.method public close()V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_1b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_a
:cond_1b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$j;
invoke-direct {v2, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$j;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_a
.end method
.method public createcalendarevent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 14
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v3, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v2, :cond_a
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v0
if-nez v0, :cond_a
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "android.permission.READ_CALENDAR"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "android.permission.WRITE_CALENDAR"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
instance-of v1, v0, Landroid/app/Activity;
if-eqz v1, :cond_a
check-cast v0, Landroid/app/Activity;
new-instance v7, Landroid/app/AlertDialog$Builder;
invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string v0, "Allow access to Calendar?"
invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
move-result-object v8
const-string v9, "Yes"
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;
move-object v1, p0
move-object v4, p1
move-object v5, p2
move-object v6, p3
invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v8, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "No"
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$2;
invoke-direct {v2, p0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$2;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
goto :goto_a
.end method
.method public createcalendarevent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.registers 22
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v3, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v2, :cond_a
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v0
if-nez v0, :cond_a
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "android.permission.READ_CALENDAR"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "android.permission.WRITE_CALENDAR"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
instance-of v1, v0, Landroid/app/Activity;
if-eqz v1, :cond_a
check-cast v0, Landroid/app/Activity;
new-instance v11, Landroid/app/AlertDialog$Builder;
invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string v0, "Allow access to Calendar?"
invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
move-result-object v12
const-string v13, "Yes"
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;
move-object v1, p0
move-object v4, p1
move-object/from16 v5, p2
move-object/from16 v6, p3
move-object/from16 v7, p4
move-object/from16 v8, p5
move-object/from16 v9, p6
move/from16 v10, p7
invoke-direct/range {v0 .. v10}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
invoke-virtual {v12, v13, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "No"
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$4;
invoke-direct {v2, p0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$4;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
goto :goto_a
.end method
.method public createcalendarevent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.registers 38
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v5, :cond_d
:cond_c
:goto_c
return-void
:cond_d
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v4, :cond_c
invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_c
invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
const-string v3, "android.permission.READ_CALENDAR"
invoke-static {v2, v3}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_37
invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
const-string v3, "android.permission.WRITE_CALENDAR"
invoke-static {v2, v3}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_4a
:cond_37
if-eqz p14, :cond_c
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v3, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$6;
move-object/from16 v0, p0
move-object/from16 v1, p14
invoke-direct {v3, v0, v4, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$6;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_c
:cond_4a
invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
instance-of v3, v2, Landroid/app/Activity;
if-eqz v3, :cond_ac
check-cast v2, Landroid/app/Activity;
new-instance v20, Landroid/app/AlertDialog$Builder;
move-object/from16 v0, v20
invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string v2, "Allow access to Calendar?"
move-object/from16 v0, v20
invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
move-result-object v21
const-string v22, "Yes"
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$8;
move-object/from16 v3, p0
move-object/from16 v6, p1
move-object/from16 v7, p2
move-object/from16 v8, p3
move-object/from16 v9, p4
move-object/from16 v10, p5
move-object/from16 v11, p6
move/from16 v12, p7
move-object/from16 v13, p8
move-object/from16 v14, p9
move-object/from16 v15, p10
move-object/from16 v16, p11
move/from16 v17, p12
move/from16 v18, p13
move-object/from16 v19, p14
invoke-direct/range {v2 .. v19}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$8;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
move-object/from16 v0, v21
move-object/from16 v1, v22
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v2
const-string v3, "No"
new-instance v5, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$7;
move-object/from16 v0, p0
move-object/from16 v1, p14
invoke-direct {v5, v0, v1, v4}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$7;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v2
invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
goto/16 :goto_c
:cond_ac
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v3, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$9;
move-object/from16 v0, p0
move-object/from16 v1, p14
invoke-direct {v3, v0, v4, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$9;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_c
.end method
.method public delaydisplay()V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_15
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v0
if-eqz v0, :cond_15
:goto_14
:cond_14
return-void
:cond_15
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_14
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->m(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
goto :goto_14
.end method
.method public detectlocation(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_19
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_19
invoke-static {}, Lcom/admarvel/android/ads/l;->a()Lcom/admarvel/android/ads/l;
move-result-object v1
if-eqz v1, :cond_19
invoke-virtual {v1, v0, p1}, Lcom/admarvel/android/ads/l;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
:cond_19
return-void
.end method
.method public detectsizechange(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_12
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_12
iput-object p1, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->sizeChangeCallback:Ljava/lang/String;
:cond_12
return-void
.end method
.method public detectvisibility(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_12
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_12
iput-object p1, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;
:cond_12
return-void
.end method
.method public disableRotationForExpand()V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_1b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_a
:cond_1b
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->k(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
const/4 v1, 0x0
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->lockedOrientation:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v1
if-eqz v1, :cond_a
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->Q(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->lockedOrientation:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->disablerotations(Ljava/lang/String;)V
goto :goto_a
.end method
.method public disableRotationForExpand(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_1b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_a
:cond_1b
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->k(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->lockedOrientation:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v1
if-eqz v1, :cond_a
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->Q(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->disablerotations(Ljava/lang/String;)V
goto :goto_a
.end method
.method public disableautodetect()V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_1b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_a
:cond_1b
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->j(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
goto :goto_a
.end method
.method public disablerotations()V
.registers 6
const/4 v4, 0x1
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_c
:goto_b
:cond_b
return-void
:cond_c
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_1c
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_b
:cond_1c
const/4 v2, 0x0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
if-eqz v1, :cond_43
instance-of v3, v1, Landroid/app/Activity;
if-eqz v3, :cond_43
check-cast v1, Landroid/app/Activity;
:goto_29
if-eqz v1, :cond_b
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->orientation:I
if-ne v0, v4, :cond_3b
invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto :goto_b
:cond_3b
const/4 v2, 0x2
if-ne v0, v2, :cond_b
const/4 v0, 0x0
invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto :goto_b
:cond_43
move-object v1, v2
goto :goto_29
.end method
.method public disablerotations(Ljava/lang/String;)V
.registers 11
const/4 v8, 0x2
const/high16 v2, -0x8000
const/16 v7, 0x9
const/4 v6, 0x0
const/4 v5, 0x1
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_12
:cond_11
:goto_11
return-void
:cond_12
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_22
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_11
:cond_22
const/4 v3, 0x0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
if-eqz v1, :cond_30
instance-of v4, v1, Landroid/app/Activity;
if-eqz v4, :cond_30
check-cast v1, Landroid/app/Activity;
move-object v3, v1
:cond_30
if-eqz v3, :cond_11
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
if-ge v1, v7, :cond_5e
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget v1, v1, Landroid/content/res/Configuration;->orientation:I
:cond_42
if-eqz p1, :cond_c7
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->w(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-nez v0, :cond_9b
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
if-ge v0, v7, :cond_7e
const-string v0, "Portrait"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_70
if-ne v1, v5, :cond_70
invoke-virtual {v3, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto :goto_11
:cond_5e
new-instance v4, Lcom/admarvel/android/ads/AdMarvelWebView$t;
invoke-direct {v4, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$t;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
move v1, v2
:goto_69
if-ne v1, v2, :cond_42
invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelWebView$t;->a(Lcom/admarvel/android/ads/AdMarvelWebView$t;)I
move-result v1
goto :goto_69
:cond_70
const-string v0, "LandscapeLeft"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_11
if-ne v1, v8, :cond_11
invoke-virtual {v3, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto :goto_11
:cond_7e
const-string v0, "Portrait"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8c
if-nez v1, :cond_8c
invoke-virtual {v3, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto :goto_11
:cond_8c
const-string v0, "LandscapeLeft"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_11
if-ne v1, v5, :cond_11
invoke-virtual {v3, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto/16 :goto_11
:cond_9b
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
if-ge v0, v7, :cond_bb
const-string v0, "Portrait"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ae
invoke-virtual {v3, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto/16 :goto_11
:cond_ae
const-string v0, "LandscapeLeft"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_11
invoke-virtual {v3, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto/16 :goto_11
:cond_bb
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$ah;
invoke-direct {v1, v3, p1}, Lcom/admarvel/android/ads/AdMarvelWebView$ah;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_11
:cond_c7
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
if-ge v0, v7, :cond_db
if-ne v1, v5, :cond_d4
invoke-virtual {v3, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto/16 :goto_11
:cond_d4
if-ne v1, v8, :cond_11
invoke-virtual {v3, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto/16 :goto_11
:cond_db
if-nez v1, :cond_eb
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$ah;
const-string v2, "Portrait"
invoke-direct {v1, v3, v2}, Lcom/admarvel/android/ads/AdMarvelWebView$ah;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_11
:cond_eb
if-ne v1, v5, :cond_fb
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$ah;
const-string v2, "LandscapeLeft"
invoke-direct {v1, v3, v2}, Lcom/admarvel/android/ads/AdMarvelWebView$ah;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_11
:cond_fb
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$ah;
const-string v2, "none"
invoke-direct {v1, v3, v2}, Lcom/admarvel/android/ads/AdMarvelWebView$ah;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_11
.end method
.method public enableautodetect()V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_1b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_a
:cond_1b
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->j(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
goto :goto_a
.end method
.method public enablerotations()V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_1b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_a
:cond_1b
const/4 v2, 0x0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
if-eqz v1, :cond_36
instance-of v3, v1, Landroid/app/Activity;
if-eqz v3, :cond_36
check-cast v1, Landroid/app/Activity;
:goto_28
if-eqz v1, :cond_a
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->R(Lcom/admarvel/android/ads/AdMarvelWebView;)I
move-result v2
invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->k(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
goto :goto_a
:cond_36
move-object v1, v2
goto :goto_28
.end method
.method public expandto(II)V
.registers 10
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_11
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-eqz v1, :cond_11
:goto_10
:cond_10
return-void
:cond_11
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v1, :cond_10
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v2
if-eqz v2, :cond_10
instance-of v0, v2, Landroid/app/Activity;
if-eqz v0, :cond_10
check-cast v2, Landroid/app/Activity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v3, Lcom/admarvel/android/ads/AdMarvelWebView$n;
invoke-direct {v3, v1, v2, p1, p2}, Lcom/admarvel/android/ads/AdMarvelWebView$n;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;II)V
invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_10
:cond_38
iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
move v3, p1
move v4, p2
invoke-direct/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelWebView$o;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IILcom/admarvel/android/ads/AdMarvelAd;)V
invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_10
.end method
.method public expandto(IIIILjava/lang/String;Ljava/lang/String;)V
.registers 16
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_11
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-eqz v1, :cond_11
:cond_10
:goto_10
return-void
:cond_11
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v1, :cond_10
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v2
if-eqz v2, :cond_10
instance-of v0, v2, Landroid/app/Activity;
if-eqz v0, :cond_10
check-cast v2, Landroid/app/Activity;
if-eqz p6, :cond_33
invoke-virtual {p6}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_33
invoke-virtual {p0, p5, p6}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->expandtofullscreen(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
:cond_33
if-eqz p5, :cond_37
iput-object p5, v1, Lcom/admarvel/android/ads/AdMarvelWebView;->c:Ljava/lang/String;
:cond_37
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_4c
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$n;
move v3, p1
move v4, p2
move v5, p3
move v6, p4
invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelWebView$n;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IIII)V
invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_10
:cond_4c
iget-object v8, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
move v3, p1
move v4, p2
move v5, p3
move v6, p4
invoke-direct/range {v0 .. v7}, Lcom/admarvel/android/ads/AdMarvelWebView$o;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IIIILcom/admarvel/android/ads/AdMarvelAd;)V
invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_10
.end method
.method public expandto(IILjava/lang/String;Ljava/lang/String;)V
.registers 12
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_11
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-eqz v1, :cond_11
:cond_10
:goto_10
return-void
:cond_11
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v1, :cond_10
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v2
if-eqz v2, :cond_10
instance-of v0, v2, Landroid/app/Activity;
if-eqz v0, :cond_10
check-cast v2, Landroid/app/Activity;
if-eqz p4, :cond_33
invoke-virtual {p4}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_33
invoke-virtual {p0, p3, p4}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->expandtofullscreen(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
:cond_33
if-eqz p3, :cond_37
iput-object p3, v1, Lcom/admarvel/android/ads/AdMarvelWebView;->c:Ljava/lang/String;
:cond_37
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v3, Lcom/admarvel/android/ads/AdMarvelWebView$n;
invoke-direct {v3, v1, v2, p1, p2}, Lcom/admarvel/android/ads/AdMarvelWebView$n;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;II)V
invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_10
:cond_48
iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
move v3, p1
move v4, p2
invoke-direct/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelWebView$o;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IILcom/admarvel/android/ads/AdMarvelAd;)V
invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_10
.end method
.method public expandtofullscreen()V
.registers 10
const/4 v5, -0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_13
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-eqz v1, :cond_13
:cond_12
:goto_12
return-void
:cond_13
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v1, :cond_12
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v2
if-eqz v2, :cond_12
instance-of v0, v2, Landroid/app/Activity;
if-eqz v0, :cond_12
check-cast v2, Landroid/app/Activity;
const/4 v0, 0x1
invoke-static {v1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->w(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->lockedOrientation:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->disablerotations(Ljava/lang/String;)V
:cond_38
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_4b
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$n;
move v4, v3
move v6, v5
invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelWebView$n;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IIII)V
invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_12
:cond_4b
iget-object v8, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
move v4, v3
move v6, v5
invoke-direct/range {v0 .. v7}, Lcom/admarvel/android/ads/AdMarvelWebView$o;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IIIILcom/admarvel/android/ads/AdMarvelAd;)V
invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_12
.end method
.method public expandtofullscreen(Ljava/lang/String;)V
.registers 11
const/4 v5, -0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_13
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-eqz v1, :cond_13
:cond_12
:goto_12
return-void
:cond_13
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v1, :cond_12
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v2
if-eqz v2, :cond_12
instance-of v0, v2, Landroid/app/Activity;
if-eqz v0, :cond_12
check-cast v2, Landroid/app/Activity;
const/4 v0, 0x1
invoke-static {v1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
if-eqz p1, :cond_31
iput-object p1, v1, Lcom/admarvel/android/ads/AdMarvelWebView;->c:Ljava/lang/String;
:cond_31
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->w(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->lockedOrientation:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->disablerotations(Ljava/lang/String;)V
:cond_3c
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_4f
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$n;
move v4, v3
move v6, v5
invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelWebView$n;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IIII)V
invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_12
:cond_4f
iget-object v8, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
move v4, v3
move v6, v5
invoke-direct/range {v0 .. v7}, Lcom/admarvel/android/ads/AdMarvelWebView$o;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IIIILcom/admarvel/android/ads/AdMarvelAd;)V
invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_12
.end method
.method public expandtofullscreen(Ljava/lang/String;Ljava/lang/String;)V
.registers 12
const/4 v6, 0x1
const/4 v5, -0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_14
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-eqz v1, :cond_14
:cond_13
:goto_13
return-void
:cond_14
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v1, :cond_13
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v0
const/4 v2, 0x0
if-eqz v0, :cond_72
instance-of v4, v0, Landroid/app/Activity;
if-eqz v4, :cond_72
check-cast v0, Landroid/app/Activity;
move-object v2, v0
:cond_2c
if-eqz p1, :cond_30
iput-object p1, v1, Lcom/admarvel/android/ads/AdMarvelWebView;->c:Ljava/lang/String;
:cond_30
invoke-static {v1, v6}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
if-eqz p2, :cond_40
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_40
iput-object p2, v1, Lcom/admarvel/android/ads/AdMarvelWebView;->d:Ljava/lang/String;
invoke-static {v1, v6}, Lcom/admarvel/android/ads/AdMarvelWebView;->g(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
:cond_40
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->w(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_5d
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->P(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_81
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->lockedOrientation:Ljava/lang/String;
if-eqz v0, :cond_7b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->lockedOrientation:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_7b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->lockedOrientation:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->b(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
:goto_5d
:cond_5d
if-eqz p2, :cond_87
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_87
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$p;
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-direct {v2, v1, p2, v3}, Lcom/admarvel/android/ads/AdMarvelWebView$p;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_13
:cond_72
if-eqz p2, :cond_13
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_2c
goto :goto_13
:cond_7b
const-string v0, "Current"
invoke-static {v1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->b(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
goto :goto_5d
:cond_81
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->lockedOrientation:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->disablerotations(Ljava/lang/String;)V
goto :goto_5d
:cond_87
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v0
if-eqz v0, :cond_9b
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$n;
move v4, v3
move v6, v5
invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelWebView$n;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IIII)V
invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_13
:cond_9b
iget-object v8, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
move v4, v3
move v6, v5
invoke-direct/range {v0 .. v7}, Lcom/admarvel/android/ads/AdMarvelWebView$o;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IIIILcom/admarvel/android/ads/AdMarvelAd;)V
invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_13
.end method
.method public fetchWebViewHtmlContent(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAd;->setHtmlJson(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public finishVideo()V
.registers 3
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "window.ADMARVEL.finishVideo()"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_8
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$q;
invoke-direct {v1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$q;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_8
.end method
.method public firePixel(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_a
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_a
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v3, Lcom/admarvel/android/ads/AdMarvelWebView$r;
invoke-direct {v3, v1, v0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView$r;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_a
.end method
.method public getAndroidOSVersionAPI()I
.registers 2
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
return v0
.end method
.method public getLocation(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_1a
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_1a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$s;
invoke-direct {v2, v0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView$s;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_1a
return-void
.end method
.method public initAdMarvel(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_a
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_a
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v2
const/16 v3, 0x9
if-lt v2, v3, :cond_2d
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$t;
invoke-direct {v2, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$t;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_2d
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v3, Lcom/admarvel/android/ads/AdMarvelWebView$u;
invoke-direct {v3, p1, v1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$u;-><init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_a
.end method
.method public initVideo(Ljava/lang/String;)V
.registers 6
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "window.ADMARVEL.setVideoUrl(\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
invoke-static {v0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_8
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_8
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->S(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_8
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->S(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_8
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v3, Lcom/admarvel/android/ads/AdMarvelWebView$v;
invoke-direct {v3, p1, v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$v;-><init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_8
.end method
.method public isinitialload()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isinstalled(Ljava/lang/String;)I
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-nez v0, :cond_d
move v0, v1
:goto_c
return v0
:cond_d
if-eqz v0, :cond_17
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-eqz v2, :cond_17
move v0, v1
goto :goto_c
:cond_17
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_23
const/4 v0, 0x1
goto :goto_c
:cond_23
move v0, v1
goto :goto_c
.end method
.method public isvideocached()I
.registers 5
const/16 v3, 0xe
const/4 v1, 0x0
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
if-ge v0, v3, :cond_b
move v0, v1
:goto_a
return v0
:cond_b
const-string v0, "window.ADMARVEL.isvideocached()"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_1c
move v0, v1
goto :goto_a
:cond_1c
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v2
if-lt v2, v3, :cond_2c
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$w;
invoke-direct {v1}, Lcom/admarvel/android/ads/AdMarvelWebView$w;-><init>()V
invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$w;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)I
move-result v0
goto :goto_a
:cond_2c
move v0, v1
goto :goto_a
.end method
.method public loadVideo()V
.registers 5
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "window.ADMARVEL.loadVideo()"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_8
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_8
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->S(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_8
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->S(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_8
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$x;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->S(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$x;-><init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_8
.end method
.method public notifyInAppBrowserCloseAction(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_12
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_12
iput-object p1, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mInAppBrowserCloseCallback:Ljava/lang/String;
:cond_12
return-void
.end method
.method public pauseVideo()V
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "window.ADMARVEL.pauseVideo()"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_8
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$aa;
invoke-direct {v2, v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$aa;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_8
.end method
.method public playVideo()V
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "window.ADMARVEL.playVideo()"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_8
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->S(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_8
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->S(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_8
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$ab;
invoke-direct {v2, v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$ab;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_8
.end method
.method public readyfordisplay()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_16
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v0
if-eqz v0, :cond_16
:cond_15
:goto_15
return-void
:cond_16
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_15
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->l(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v1
if-eqz v1, :cond_49
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->k(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v1
if-eqz v1, :cond_15
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
if-eqz v1, :cond_15
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-interface {v1, v0, v2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;)V
goto :goto_15
:cond_49
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->m(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
goto :goto_15
.end method
.method public redirect(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_1b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_a
:cond_1b
if-eqz v1, :cond_a
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b()Z
move-result v1
if-nez v1, :cond_3b
if-eqz p1, :cond_a
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_a
const-string v1, "admarvelsdk"
invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3b
const-string v1, "admarvelinternal"
invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a
:cond_3b
invoke-static {v0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V
goto :goto_a
.end method
.method public registerEventsForAdMarvelVideo(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_8
if-eqz p2, :cond_8
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
const-string v1, "loadeddata"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2f
invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->e(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
goto :goto_8
:cond_2f
const-string v1, "play"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3b
invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
goto :goto_8
:cond_3b
const-string v1, "canplay"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_47
invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->g(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
goto :goto_8
:cond_47
const-string v1, "timeupdate"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_53
invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
goto :goto_8
:cond_53
const-string v1, "ended"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5f
invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->i(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
goto :goto_8
:cond_5f
const-string v1, "pause"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6b
invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->j(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
goto :goto_8
:cond_6b
const-string v1, "resume"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_77
invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->k(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
goto :goto_8
:cond_77
const-string v1, "stop"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_83
invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->l(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
goto :goto_8
:cond_83
const-string v1, "error"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_8
invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->m(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
goto/16 :goto_8
.end method
.method public registeraccelerationevent(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_a
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_a
invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;
move-result-object v2
if-eqz v2, :cond_a
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_a
invoke-virtual {v2, p1}, Lcom/admarvel/android/ads/n;->b(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v2, v0, v1}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
goto :goto_a
.end method
.method public registerheadingevent(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_a
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_a
invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;
move-result-object v2
if-eqz v2, :cond_a
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_a
invoke-virtual {v2, p1}, Lcom/admarvel/android/ads/n;->c(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v2, v0, v1}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
goto :goto_a
.end method
.method public registernetworkchangeevent(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_13
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_13
invoke-static {v0, p1}, Lcom/admarvel/android/ads/e;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public registershakeevent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_a
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_a
invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;
move-result-object v2
if-eqz v2, :cond_a
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_a
invoke-virtual {v2, p1}, Lcom/admarvel/android/ads/n;->a(Ljava/lang/String;)V
invoke-virtual {v2, p2, p3}, Lcom/admarvel/android/ads/n;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v2, v0, v1}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
goto :goto_a
.end method
.method public reportAdMarvelAdHistory()V
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_a
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelUtils;->reportAdMarvelAdHistory(Landroid/content/Context;)Ljava/lang/String;
goto :goto_a
.end method
.method public reportAdMarvelAdHistory(I)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_a
invoke-static {p1, v0}, Lcom/admarvel/android/ads/AdMarvelUtils;->reportAdMarvelAdHistory(ILandroid/content/Context;)Ljava/lang/String;
goto :goto_a
.end method
.method public resumeVideo()V
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "window.ADMARVEL.resumeVideo()"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_8
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$ae;
invoke-direct {v2, v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$ae;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_8
.end method
.method public sdkclosebutton(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_1d
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_c
:cond_1d
invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->i(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->j(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
if-eqz p1, :cond_37
const-string v1, "true"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_37
invoke-static {v0, v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
invoke-static {v0, v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->j(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
goto :goto_c
:cond_37
if-eqz p1, :cond_c
const-string v1, "false"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_c
if-eqz p2, :cond_c
const-string v1, "true"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_c
invoke-static {v0, v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
invoke-static {v0, v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->i(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->j(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
goto :goto_c
.end method
.method public sdkclosebutton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_1d
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_c
:cond_1d
invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->i(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->j(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
if-eqz p1, :cond_42
const-string v1, "true"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_42
invoke-static {v0, v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
invoke-static {v0, v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->j(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
:goto_36
:cond_36
if-eqz p3, :cond_c
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_c
invoke-static {v0, p3}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
goto :goto_c
:cond_42
if-eqz p1, :cond_36
const-string v1, "false"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_36
if-eqz p2, :cond_36
const-string v1, "true"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_36
invoke-static {v0, v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
invoke-static {v0, v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->i(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->j(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
goto :goto_36
.end method
.method public seekVideoTo(F)V
.registers 5
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "window.ADMARVEL.seekToVideo()"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_8
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->S(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_8
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->S(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_8
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$af;
invoke-direct {v2, v0, v1, p1}, Lcom/admarvel/android/ads/AdMarvelWebView$af;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;F)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_8
.end method
.method public setInitialAudioState(Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "window.ADMARVEL.setInitialAudioState()"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_8
const-string v1, "mute"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_31
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->e(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
goto :goto_8
:cond_31
const-string v1, "unmute"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_8
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->e(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
goto :goto_8
.end method
.method public setVideoContainerHeight(I)V
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "ADMARVEL.setVideoContainerHeight "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
invoke-static {v0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;I)I
goto :goto_8
.end method
.method public setVideoDimensions(IIII)V
.registers 12
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "ADMARVEL.setVideoDimensions "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v1, :cond_3f
:cond_3e
:goto_3e
return-void
:cond_3f
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v2, 0xe
if-lt v0, v2, :cond_3e
invoke-static {v1, p3}, Lcom/admarvel/android/ads/AdMarvelWebView;->b(Lcom/admarvel/android/ads/AdMarvelWebView;I)I
invoke-static {v1, p4}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;I)I
invoke-static {v1, p1}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;I)I
invoke-static {v1, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->e(Lcom/admarvel/android/ads/AdMarvelWebView;I)I
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v2, :cond_3e
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v0
if-nez v0, :cond_3e
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;
move v3, p1
move v4, p2
move v5, p3
move v6, p4
invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelWebView$ac;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;IIII)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_3e
.end method
.method public setbackgroundcolor(Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_a
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_a
const-string v2, "0"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_34
const/4 v2, 0x0
:goto_24
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setBackgroundColor(I)V
iput v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->b:I
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$ag;
invoke-direct {v2, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$ag;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_a
:cond_34
const-string v2, "#"
const-string v3, ""
invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
const/16 v3, 0x10
invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
move-result-wide v2
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
const/4 v5, 0x7
if-eq v4, v5, :cond_50
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
const/4 v5, 0x6
if-ne v4, v5, :cond_54
:cond_50
const-wide/32 v4, -0x1000000
or-long/2addr v2, v4
:cond_54
long-to-int v2, v2
goto :goto_24
.end method
.method public setsoftwarelayer()V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_a
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_a
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
const/16 v2, 0xb
if-lt v1, v2, :cond_a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$ao;
invoke-direct {v2, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$ao;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_a
.end method
.method public stopVideo()V
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "window.ADMARVEL.stopVideo()"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_8
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$ai;
invoke-direct {v2, v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$ai;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_8
.end method
.method public storepicture(Ljava/lang/String;Ljava/lang/String;)V
.registers 12
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v2, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v3, :cond_a
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v0
if-nez v0, :cond_a
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {p1, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3b
const-string v0, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_48
:cond_3b
if-eqz p2, :cond_a
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$10;
invoke-direct {v1, p0, v3, p2}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$10;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_a
:cond_48
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
instance-of v1, v0, Landroid/app/Activity;
if-eqz v1, :cond_81
check-cast v0, Landroid/app/Activity;
new-instance v6, Landroid/app/AlertDialog$Builder;
invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string v0, "Allow storing image in your Gallery?"
invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
move-result-object v7
const-string v8, "Yes"
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;
move-object v1, p0
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "No"
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;
invoke-direct {v2, p0, p2, v3}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
goto :goto_a
:cond_81
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$13;
invoke-direct {v1, p0, v3, p2}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$13;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_a
.end method
.method public triggerVibration(Ljava/lang/String;)V
.registers 5
const/16 v2, 0x1f4
const/16 v0, 0x2710
if-eqz p1, :cond_2d
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_2d
:try_start_10
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
if-le v1, v0, :cond_37
const-string v1, "Time mentioned is greater than Max duration "
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_1b
:try_end_1b
.catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1b} :catch_27
move v1, v0
:goto_1c
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_2f
:goto_26
return-void
:catch_27
move-exception v0
const-string v0, "NumberFormatException so setting vibrate time to 500 Milli Sec"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:cond_2d
move v1, v2
goto :goto_1c
:cond_2f
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;I)Z
goto :goto_26
:cond_37
move v0, v1
goto :goto_1b
.end method
.method public updateAudioState(Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "window.ADMARVEL.updateAudioState()"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_8
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$am;
invoke-direct {v1, v0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView$am;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_8
.end method
.method public updatestate(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_1b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_a
:cond_1b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$an;
invoke-direct {v2, p1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$an;-><init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelWebView;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_a
.end method