.class Lcom/google/android/gms/cast/Cast$CastApi$a$8;
.super Lcom/google/android/gms/cast/Cast$b;


# instance fields
.field final synthetic wr:Lcom/google/android/gms/cast/Cast$CastApi$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$8;->wr:Lcom/google/android/gms/cast/Cast$CastApi$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$b;-><init>(Lcom/google/android/gms/cast/Cast$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/dq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$8;->a(Lcom/google/android/gms/internal/dq;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dq;)V
    .registers 3

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/dq;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/a$c;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$8;->x(I)V

    goto :goto_5
.end method
