.class Lcom/admarvel/android/ads/p$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/p;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/p;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/p$4;->a:Lcom/admarvel/android/ads/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/p$4;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->e(Lcom/admarvel/android/ads/p;)Lcom/admarvel/android/ads/p$a;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/admarvel/android/ads/p$4;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->e(Lcom/admarvel/android/ads/p;)Lcom/admarvel/android/ads/p$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->k()V

    :cond_11
    return-void
.end method
