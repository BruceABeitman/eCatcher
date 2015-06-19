.class Lcom/google/android/gms/internal/il$5;
.super Lcom/google/android/gms/internal/il$a;


# instance fields
.field final synthetic RH:Lcom/google/android/gms/internal/il;

.field final synthetic RJ:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/il;Lcom/google/android/gms/common/api/Api$b;[Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/il$5;->RH:Lcom/google/android/gms/internal/il;

    iput-object p3, p0, Lcom/google/android/gms/internal/il$5;->RJ:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/il$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/il$5;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/il$5;->RJ:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/e;->c(Lcom/google/android/gms/common/api/a$c;[Ljava/lang/String;)V

    return-void
.end method
