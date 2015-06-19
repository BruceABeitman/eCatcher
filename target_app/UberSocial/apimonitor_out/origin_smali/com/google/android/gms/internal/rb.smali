.class public final Lcom/google/android/gms/internal/rb;
.super Lcom/google/android/gms/common/data/j;

# interfaces
.implements Lcom/google/android/gms/plus/a/a/c;


# instance fields
.field private c:Lcom/google/android/gms/internal/io;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/j;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method private b()Lcom/google/android/gms/internal/io;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->c:Lcom/google/android/gms/internal/io;

    if-nez v0, :cond_23

    const-string v0, "momentImpl"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rb;->f(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/internal/io;->CREATOR:Lcom/google/android/gms/internal/ra;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ra;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/io;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/rb;->c:Lcom/google/android/gms/internal/io;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_27

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->c:Lcom/google/android/gms/internal/io;

    return-object v0

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/io;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->b()Lcom/google/android/gms/internal/io;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->b()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->b()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->g()Z

    move-result v0

    return v0
.end method

.method public synthetic i()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->a()Lcom/google/android/gms/internal/io;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/android/gms/plus/a/a/a;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->b()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->j()Lcom/google/android/gms/plus/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->b()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->g()Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->b()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->b()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->n()Z

    move-result v0

    return v0
.end method

.method public o()Lcom/google/android/gms/plus/a/a/a;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->b()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->o()Lcom/google/android/gms/plus/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->b()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->q()Z

    move-result v0

    return v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->b()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->b()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->s()Z

    move-result v0

    return v0
.end method
