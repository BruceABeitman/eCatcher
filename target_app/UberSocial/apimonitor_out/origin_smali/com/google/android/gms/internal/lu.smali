.class final Lcom/google/android/gms/internal/lu;
.super Lcom/google/android/gms/internal/jx;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final b:Lcom/google/android/gms/common/api/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/t;

    iput-object v0, p0, Lcom/google/android/gms/internal/lu;->b:Lcom/google/android/gms/common/api/t;

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/jy;

    new-instance v1, Lcom/google/android/gms/internal/lv;

    iget-object v2, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/jy;

    iget-object v3, p0, Lcom/google/android/gms/internal/lu;->b:Lcom/google/android/gms/common/api/t;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/lv;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/gn;)V

    return-void
.end method