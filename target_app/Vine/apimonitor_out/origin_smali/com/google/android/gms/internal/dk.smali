.class public Lcom/google/android/gms/internal/dk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/purchase/InAppPurchaseResult;


# instance fields
.field private final pu:Lcom/google/android/gms/internal/dg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dk;->pu:Lcom/google/android/gms/internal/dg;

    return-void
.end method


# virtual methods
.method public finishPurchase()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->pu:Lcom/google/android/gms/internal/dg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dg;->finishPurchase()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Could not forward finishPurchase to InAppPurchaseResult"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public getProductId()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->pu:Lcom/google/android/gms/internal/dg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dg;->getProductId()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Could not forward getProductId to InAppPurchaseResult"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getPurchaseData()Landroid/content/Intent;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->pu:Lcom/google/android/gms/internal/dg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dg;->getPurchaseData()Landroid/content/Intent;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Could not forward getPurchaseData to InAppPurchaseResult"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getResultCode()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->pu:Lcom/google/android/gms/internal/dg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dg;->getResultCode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const-string v1, "Could not forward getPurchaseData to InAppPurchaseResult"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isVerified()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->pu:Lcom/google/android/gms/internal/dg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dg;->isVerified()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const-string v1, "Could not forward isVerified to InAppPurchaseResult"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method
