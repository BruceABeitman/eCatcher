.class Lcom/google/android/gms/a/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/a/k;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/a/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/a/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/k;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/a/k$1;->b:Lcom/google/android/gms/a/k;

    iput-object p2, p0, Lcom/google/android/gms/a/k$1;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/a/k$1;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/a/b;
    .registers 3

    new-instance v0, Lcom/google/android/gms/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/a/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method
