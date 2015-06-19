.class public Lcom/google/android/gms/internal/ry;
.super Lcom/google/android/gms/internal/gl;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:I

.field private final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;ILjava/lang/String;I)V
    .registers 14

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ry;->a:Landroid/app/Activity;

    iput p5, p0, Lcom/google/android/gms/internal/ry;->b:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ry;->f:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/ry;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;ILjava/lang/String;I)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/go;

    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/go;-><init>(Lcom/google/android/gms/common/e;)V

    new-instance v4, Lcom/google/android/gms/internal/gs;

    invoke-direct {v4, p3}, Lcom/google/android/gms/internal/gs;-><init>(Lcom/google/android/gms/common/f;)V

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ry;-><init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ry;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ry;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private h()Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.wallet.EXTRA_ENVIRONMENT"

    iget v2, p0, Lcom/google/android/gms/internal/ry;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "androidPackageName"

    iget-object v2, p0, Lcom/google/android/gms/internal/ry;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ry;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT"

    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gms/internal/ry;->f:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2d
    const-string v1, "com.google.android.gms.wallet.EXTRA_THEME"

    iget v2, p0, Lcom/google/android/gms/internal/ry;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/rs;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/rt;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/rs;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ry;->h()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/rz;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/rz;-><init>(Lcom/google/android/gms/internal/ry;I)V

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ry;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rs;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/rs;->a(Landroid/os/Bundle;Lcom/google/android/gms/internal/rv;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException during checkForPreAuthorization"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/rz;->a(IZLandroid/os/Bundle;)V

    goto :goto_12
.end method

.method protected a(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/gq;)V
    .registers 4

    const v0, 0x41f6b8

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/hh;->a(Lcom/google/android/gms/internal/he;I)V

    return-void
.end method

.method public a(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .registers 8

    const/4 v4, 0x0

    new-instance v1, Lcom/google/android/gms/internal/rz;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/rz;-><init>(Lcom/google/android/gms/internal/ry;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ry;->h()Landroid/os/Bundle;

    move-result-object v2

    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ry;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rs;

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/rs;->a(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/rv;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v2, "WalletClientImpl"

    const-string v3, "RemoteException getting full wallet"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v4, v4}, Lcom/google/android/gms/internal/rz;->a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V

    goto :goto_13
.end method

.method public a(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ry;->h()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/rz;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/rz;-><init>(Lcom/google/android/gms/internal/ry;I)V

    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ry;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rs;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/rs;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/rv;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException getting masked wallet"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v4, v4}, Lcom/google/android/gms/internal/rz;->a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    goto :goto_13
.end method

.method public a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ry;->h()Landroid/os/Bundle;

    move-result-object v1

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ry;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rs;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/rs;->a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ry;->h()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/rz;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/rz;-><init>(Lcom/google/android/gms/internal/ry;I)V

    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ry;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rs;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/rs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/rv;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException changing masked wallet"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v4, v4}, Lcom/google/android/gms/internal/rz;->a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    goto :goto_13
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ry;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/rs;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.wallet.service.BIND"

    return-object v0
.end method
