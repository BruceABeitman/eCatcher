.class Lcom/google/android/gms/drive/internal/q$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;


# instance fields
.field private final DO:Lcom/google/android/gms/drive/DriveFolder;

.field private final vl:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/q$e;->vl:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/q$e;->DO:Lcom/google/android/gms/drive/DriveFolder;

    return-void
.end method


# virtual methods
.method public getDriveFolder()Lcom/google/android/gms/drive/DriveFolder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/q$e;->DO:Lcom/google/android/gms/drive/DriveFolder;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/q$e;->vl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method