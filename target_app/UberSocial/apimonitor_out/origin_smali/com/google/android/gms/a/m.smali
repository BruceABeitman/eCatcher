.class abstract Lcom/google/android/gms/a/m;
.super Lcom/google/android/gms/a/i;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/a/i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/a/c$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/a/h;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/a/m;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/a/h;

    move-result-object v0

    return-object v0
.end method
