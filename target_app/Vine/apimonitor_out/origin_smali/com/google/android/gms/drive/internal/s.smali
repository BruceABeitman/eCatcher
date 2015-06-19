.class public Lcom/google/android/gms/drive/internal/s;
.super Lcom/google/android/gms/drive/internal/v;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/internal/s$a;,
        Lcom/google/android/gms/drive/internal/s$b;,
        Lcom/google/android/gms/drive/internal/s$c;,
        Lcom/google/android/gms/drive/internal/s$d;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/v;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-void
.end method


# virtual methods
.method public commitAndCloseContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/Contents;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contents must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/android/gms/drive/internal/s$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/s$2;-><init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/Contents;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    return-object v0
.end method

.method public commitAndCloseContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/Contents;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contents must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/android/gms/drive/internal/s$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/drive/internal/s$3;-><init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/MetadataChangeSet;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    return-object v0
.end method

.method public discardContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/Contents;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/drive/DriveApi;->discardContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public openContents(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$ContentsResult;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x1000

    if-eq p2, v0, :cond_14

    const/high16 v0, 0x2000

    if-eq p2, v0, :cond_14

    const/high16 v0, 0x3000

    if-eq p2, v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/google/android/gms/drive/internal/s$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/drive/internal/s$1;-><init>(Lcom/google/android/gms/drive/internal/s;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    return-object v0
.end method
