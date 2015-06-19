.class Lcom/google/android/gms/internal/gm$3;
.super Lcom/google/android/gms/internal/gm$a;


# instance fields
.field final synthetic Ig:Lcom/google/android/gms/internal/gm;

.field final synthetic Ih:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gm;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/gm$3;->Ig:Lcom/google/android/gms/internal/gm;

    iput p2, p0, Lcom/google/android/gms/internal/gm$3;->Ih:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gm$a;-><init>(Lcom/google/android/gms/internal/gm$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gm$3;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fx;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/gm$3;->Ih:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;IZZ)V

    return-void
.end method
