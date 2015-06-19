.class Lcom/google/android/gms/drive/internal/r$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource$MetadataResult;


# instance fields
.field private final DQ:Lcom/google/android/gms/drive/Metadata;

.field private final vl:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/r$e;->vl:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/r$e;->DQ:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/google/android/gms/drive/Metadata;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/r$e;->DQ:Lcom/google/android/gms/drive/Metadata;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/r$e;->vl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
