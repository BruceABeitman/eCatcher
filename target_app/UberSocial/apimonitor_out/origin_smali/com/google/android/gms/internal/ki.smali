.class final Lcom/google/android/gms/internal/ki;
.super Lcom/google/android/gms/internal/jx;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final b:Lcom/google/android/gms/common/api/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/t;

    iput-object v0, p0, Lcom/google/android/gms/internal/ki;->b:Lcom/google/android/gms/common/api/t;

    return-void
.end method


# virtual methods
.method public B(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/jy;

    new-instance v1, Lcom/google/android/gms/internal/kj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/jy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ki;->b:Lcom/google/android/gms/common/api/t;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/kj;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/gn;)V

    return-void
.end method
