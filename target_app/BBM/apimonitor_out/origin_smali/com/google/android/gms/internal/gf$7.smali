.class Lcom/google/android/gms/internal/gf$7;
.super Lcom/google/android/gms/internal/gf$b;


# instance fields
.field final synthetic HI:Lcom/google/android/gms/internal/gf;

.field final synthetic HJ:Ljava/lang/String;

.field final synthetic HK:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gf;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/gf$7;->HI:Lcom/google/android/gms/internal/gf;

    iput-object p3, p0, Lcom/google/android/gms/internal/gf$7;->HJ:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/gf$7;->HK:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gf$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gf$7;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/fx;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gf$7;->HJ:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/gf$7;->HK:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;I)V

    return-void
.end method
