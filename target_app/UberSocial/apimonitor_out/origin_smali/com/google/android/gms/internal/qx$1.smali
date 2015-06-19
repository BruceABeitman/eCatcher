.class Lcom/google/android/gms/internal/qx$1;
.super Lcom/google/android/gms/internal/qy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/common/api/e;ILjava/lang/String;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/qx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qx;Lcom/google/android/gms/common/api/c;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/qx$1;->c:Lcom/google/android/gms/internal/qx;

    iput p3, p0, Lcom/google/android/gms/internal/qx$1;->a:I

    iput-object p4, p0, Lcom/google/android/gms/internal/qx$1;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/qy;-><init>(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qx$1;->a(Lcom/google/android/gms/plus/internal/l;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/l;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/qx$1;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/qx$1;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;ILjava/lang/String;)V

    return-void
.end method
