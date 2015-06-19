.class abstract Lcom/google/android/gms/e/d;
.super Lcom/google/android/gms/common/api/r;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/r;-><init>(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/e/b;
    .registers 3

    new-instance v0, Lcom/google/android/gms/e/d$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/e/d$1;-><init>(Lcom/google/android/gms/e/d;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/e/d;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/e/b;

    move-result-object v0

    return-object v0
.end method
