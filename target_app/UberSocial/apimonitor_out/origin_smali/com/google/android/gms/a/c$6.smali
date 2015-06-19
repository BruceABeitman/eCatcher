.class final Lcom/google/android/gms/a/c$6;
.super Lcom/google/android/gms/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/a/c;->b(Lcom/google/android/gms/common/api/e;I)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/a/c$6;->a:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/m;-><init>(Lcom/google/android/gms/a/c$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ep;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/a/c$6;->a(Lcom/google/android/gms/internal/ep;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ep;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/a/c$6;->a:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ep;->b(Lcom/google/android/gms/common/api/t;I)V

    return-void
.end method
