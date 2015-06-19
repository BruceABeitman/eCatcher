.class public final Lcom/google/android/gms/internal/go;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/h;


# instance fields
.field private final c:Lcom/google/android/gms/common/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/go;->c:Lcom/google/android/gms/common/e;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/go;->c:Lcom/google/android/gms/common/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/e;->f_()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/go;->c:Lcom/google/android/gms/common/e;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/go;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/go;->c:Lcom/google/android/gms/common/e;

    check-cast p1, Lcom/google/android/gms/internal/go;

    iget-object v1, p1, Lcom/google/android/gms/internal/go;->c:Lcom/google/android/gms/common/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->c:Lcom/google/android/gms/common/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method
