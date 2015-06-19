.class Lcom/google/android/gms/internal/nm$2;
.super Lcom/google/android/gms/internal/nn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nm;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/internal/nm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nm;Ljava/lang/String;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/nm$2;->c:Lcom/google/android/gms/internal/nm;

    iput-object p2, p0, Lcom/google/android/gms/internal/nm$2;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/nm$2;->b:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nn;-><init>(Lcom/google/android/gms/internal/nm$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nm$2;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nm$2;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/nm$2;->b:Z

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;Z)V

    return-void
.end method
