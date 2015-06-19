.class Lcom/admarvel/android/ads/AdMarvelActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/AdMarvelActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelActivity;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity$g;

    :goto_16
    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->setCancelable(Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1f

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_16

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in disable Back press button "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_1c
.end method
