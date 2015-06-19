.class abstract Lcom/google/android/gms/cast/j;
.super Lcom/google/android/gms/cast/i;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/cast/i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/cast/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/j;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
