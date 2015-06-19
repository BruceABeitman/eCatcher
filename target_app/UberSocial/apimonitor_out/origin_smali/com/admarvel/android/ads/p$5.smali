.class Lcom/admarvel/android/ads/p$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/p;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/p;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/p$5;->a:Lcom/admarvel/android/ads/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/p$5;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/p;->c(Lcom/admarvel/android/ads/p;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/p$5;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/p;->d(Lcom/admarvel/android/ads/p;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/p$5;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->e(Lcom/admarvel/android/ads/p;)Lcom/admarvel/android/ads/p$a;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/admarvel/android/ads/p$5;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->e(Lcom/admarvel/android/ads/p;)Lcom/admarvel/android/ads/p$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->k()V

    :cond_1d
    iget-object v0, p0, Lcom/admarvel/android/ads/p$5;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->k(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/admarvel/android/ads/p$5;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->k(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/p$5;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v1}, Lcom/admarvel/android/ads/p;->d(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_37
    return v2
.end method
