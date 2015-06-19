.class Lcom/google/android/gms/internal/go$2;
.super Lcom/google/android/gms/internal/go$b;


# instance fields
.field final synthetic Ij:[Ljava/lang/String;

.field final synthetic Ik:Lcom/google/android/gms/internal/go;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/go;[Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/go$2;->Ik:Lcom/google/android/gms/internal/go;

    iput-object p2, p0, Lcom/google/android/gms/internal/go$2;->Ij:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/go$b;-><init>(Lcom/google/android/gms/internal/go$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/go$2;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fx;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/go$2;->Ij:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fx;->b(Lcom/google/android/gms/common/api/a$c;[Ljava/lang/String;)V

    return-void
.end method
