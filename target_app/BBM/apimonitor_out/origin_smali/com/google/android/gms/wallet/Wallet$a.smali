.class abstract Lcom/google/android/gms/wallet/Wallet$a;
.super Lcom/google/android/gms/common/api/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$a",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/internal/jg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/wallet/Wallet;->va:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method


# virtual methods
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/Wallet$a;->f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method
