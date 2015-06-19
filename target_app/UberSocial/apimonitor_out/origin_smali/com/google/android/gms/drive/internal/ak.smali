.class abstract Lcom/google/android/gms/drive/internal/ak;
.super Lcom/google/android/gms/drive/internal/al;


# instance fields
.field final synthetic b:Lcom/google/android/gms/drive/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/y;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/ak;->b:Lcom/google/android/gms/drive/internal/y;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/ak;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
