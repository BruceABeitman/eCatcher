.class Lcom/google/android/gms/drive/internal/l$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;


# instance fields
.field private final Dy:Lcom/google/android/gms/drive/MetadataBuffer;

.field private final vl:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$e;->vl:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/l$e;->Dy:Lcom/google/android/gms/drive/MetadataBuffer;

    return-void
.end method


# virtual methods
.method public getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$e;->Dy:Lcom/google/android/gms/drive/MetadataBuffer;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$e;->vl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
