.class abstract Lcom/google/android/gms/drive/internal/s$d;
.super Lcom/google/android/gms/drive/internal/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/internal/q",
        "<",
        "Lcom/google/android/gms/drive/DriveApi$ContentsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic IZ:Lcom/google/android/gms/drive/internal/s;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/internal/s;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/s$d;->IZ:Lcom/google/android/gms/drive/internal/s;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/internal/s$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/s$d;-><init>(Lcom/google/android/gms/drive/internal/s;)V

    return-void
.end method


# virtual methods
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/s$d;->q(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$ContentsResult;

    move-result-object v0

    return-object v0
.end method

.method public q(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$ContentsResult;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/internal/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/p$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V

    return-object v0
.end method
