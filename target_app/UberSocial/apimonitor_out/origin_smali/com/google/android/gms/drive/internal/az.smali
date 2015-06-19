.class public Lcom/google/android/gms/drive/internal/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/n;


# instance fields
.field protected final a:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/az;->a:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/events/a;)Lcom/google/android/gms/common/api/j;
    .registers 6

    sget-object v0, Lcom/google/android/gms/drive/b;->a:Lcom/google/android/gms/common/api/c;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/am;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/az;->a:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gms/drive/internal/am;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/a;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/google/android/gms/drive/DriveId;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/az;->a:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 3

    new-instance v0, Lcom/google/android/gms/drive/internal/az$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/az$1;-><init>(Lcom/google/android/gms/drive/internal/az;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/events/a;)Lcom/google/android/gms/common/api/j;
    .registers 6

    sget-object v0, Lcom/google/android/gms/drive/b;->a:Lcom/google/android/gms/common/api/c;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/am;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/az;->a:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gms/drive/internal/am;->b(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/a;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/t;)Lcom/google/android/gms/common/api/j;
    .registers 5

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ChangeSet must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/android/gms/drive/internal/az$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/az$3;-><init>(Lcom/google/android/gms/drive/internal/az;Lcom/google/android/gms/drive/t;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 3

    new-instance v0, Lcom/google/android/gms/drive/internal/az$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/az$2;-><init>(Lcom/google/android/gms/drive/internal/az;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method
