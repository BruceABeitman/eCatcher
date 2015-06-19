.class public abstract Lcom/google/android/gms/common/data/f;
.super Lcom/google/android/gms/common/data/a;


# instance fields
.field protected final b:Lcom/google/android/gms/common/data/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/data/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/google/android/gms/common/data/f;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_c
    const-string v1, "Not possible to have nested FilteredDataBuffers."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gj;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/data/f;->b:Lcom/google/android/gms/common/data/a;

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method public b(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/data/f;->b:Lcom/google/android/gms/common/data/a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/f;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/f;->b:Lcom/google/android/gms/common/data/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->b()V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/f;->b:Lcom/google/android/gms/common/data/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->c()Z

    move-result v0

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/f;->b:Lcom/google/android/gms/common/data/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->e()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
