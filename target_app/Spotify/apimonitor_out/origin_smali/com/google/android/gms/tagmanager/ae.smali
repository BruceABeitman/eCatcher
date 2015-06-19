.class final Lcom/google/android/gms/tagmanager/ae;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/dn;
    .registers 3

    new-instance v1, Lcom/google/android/gms/internal/dn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/dn;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/dn;->a:I

    iput v0, v1, Lcom/google/android/gms/internal/dn;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->k:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/google/android/gms/internal/dn;->k:[I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dn;->l:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dn;->l:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/dn;->l:Z

    :cond_1b
    return-object v1
.end method
