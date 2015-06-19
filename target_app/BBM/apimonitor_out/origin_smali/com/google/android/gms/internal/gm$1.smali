.class Lcom/google/android/gms/internal/gm$1;
.super Lcom/google/android/gms/internal/gm$a;


# instance fields
.field final synthetic If:Ljava/lang/String;

.field final synthetic Ig:Lcom/google/android/gms/internal/gm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gm;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/gm$1;->Ig:Lcom/google/android/gms/internal/gm;

    iput-object p2, p0, Lcom/google/android/gms/internal/gm$1;->If:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gm$a;-><init>(Lcom/google/android/gms/internal/gm$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gm$1;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fx;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gm$1;->If:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V

    return-void
.end method
