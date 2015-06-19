.class public Lcom/flurry/android/AppCircle;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addUserCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/flurry/android/FlurryAgent;->addUserCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearUserCookies()V
    .registers 1

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->clearUserCookies()V

    return-void
.end method

.method public getHook(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .registers 5

    invoke-static {p1, p2, p3}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getOffer()Lcom/flurry/android/Offer;
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/flurry/android/AppCircle;->getOffer(Ljava/lang/String;)Lcom/flurry/android/Offer;

    move-result-object v0

    return-object v0
.end method

.method public getOffer(Ljava/lang/String;)Lcom/flurry/android/Offer;
    .registers 3

    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;)Lcom/flurry/android/Offer;

    move-result-object v0

    return-object v0
.end method

.method public isLaunchCanvasOnBannerClicked()Z
    .registers 2

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->a()Z

    move-result v0

    return v0
.end method

.method public launchCanvasOnBannerClicked(Z)V
    .registers 2

    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->a(Z)V

    return-void
.end method

.method public openCatalog(Landroid/content/Context;)V
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/AppCircle;->openCatalog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public openCatalog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultNoAdsMessage(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->setDefaultNoAdsMessage(Ljava/lang/String;)V

    return-void
.end method
