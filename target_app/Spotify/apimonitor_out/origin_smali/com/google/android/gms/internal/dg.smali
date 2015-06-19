.class public abstract Lcom/google/android/gms/internal/dg;
.super Lcom/google/android/gms/internal/eh;


# instance fields
.field private final a:Lcom/google/android/gms/internal/cx;

.field private final b:Lcom/google/android/gms/internal/df;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/df;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/eh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dg;->a:Lcom/google/android/gms/internal/cx;

    iput-object p2, p0, Lcom/google/android/gms/internal/dg;->b:Lcom/google/android/gms/internal/df;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/dp;Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cz;
    .registers 4

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/dp;->a(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cz;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v1, "Could not fetch ad response from ad request service."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public final a()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->d()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/internal/cz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cz;-><init>(I)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_24

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->c()V

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->b:Lcom/google/android/gms/internal/df;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/cz;)V

    return-void

    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->a:Lcom/google/android/gms/internal/cx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/dp;Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cz;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/cz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cz;-><init>(I)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_24

    goto :goto_c

    :catchall_24
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->c()V

    throw v0
.end method

.method public abstract c()V
.end method

.method public final c_()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->c()V

    return-void
.end method

.method public abstract d()Lcom/google/android/gms/internal/dp;
.end method
