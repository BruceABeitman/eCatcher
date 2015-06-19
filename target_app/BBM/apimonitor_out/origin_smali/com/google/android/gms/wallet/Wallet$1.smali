.class final Lcom/google/android/gms/wallet/Wallet$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$b",
        "<",
        "Lcom/google/android/gms/internal/jg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .registers 8

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/wallet/Wallet$1;->i(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/jg;

    move-result-object v0

    return-object v0
.end method

.method public final getPriority()I
    .registers 2

    const v0, 0x7fffffff

    return v0
.end method

.method public final i(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/jg;
    .registers 15

    instance-of v0, p1, Landroid/app/Activity;

    const-string v1, "An Activity must be used for Wallet APIs"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    if-eqz p4, :cond_10

    instance-of v0, p4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    if-eqz v0, :cond_2b

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-string v2, "WalletOptions must be used for Wallet APIs"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    if-eqz p4, :cond_2d

    check-cast p4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    :goto_1a
    new-instance v0, Lcom/google/android/gms/internal/jg;

    iget v5, p4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->environment:I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->getAccountName()Ljava/lang/String;

    move-result-object v6

    iget v7, p4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->theme:I

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/jg;-><init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;ILjava/lang/String;I)V

    return-object v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_11

    :cond_2d
    new-instance p4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$1;)V

    goto :goto_1a
.end method
