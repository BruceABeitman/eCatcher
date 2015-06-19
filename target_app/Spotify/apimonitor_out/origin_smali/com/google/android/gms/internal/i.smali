.class public final Lcom/google/android/gms/internal/i;
.super Lcom/google/android/gms/dynamic/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/g",
        "<",
        "Lcom/google/android/gms/internal/w;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/i;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/i;->a:Lcom/google/android/gms/internal/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/t;
    .registers 10

    invoke-static {p0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/android/gms/internal/i;->a:Lcom/google/android/gms/internal/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/i;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/t;

    move-result-object v0

    if-nez v0, :cond_21

    :cond_e
    const-string v0, "Using AdManager from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/internal/dx;

    invoke-direct {v5}, Lcom/google/android/gms/internal/dx;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ls;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ls;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/dx;)V

    :cond_21
    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/t;
    .registers 12

    const/4 v6, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/i;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/w;

    const v5, 0x43eea0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/w;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Lcom/google/android/gms/internal/bf;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/t;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1a
    .catch Lcom/google/android/gms/dynamic/g$a; {:try_start_1 .. :try_end_18} :catch_22

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    const-string v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_19

    :catch_22
    move-exception v0

    const-string v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_19
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/x;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/w;

    move-result-object v0

    return-object v0
.end method
