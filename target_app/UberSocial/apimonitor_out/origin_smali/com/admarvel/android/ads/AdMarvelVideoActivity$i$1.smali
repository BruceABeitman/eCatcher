.class Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->d(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;Z)Z

    goto :goto_8

    :cond_27
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->e(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->f(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method
