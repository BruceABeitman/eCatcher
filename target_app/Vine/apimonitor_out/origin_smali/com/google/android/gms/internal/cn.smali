.class public final Lcom/google/android/gms/internal/cn;
.super Lcom/google/android/gms/dynamic/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/g",
        "<",
        "Lcom/google/android/gms/internal/cp;",
        ">;"
    }
.end annotation


# static fields
.field private static final oQ:Lcom/google/android/gms/internal/cn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/cn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cn;->oQ:Lcom/google/android/gms/internal/cn;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.AdOverlayCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/internal/co;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/cn;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Using AdOverlay from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/cg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cg;-><init>(Landroid/app/Activity;)V

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/cn;->oQ:Lcom/google/android/gms/internal/cn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cn;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/co;
    :try_end_16
    .catch Lcom/google/android/gms/internal/cn$a; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_10

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cn$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static b(Landroid/app/Activity;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cn$a;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/cn$a;

    const-string v1, "Ad overlay requires the useClientJar flag in intent extras."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cn$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/app/Activity;)Lcom/google/android/gms/internal/co;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cn;->D(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cp;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/dynamic/d;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/co$a;->m(Landroid/os/IBinder;)Lcom/google/android/gms/internal/co;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14
    .catch Lcom/google/android/gms/dynamic/g$a; {:try_start_1 .. :try_end_12} :catch_1c

    move-result-object v0

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    const-string v2, "Could not create remote AdOverlay."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_13

    :catch_1c
    move-exception v0

    const-string v2, "Could not create remote AdOverlay."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_13
.end method


# virtual methods
.method protected synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cn;->l(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cp;

    move-result-object v0

    return-object v0
.end method

.method protected l(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cp;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/cp$a;->n(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cp;

    move-result-object v0

    return-object v0
.end method
