.class public Lcom/google/android/gms/internal/os;
.super Lcom/google/android/gms/internal/gl;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/google/android/gms/internal/ot;

.field private final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;Ljava/lang/String;I)V
    .registers 13

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/os;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/os;->a:Landroid/app/Activity;

    iput p6, p0, Lcom/google/android/gms/internal/os;->g:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ox;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/oy;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ox;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->i()V

    new-instance v0, Lcom/google/android/gms/internal/ot;

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->a:Landroid/app/Activity;

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ot;-><init>(ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/os;->b:Lcom/google/android/gms/internal/ot;

    :try_start_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "com.google.android.gms.identity.intents.EXTRA_ACCOUNT"

    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gms/internal/os;->f:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_34
    const-string v1, "com.google.android.gms.identity.intents.EXTRA_THEME"

    iget v2, p0, Lcom/google/android/gms/internal/os;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->h()Lcom/google/android/gms/internal/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/os;->b:Lcom/google/android/gms/internal/ot;

    invoke-interface {v1, v2, p1, v0}, Lcom/google/android/gms/internal/ox;->a(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Bundle;)V
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

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->b:Lcom/google/android/gms/internal/ot;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ot;->a(ILandroid/os/Bundle;)V

    goto :goto_44
.end method

.method protected a(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/gq;)V
    .registers 5

    const v0, 0x41f6b8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/hh;->d(Lcom/google/android/gms/internal/he;ILjava/lang/String;)V

    return-void
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/os;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ox;

    move-result-object v0

    return-object v0
.end method

.method public c_()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/gl;->c_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->b:Lcom/google/android/gms/internal/ot;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->b:Lcom/google/android/gms/internal/ot;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ot;->a(Lcom/google/android/gms/internal/ot;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/os;->b:Lcom/google/android/gms/internal/ot;

    :cond_f
    return-void
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.identity.intents.internal.IAddressService"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.identity.service.BIND"

    return-object v0
.end method

.method protected h()Lcom/google/android/gms/internal/ox;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/gl;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ox;

    return-object v0
.end method

.method protected i()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/gl;->r()V

    return-void
.end method
