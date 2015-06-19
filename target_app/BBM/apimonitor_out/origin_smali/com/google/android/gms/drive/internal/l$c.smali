.class Lcom/google/android/gms/drive/internal/l$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi$DriveIdResult;


# instance fields
.field private final CS:Lcom/google/android/gms/drive/DriveId;

.field private final vl:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$c;->vl:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/l$c;->CS:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$c;->CS:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$c;->vl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
