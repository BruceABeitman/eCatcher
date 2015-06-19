.class Lcom/google/android/gms/internal/nt$6;
.super Lcom/google/android/gms/internal/nu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nt;->a(Lcom/google/android/gms/common/api/e;Z)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/internal/nt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nt;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/nt$6;->b:Lcom/google/android/gms/internal/nt;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/nt$6;->a:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nu;-><init>(Lcom/google/android/gms/internal/nt$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nt$6;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/nt$6;->a:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Z)V

    return-void
.end method
