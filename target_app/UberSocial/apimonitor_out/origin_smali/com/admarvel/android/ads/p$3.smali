.class Lcom/admarvel/android/ads/p$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/p;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/p;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/p$3;->a:Lcom/admarvel/android/ads/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/admarvel/android/ads/p$3;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/p;->c(Lcom/admarvel/android/ads/p;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/p$3;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/p;->d(Lcom/admarvel/android/ads/p;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/p$3;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->j(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/admarvel/android/ads/p$3;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->j(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/p$3;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v1}, Lcom/admarvel/android/ads/p;->d(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_22
    return-void
.end method
