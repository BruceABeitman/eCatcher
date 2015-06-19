.class abstract Lcom/google/android/gms/drive/internal/q$c;
.super Lcom/google/android/gms/drive/internal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/internal/m",
        "<",
        "Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic DM:Lcom/google/android/gms/drive/internal/q;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/internal/q;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/q$c;->DM:Lcom/google/android/gms/drive/internal/q;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/q;Lcom/google/android/gms/drive/internal/q$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/q$c;-><init>(Lcom/google/android/gms/drive/internal/q;)V

    return-void
.end method


# virtual methods
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/q$c;->q(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;

    move-result-object v0

    return-object v0
.end method

.method public q(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/internal/q$e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/q$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFolder;)V

    return-object v0
.end method
