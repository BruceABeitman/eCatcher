.class abstract Lcom/google/android/gms/internal/nj;
.super Lcom/google/android/gms/games/h;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/games/h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ni$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/nj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/l;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/nj$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nj$1;-><init>(Lcom/google/android/gms/internal/nj;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/l;

    move-result-object v0

    return-object v0
.end method
