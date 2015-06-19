.class Lcom/google/android/gms/plus/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/plus/k;->a(Lcom/google/android/gms/plus/n;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/plus/n;

.field final synthetic b:Lcom/google/android/gms/plus/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/plus/k;Lcom/google/android/gms/plus/n;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/plus/k$2;->b:Lcom/google/android/gms/plus/k;

    iput-object p2, p0, Lcom/google/android/gms/plus/k$2;->a:Lcom/google/android/gms/plus/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/plus/c;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/plus/k$2;->a:Lcom/google/android/gms/plus/n;

    invoke-interface {p1}, Lcom/google/android/gms/plus/c;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->j()Lcom/google/android/gms/common/b;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/plus/c;->b()Lcom/google/android/gms/plus/a/a/e;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/plus/c;->i_()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/plus/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/plus/n;->a(Lcom/google/android/gms/common/b;Lcom/google/android/gms/plus/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/plus/c;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/k$2;->a(Lcom/google/android/gms/plus/c;)V

    return-void
.end method
