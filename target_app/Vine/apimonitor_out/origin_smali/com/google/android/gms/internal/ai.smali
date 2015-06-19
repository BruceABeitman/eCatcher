.class public final Lcom/google/android/gms/internal/ai;
.super Lcom/google/android/gms/dynamic/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/g",
        "<",
        "Lcom/google/android/gms/internal/as;",
        ">;"
    }
.end annotation


# static fields
.field private static final lP:Lcom/google/android/gms/internal/ai;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ai;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ai;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ai;->lP:Lcom/google/android/gms/internal/ai;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/bt;)Lcom/google/android/gms/internal/ar;
    .registers 10

    const v1, 0x4d7808

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/google/android/gms/internal/ai;->lP:Lcom/google/android/gms/internal/ai;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ai;->b(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/bt;)Lcom/google/android/gms/internal/ar;

    move-result-object v0

    if-nez v0, :cond_25

    :cond_11
    const-string v0, "Using AdManager from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/internal/ew;

    const/4 v0, 0x1

    invoke-direct {v5, v1, v1, v0}, Lcom/google/android/gms/internal/ew;-><init>(IIZ)V

    new-instance v0, Lcom/google/android/gms/internal/v;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/v;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/ew;)V

    :cond_25
    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/bt;)Lcom/google/android/gms/internal/ar;
    .registers 12

    const/4 v6, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ai;->D(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/as;

    const v5, 0x4d7808

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/as;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/bu;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ar$a;->f(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ar;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1a
    .catch Lcom/google/android/gms/dynamic/g$a; {:try_start_1 .. :try_end_18} :catch_22

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    const-string v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_19

    :catch_22
    move-exception v0

    const-string v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_19
.end method


# virtual methods
.method protected c(Landroid/os/IBinder;)Lcom/google/android/gms/internal/as;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/as$a;->g(Landroid/os/IBinder;)Lcom/google/android/gms/internal/as;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ai;->c(Landroid/os/IBinder;)Lcom/google/android/gms/internal/as;

    move-result-object v0

    return-object v0
.end method
