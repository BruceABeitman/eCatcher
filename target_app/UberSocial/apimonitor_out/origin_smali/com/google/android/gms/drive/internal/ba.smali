.class abstract Lcom/google/android/gms/drive/internal/ba;
.super Lcom/google/android/gms/drive/internal/al;


# instance fields
.field final synthetic b:Lcom/google/android/gms/drive/internal/az;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/internal/az;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/ba;->b:Lcom/google/android/gms/drive/internal/az;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/al;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/az;Lcom/google/android/gms/drive/internal/az$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/ba;-><init>(Lcom/google/android/gms/drive/internal/az;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/o;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/internal/be;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/be;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/q;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/ba;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/o;

    move-result-object v0

    return-object v0
.end method
