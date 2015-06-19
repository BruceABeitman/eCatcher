.class Lcom/admarvel/android/ads/p$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/p;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/p;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/p$6;->a:Lcom/admarvel/android/ads/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/ads/p$6;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/p;->e(Lcom/admarvel/android/ads/p;I)I

    return-void
.end method
