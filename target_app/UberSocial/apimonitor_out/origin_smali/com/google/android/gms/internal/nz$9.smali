.class Lcom/google/android/gms/internal/nz$9;
.super Lcom/google/android/gms/internal/oc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nz;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/nz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/nz$9;->c:Lcom/google/android/gms/internal/nz;

    iput-object p2, p0, Lcom/google/android/gms/internal/nz$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/nz$9;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/oc;-><init>(Lcom/google/android/gms/internal/nz$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nz$9;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nz$9;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/nz$9;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method