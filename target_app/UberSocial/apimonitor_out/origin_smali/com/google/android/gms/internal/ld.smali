.class final Lcom/google/android/gms/internal/ld;
.super Lcom/google/android/gms/internal/gn;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final c:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ld;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ld;->c:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/t;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ld;->c:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/t;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ld;->a(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method

.method protected c()V
    .registers 1

    return-void
.end method
