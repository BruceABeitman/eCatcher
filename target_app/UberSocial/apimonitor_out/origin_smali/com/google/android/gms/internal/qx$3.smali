.class Lcom/google/android/gms/internal/qx$3;
.super Lcom/google/android/gms/internal/qy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/qx;->b(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/qx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qx;Lcom/google/android/gms/common/api/c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/qx$3;->a:Lcom/google/android/gms/internal/qx;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/qy;-><init>(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qx$3;->a(Lcom/google/android/gms/plus/internal/l;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/l;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/plus/internal/l;->b(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method
