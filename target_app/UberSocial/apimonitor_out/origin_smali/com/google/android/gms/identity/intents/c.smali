.class abstract Lcom/google/android/gms/identity/intents/c;
.super Lcom/google/android/gms/common/api/r;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/identity/intents/a;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/r;-><init>(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/identity/intents/c;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
