.class final Lcom/google/android/gms/plus/internal/o;
.super Lcom/google/android/gms/internal/gb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fy",
        "<",
        "Lcom/google/android/gms/plus/internal/j;",
        ">.com/google/android/gms/internal/gb<",
        "Lcom/google/android/gms/common/api/w",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/plus/internal/m;

.field private final c:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/m;Lcom/google/android/gms/common/api/w;Lcom/google/android/gms/common/api/Status;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/o;->b:Lcom/google/android/gms/plus/internal/m;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gb;-><init>(Lcom/google/android/gms/internal/fy;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/o;->c:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/common/api/w;

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/o;->b:Lcom/google/android/gms/plus/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/m;->b()V

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/o;->c:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/w;->a(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method
