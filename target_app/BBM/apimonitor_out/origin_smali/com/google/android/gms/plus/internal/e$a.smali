.class final Lcom/google/android/gms/plus/internal/e$a;
.super Lcom/google/android/gms/plus/internal/a;


# instance fields
.field private final QI:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic Rf:Lcom/google/android/gms/plus/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$a;->Rf:Lcom/google/android/gms/plus/internal/e;

    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/e$a;->QI:Lcom/google/android/gms/common/api/a$c;

    return-void
.end method


# virtual methods
.method public final L(Lcom/google/android/gms/common/api/Status;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$a;->Rf:Lcom/google/android/gms/plus/internal/e;

    new-instance v1, Lcom/google/android/gms/plus/internal/e$d;

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/e$a;->Rf:Lcom/google/android/gms/plus/internal/e;

    iget-object v3, p0, Lcom/google/android/gms/plus/internal/e$a;->QI:Lcom/google/android/gms/common/api/a$c;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/plus/internal/e$d;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/internal/eh$b;)V

    return-void
.end method
