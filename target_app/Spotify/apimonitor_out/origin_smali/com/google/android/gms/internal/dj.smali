.class public final Lcom/google/android/gms/internal/dj;
.super Lcom/google/android/gms/internal/fy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fy",
        "<",
        "Lcom/google/android/gms/internal/dp;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;I)V
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/fy;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;)V

    iput p4, p0, Lcom/google/android/gms/internal/dj;->a:I

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/dq;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dp;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/internal/gw;Lcom/google/android/gms/internal/ge;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/dj;->a:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dj;->i()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/gw;->g(Lcom/google/android/gms/internal/gt;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.ads.service.START"

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/dp;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/fy;->l()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dp;

    return-object v0
.end method
