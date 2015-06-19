.class Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adMarvelActivityReference:Ljava/lang/ref/WeakReference;

.field private final adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;

.field private final adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

.field private lastOrientation:I

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->lastOrientation:I

    return-void
.end method


# virtual methods
.method public admarvelCheckFrameValues(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public checkForApplicationSupportedOrientations(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_14

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v2, "portrait"

    const-string v5, "NO"

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "landscapeLeft"

    const-string v5, "NO"

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "landscapeRight"

    const-string v5, "NO"

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "portraitUpsideDown"

    const-string v5, "NO"

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v5, v3

    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v5, :cond_92

    aget-object v6, v3, v2

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    const-string v6, "portrait"

    const-string v7, "YES"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_62
    const-string v7, "90"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    const-string v6, "landscapeLeft"

    const-string v7, "YES"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_72
    const-string v7, "-90"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    const-string v6, "landscapeRight"

    const-string v7, "YES"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_82
    const-string v7, "180"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const-string v6, "portraitUpsideDown"

    const-string v7, "YES"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"{portrait:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "portrait"

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "landscapeLeft:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "landscapeLeft"

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "landscapeRight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "landscapeRight"

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "portraitUpsideDown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "portraitUpsideDown"

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$1;

    invoke-direct {v3, p0, v0, p1, v2}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$1;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_14
.end method

.method public checkNetworkAvailable(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$c;

    invoke-direct {v2, v1, p1}, Lcom/admarvel/android/ads/AdMarvelActivity$c;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public cleanup()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "window.ADMARVEL.cleanup()"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_f

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$d;

    invoke-direct {v1, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$d;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public closeinterstitialad()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_1b
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->q(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a
.end method

.method public createcalendarevent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {v2, v0}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {v2, v0}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Allow access to Calendar?"

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const-string v9, "Yes"

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$3;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$3;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$2;

    invoke-direct {v2, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$2;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_a
.end method

.method public createcalendarevent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 22
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {v2, v0}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {v2, v0}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Allow access to Calendar?"

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const-string v13, "Yes"

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v12, v13, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$4;

    invoke-direct {v2, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$4;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_a
.end method

.method public createcalendarevent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 38
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v4, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v4, v2}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-static {v4, v2}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    :cond_2f
    if-eqz p14, :cond_c

    invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p14

    invoke-direct {v3, v0, v5, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$6;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :cond_42
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Allow access to Calendar?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const-string v22, "Yes"

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;

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

    invoke-direct/range {v2 .. v19}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    new-instance v6, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p14

    invoke-direct {v6, v0, v1, v4, v5}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$7;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_c
.end method

.method public detectlocation(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

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
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

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
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_3d

    iget-boolean v1, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    if-nez v1, :cond_3d

    iput-object p1, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInterstitialAdDisplayed:Z

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    :cond_3d
    return-void
.end method

.method public disableautodetect()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getEnableAutoDetect()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_18
    return-void
.end method

.method public disablebackbutton()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->D(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->D(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2c
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->b(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z

    goto :goto_a
.end method

.method public disablebackbutton(I)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_a

    if-lez p1, :cond_a

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->b(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->D(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->D(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_32
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->D(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/Runnable;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a
.end method

.method public disableclosebutton(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    if-eqz p1, :cond_10

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "false"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->sdkclosebutton(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public disablerotations()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->disablerotations(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public disablerotations(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/high16 v2, -0x8000

    const/16 v6, 0x9

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_27
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->lastOrientation:I

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    if-ge v1, v6, :cond_51

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    :cond_3d
    if-eqz p1, :cond_97

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    if-ge v1, v6, :cond_71

    const-string v1, "Portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {v0, v4}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V

    goto :goto_10

    :cond_51
    new-instance v3, Lcom/admarvel/android/ads/AdMarvelActivity$n;

    invoke-direct {v3, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$n;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    :goto_5e
    if-ne v1, v2, :cond_3d

    invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelActivity$n;->a(Lcom/admarvel/android/ads/AdMarvelActivity$n;)I

    move-result v1

    goto :goto_5e

    :cond_65
    const-string v1, "LandscapeLeft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v5}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V

    goto :goto_10

    :cond_71
    const-string v1, "Portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {v0, v4}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V

    goto :goto_10

    :cond_7d
    const-string v1, "LandscapeLeft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {v0, v5}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V

    goto :goto_10

    :cond_89
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$w;

    invoke-direct {v2, v0, p1}, Lcom/admarvel/android/ads/AdMarvelActivity$w;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_10

    :cond_97
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v2

    if-ge v2, v6, :cond_ac

    if-ne v1, v4, :cond_a4

    invoke-virtual {v0, v4}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V

    goto/16 :goto_10

    :cond_a4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    invoke-virtual {v0, v5}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V

    goto/16 :goto_10

    :cond_ac
    if-nez v1, :cond_be

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$w;

    const-string v3, "Portrait"

    invoke-direct {v2, v0, v3}, Lcom/admarvel/android/ads/AdMarvelActivity$w;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_10

    :cond_be
    if-ne v1, v4, :cond_d0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$w;

    const-string v3, "LandscapeLeft"

    invoke-direct {v2, v0, v3}, Lcom/admarvel/android/ads/AdMarvelActivity$w;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_10

    :cond_d0
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$w;

    const-string v3, "none"

    invoke-direct {v2, v0, v3}, Lcom/admarvel/android/ads/AdMarvelActivity$w;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_10
.end method

.method public enableVideoCloseInBackground()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z

    goto :goto_a
.end method

.method public enableautodetect()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getEnableAutoDetect()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_18
    return-void
.end method

.method public enablebackbutton()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->b(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z

    goto :goto_a
.end method

.method public enablerotations()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v0, :cond_16

    iget v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->lastOrientation:I

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V

    goto :goto_16
.end method

.method public fetchWebViewHtmlContent(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAd;->setHtmlJson(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public firePixel(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelActivity$l;

    invoke-direct {v3, v1, v0, p1}, Lcom/admarvel/android/ads/AdMarvelActivity$l;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public getAndroidOSVersionAPI()I
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    return v0
.end method

.method public getLocation(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$m;

    invoke-direct {v2, v1, p1}, Lcom/admarvel/android/ads/AdMarvelActivity$m;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public initAdMarvel(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelActivity$p;

    invoke-direct {v3, p1, v1, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$p;-><init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public isinstalled(Ljava/lang/String;)I
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_d

    move v0, v2

    :goto_c
    return v0

    :cond_d
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-eqz v1, :cond_1f

    move v0, v2

    goto :goto_c

    :cond_1f
    invoke-static {v0, p1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_c

    :cond_27
    move v0, v2

    goto :goto_c
.end method

.method public loadVideo()V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "window.ADMARVEL.loadVideo()"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->d:Z

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->videoUrl:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->videoUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$q;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->videoUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$q;-><init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public notifyInAppBrowserCloseAction(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

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

.method public notifyInterstitialBackgroundState(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v0, :cond_8

    iput-object p1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->f:Ljava/lang/String;

    goto :goto_8
.end method

.method public pauseVideo()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "window.ADMARVEL.pauseVideo()"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_f

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$r;

    invoke-direct {v2, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$r;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public playVideo()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "window.ADMARVEL.playVideo()"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->videoUrl:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->videoUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$s;

    invoke-direct {v2, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$s;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public redirect(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$u;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-direct {v1, p1, v0, v2}, Lcom/admarvel/android/ads/AdMarvelActivity$u;-><init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelAd;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public registerEventsForAdMarvelVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v0, :cond_10

    const-string v1, "loadeddata"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelActivity;->b(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10

    :cond_27
    const-string v1, "play"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10

    :cond_33
    const-string v1, "canplay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelActivity;->d(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10

    :cond_3f
    const-string v1, "timeupdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10

    :cond_4b
    const-string v1, "ended"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10

    :cond_57
    const-string v1, "pause"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelActivity;->g(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10

    :cond_63
    const-string v1, "error"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelActivity;->h(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10
.end method

.method public registerInterstitialCloseCallback(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v0, :cond_8

    iput-object p1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;

    goto :goto_8
.end method

.method public registeraccelerationevent(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;

    move-result-object v2

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, p1}, Lcom/admarvel/android/ads/n;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    goto :goto_a
.end method

.method public registerheadingevent(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

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

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, p1}, Lcom/admarvel/android/ads/n;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    goto :goto_a
.end method

.method public registernetworkchangeevent(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

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
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;

    move-result-object v2

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, p1}, Lcom/admarvel/android/ads/n;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Lcom/admarvel/android/ads/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    goto :goto_a
.end method

.method public reportAdMarvelAdHistory()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelUtils;->reportAdMarvelAdHistory(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_a
.end method

.method public reportAdMarvelAdHistory(I)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {p1, v0}, Lcom/admarvel/android/ads/AdMarvelUtils;->reportAdMarvelAdHistory(ILandroid/content/Context;)Ljava/lang/String;

    goto :goto_a
.end method

.method public sdkclosebutton(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

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
    if-eqz p1, :cond_35

    const-string v1, "false"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    if-eqz p2, :cond_2e

    const-string v1, "true"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Z)V

    goto :goto_a

    :cond_2e
    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Z)V

    goto :goto_a

    :cond_35
    if-eqz p1, :cond_a

    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j()V

    goto :goto_a
.end method

.method public seekVideoTo(F)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "window.ADMARVEL.seekToVideo()"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->videoUrl:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->videoUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$v;

    invoke-direct {v2, v0, v1, p1}, Lcom/admarvel/android/ads/AdMarvelActivity$v;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;F)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

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

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_27

    :goto_26
    return-void

    :cond_27
    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->videoUrl:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->d:Z

    goto :goto_26
.end method

.method public setbackgroundcolor(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setBackgroundColor(I)V

    :cond_20
    return-void

    :cond_21
    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_41

    :cond_3d
    const-wide/32 v3, -0x1000000

    or-long/2addr v1, v3

    :cond_41
    long-to-int v1, v1

    goto :goto_1d
.end method

.method public stopVideo()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "window.ADMARVEL.stopVideo()"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_f

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$x;

    invoke-direct {v2, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$x;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public storepicture(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    :cond_33
    if-eqz p2, :cond_a

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$9;

    invoke-direct {v1, p0, v3, p2}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$9;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    :cond_42
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Allow storing image in your Gallery?"

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "Yes"

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v4, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$10;

    invoke-direct {v4, p0, p2, v2, v3}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$10;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_a
.end method

.method public triggerVibration(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

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

    if-le v1, v0, :cond_33

    const-string v1, "Time mentioned is greater than Max duration "

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1b} :catch_27

    :goto_1b
    move v1, v0

    :goto_1c
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

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
    invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;I)Z

    goto :goto_26

    :cond_33
    move v0, v1

    goto :goto_1b
.end method
