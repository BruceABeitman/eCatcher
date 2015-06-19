.class Lcom/google/android/gms/internal/ii$1;
.super Lcom/google/android/gms/internal/ii$a;


# instance fields
.field final synthetic Rx:Lcom/google/android/gms/internal/ii;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ii;Lcom/google/android/gms/common/api/Api$b;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ii$1;->Rx:Lcom/google/android/gms/internal/ii;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ii$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ii$1;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/plus/internal/e;->k(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method
