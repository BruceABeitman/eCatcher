.class Lcom/google/android/gms/internal/nz$5;
.super Lcom/google/android/gms/internal/ob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nz;->b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/nz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/nz$5;->b:Lcom/google/android/gms/internal/nz;

    iput-object p2, p0, Lcom/google/android/gms/internal/nz$5;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ob;-><init>(Lcom/google/android/gms/internal/nz$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nz$5;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nz$5;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/jy;->e(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V

    return-void
.end method
