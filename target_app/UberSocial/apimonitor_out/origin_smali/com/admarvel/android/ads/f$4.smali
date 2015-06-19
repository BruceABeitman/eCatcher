.class Lcom/admarvel/android/ads/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/f;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/f;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/f$4;->a:Lcom/admarvel/android/ads/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/ads/f$4;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/f;->c(Lcom/admarvel/android/ads/f;I)I

    return-void
.end method
