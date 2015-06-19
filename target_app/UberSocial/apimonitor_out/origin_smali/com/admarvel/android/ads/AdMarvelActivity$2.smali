.class Lcom/admarvel/android/ads/AdMarvelActivity$2;
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

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$2;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$2;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->b(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z

    return-void
.end method
