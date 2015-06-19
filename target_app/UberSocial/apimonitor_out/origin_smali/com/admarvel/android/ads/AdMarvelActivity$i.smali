.class Lcom/admarvel/android/ads/AdMarvelActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/admarvel/android/ads/AdMarvelAd;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$i;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$i;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/admarvel/android/util/a;->b(Landroid/content/Context;)Lcom/admarvel/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$i;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$i;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdHistoryCounter()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/ssr_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/util/a;->a(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method
