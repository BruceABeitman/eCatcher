.class public abstract Lcom/google/android/gms/internal/cb;
.super Lcom/google/android/gms/internal/ct;


# instance fields
.field private final mf:Lcom/google/android/gms/internal/cd;

.field private final nY:Lcom/google/android/gms/internal/ca$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ct;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cb;->mf:Lcom/google/android/gms/internal/cd;

    iput-object p2, p0, Lcom/google/android/gms/internal/cb;->nY:Lcom/google/android/gms/internal/ca$a;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/cd;)Lcom/google/android/gms/internal/cf;
    .registers 4

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ch;->b(Lcom/google/android/gms/internal/cd;)Lcom/google/android/gms/internal/cf;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v1, "Could not fetch ad response from ad request service."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public final aB()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cb;->aE()Lcom/google/android/gms/internal/ch;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/internal/cf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cf;-><init>(I)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_24

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cb;->aD()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cb;->nY:Lcom/google/android/gms/internal/ca$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ca$a;->a(Lcom/google/android/gms/internal/cf;)V

    return-void

    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/google/android/gms/internal/cb;->mf:Lcom/google/android/gms/internal/cd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cb;->a(Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/cd;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/cf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cf;-><init>(I)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_24

    goto :goto_c

    :catchall_24
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cb;->aD()V

    throw v0
.end method

.method public abstract aD()V
.end method

.method public abstract aE()Lcom/google/android/gms/internal/ch;
.end method

.method public final onStop()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cb;->aD()V

    return-void
.end method
