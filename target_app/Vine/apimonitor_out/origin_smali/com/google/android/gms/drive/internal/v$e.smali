.class Lcom/google/android/gms/drive/internal/v$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource$MetadataResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final Jj:Lcom/google/android/gms/drive/Metadata;

.field private final yw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/v$e;->yw:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/v$e;->Jj:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/google/android/gms/drive/Metadata;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/v$e;->Jj:Lcom/google/android/gms/drive/Metadata;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/v$e;->yw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
