.class abstract Lcom/google/android/gms/drive/internal/o$b;
.super Lcom/google/android/gms/drive/internal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/internal/m",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic DJ:Lcom/google/android/gms/drive/internal/o;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/internal/o;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/o$b;->DJ:Lcom/google/android/gms/drive/internal/o;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/o;Lcom/google/android/gms/drive/internal/o$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/o$b;-><init>(Lcom/google/android/gms/drive/internal/o;)V

    return-void
.end method


# virtual methods
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/o$b;->f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method
