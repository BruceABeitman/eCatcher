.class final Lcom/google/android/gms/a/c$4;
.super Lcom/google/android/gms/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/a/c;->b(Lcom/google/android/gms/common/api/e;I[B)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[B


# direct methods
.method constructor <init>(I[B)V
    .registers 4

    iput p1, p0, Lcom/google/android/gms/a/c$4;->a:I

    iput-object p2, p0, Lcom/google/android/gms/a/c$4;->b:[B

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/m;-><init>(Lcom/google/android/gms/a/c$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ep;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/a/c$4;->a(Lcom/google/android/gms/internal/ep;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ep;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/a/c$4;->a:I

    iget-object v1, p0, Lcom/google/android/gms/a/c$4;->b:[B

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ep;->a(Lcom/google/android/gms/common/api/t;I[B)V

    return-void
.end method
