.class Lcom/google/android/gms/internal/qq$1;
.super Lcom/google/android/gms/internal/qr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/qq;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/qq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qq;Lcom/google/android/gms/common/api/c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/qq$1;->a:Lcom/google/android/gms/internal/qq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/qr;-><init>(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qq$1;->a(Lcom/google/android/gms/plus/internal/l;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/l;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/plus/internal/l;->c(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method
