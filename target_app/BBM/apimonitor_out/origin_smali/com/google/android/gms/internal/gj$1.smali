.class Lcom/google/android/gms/internal/gj$1;
.super Lcom/google/android/gms/internal/gj$a;


# instance fields
.field final synthetic HH:Z

.field final synthetic HS:Lcom/google/android/gms/internal/gj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gj;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/gj$1;->HS:Lcom/google/android/gms/internal/gj;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gj$1;->HH:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gj$a;-><init>(Lcom/google/android/gms/internal/gj$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gj$1;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fx;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gj$1;->HH:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fx;->b(Lcom/google/android/gms/common/api/a$c;Z)V

    return-void
.end method
