.class abstract Lcom/google/android/gms/drive/internal/v$c;
.super Lcom/google/android/gms/drive/internal/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/internal/q",
        "<",
        "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Ji:Lcom/google/android/gms/drive/internal/v;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/internal/v;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/v$c;->Ji:Lcom/google/android/gms/drive/internal/v;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/v;Lcom/google/android/gms/drive/internal/v$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/v$c;-><init>(Lcom/google/android/gms/drive/internal/v;)V

    return-void
.end method


# virtual methods
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/v$c;->r(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;

    move-result-object v0

    return-object v0
.end method

.method public r(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;
    .registers 5

    new-instance v0, Lcom/google/android/gms/drive/internal/p$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/drive/internal/p$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;Z)V

    return-object v0
.end method
