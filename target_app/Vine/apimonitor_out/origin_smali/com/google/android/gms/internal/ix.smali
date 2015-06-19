.class public Lcom/google/android/gms/internal/ix;
.super Lcom/google/android/gms/internal/hc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ix$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hc",
        "<",
        "Lcom/google/android/gms/internal/iz;",
        ">;"
    }
.end annotation


# instance fields
.field private UD:Lcom/google/android/gms/internal/ix$a;

.field private final mTheme:I

.field private oe:Landroid/app/Activity;

.field private final yN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;I)V
    .registers 13

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ix;->yN:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ix;->oe:Landroid/app/Activity;

    iput p6, p0, Lcom/google/android/gms/internal/ix;->mTheme:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->iP()V

    new-instance v0, Lcom/google/android/gms/internal/ix$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ix;->oe:Landroid/app/Activity;

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ix$a;-><init>(ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ix;->UD:Lcom/google/android/gms/internal/ix$a;

    :try_start_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ix;->yN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "com.google.android.gms.identity.intents.EXTRA_ACCOUNT"

    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gms/internal/ix;->yN:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_34
    const-string v1, "com.google.android.gms.identity.intents.EXTRA_THEME"

    iget v2, p0, Lcom/google/android/gms/internal/ix;->mTheme:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->iO()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ix;->UD:Lcom/google/android/gms/internal/ix$a;

    invoke-interface {v1, v2, p1, v0}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/internal/iy;Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Bundle;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_44} :catch_45

    :goto_44
    return-void

    :catch_45
    move-exception v0

    const-string v1, "AddressClientImpl"

    const-string v2, "Exception requesting user address"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.identity.intents.EXTRA_ERROR_CODE"

    const/16 v2, 0x22b

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ix;->UD:Lcom/google/android/gms/internal/ix$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ix$a;->g(ILandroid/os/Bundle;)V

    goto :goto_44
.end method

.method protected a(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hc$e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x4d7808

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/hj;->d(Lcom/google/android/gms/internal/hi;ILjava/lang/String;)V

    return-void
.end method

.method protected an(Landroid/os/IBinder;)Lcom/google/android/gms/internal/iz;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/iz$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/iz;

    move-result-object v0

    return-object v0
.end method

.method protected bp()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.identity.service.BIND"

    return-object v0
.end method

.method protected bq()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.identity.intents.internal.IAddressService"

    return-object v0
.end method

.method public disconnect()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/hc;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ix;->UD:Lcom/google/android/gms/internal/ix$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ix;->UD:Lcom/google/android/gms/internal/ix$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ix$a;->a(Lcom/google/android/gms/internal/ix$a;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ix;->UD:Lcom/google/android/gms/internal/ix$a;

    :cond_f
    return-void
.end method

.method protected iO()Lcom/google/android/gms/internal/iz;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/hc;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iz;

    return-object v0
.end method

.method protected iP()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/hc;->ci()V

    return-void
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ix;->an(Landroid/os/IBinder;)Lcom/google/android/gms/internal/iz;

    move-result-object v0

    return-object v0
.end method
