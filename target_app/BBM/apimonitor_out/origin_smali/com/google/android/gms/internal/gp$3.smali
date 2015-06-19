.class Lcom/google/android/gms/internal/gp$3;
.super Lcom/google/android/gms/internal/gp$b;


# instance fields
.field final synthetic Iq:Lcom/google/android/gms/internal/gp;

.field final synthetic Ir:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/gp$3;->Iq:Lcom/google/android/gms/internal/gp;

    iput-object p2, p0, Lcom/google/android/gms/internal/gp$3;->Ir:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gp$b;-><init>(Lcom/google/android/gms/internal/gp$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gp$3;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fx;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gp$3;->Ir:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fx;->d(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V

    return-void
.end method
