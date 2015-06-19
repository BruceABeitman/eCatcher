.class Lcom/google/android/gms/drive/internal/av;
.super Lcom/google/android/gms/drive/internal/p;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/t;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/t;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/av;->a:Lcom/google/android/gms/common/api/t;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/av;->a:Lcom/google/android/gms/common/api/t;

    new-instance v1, Lcom/google/android/gms/drive/internal/ay;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/ay;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/k;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/drive/internal/OnDriveIdResponse;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/av;->a:Lcom/google/android/gms/common/api/t;

    new-instance v1, Lcom/google/android/gms/drive/internal/ay;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/drive/internal/at;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->a()Lcom/google/android/gms/drive/DriveId;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/at;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/ay;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/k;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V

    return-void
.end method
