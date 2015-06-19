.class final Lcom/google/android/gms/a/c$7;
.super Lcom/google/android/gms/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/a/c;->d(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/k;-><init>(Lcom/google/android/gms/a/c$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ep;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/a/c$7;->a(Lcom/google/android/gms/internal/ep;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ep;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ep;->a(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method
