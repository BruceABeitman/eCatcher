.class final Lcom/google/android/gms/e/a$3;
.super Lcom/google/android/gms/e/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/e/a;->b(Lcom/google/android/gms/common/api/e;Landroid/net/Uri;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/e/a$3;->a:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/google/android/gms/e/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/qm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/e/a$3;->a(Lcom/google/android/gms/internal/qm;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/qm;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/e/a$3;->a:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/qm;->a(Lcom/google/android/gms/common/api/t;Landroid/net/Uri;Z)V

    return-void
.end method
