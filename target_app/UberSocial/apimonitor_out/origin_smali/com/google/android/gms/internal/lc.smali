.class final Lcom/google/android/gms/internal/lc;
.super Lcom/google/android/gms/internal/jx;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final b:Lcom/google/android/gms/common/api/t;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/lc;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/t;

    iput-object v0, p0, Lcom/google/android/gms/internal/lc;->b:Lcom/google/android/gms/common/api/t;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/lc;->a:Lcom/google/android/gms/internal/jy;

    new-instance v2, Lcom/google/android/gms/internal/ld;

    iget-object v3, p0, Lcom/google/android/gms/internal/lc;->a:Lcom/google/android/gms/internal/jy;

    iget-object v4, p0, Lcom/google/android/gms/internal/lc;->b:Lcom/google/android/gms/common/api/t;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ld;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/gn;)V

    return-void
.end method