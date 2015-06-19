.class final Lcom/google/android/gms/a/c$5;
.super Lcom/google/android/gms/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/common/api/e;I)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/a/c$5;->a:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/j;-><init>(Lcom/google/android/gms/a/c$1;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/a/e;
    .registers 3

    new-instance v0, Lcom/google/android/gms/a/c$5$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/a/c$5$1;-><init>(Lcom/google/android/gms/a/c$5;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ep;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/a/c$5;->a(Lcom/google/android/gms/internal/ep;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ep;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/a/c$5;->a:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ep;->a(Lcom/google/android/gms/common/api/t;I)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/a/c$5;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/a/e;

    move-result-object v0

    return-object v0
.end method
