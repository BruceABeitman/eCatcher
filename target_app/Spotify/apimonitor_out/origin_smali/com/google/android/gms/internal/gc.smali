.class public final Lcom/google/android/gms/internal/gc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/k;


# instance fields
.field private final a:Lcom/google/android/gms/common/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gc;->a:Lcom/google/android/gms/common/c;

    return-void
.end method


# virtual methods
.method public final a_(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gc;->a:Lcom/google/android/gms/common/c;

    invoke-interface {v0}, Lcom/google/android/gms/common/c;->b()V

    return-void
.end method

.method public final a_(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gc;->a:Lcom/google/android/gms/common/c;

    invoke-interface {v0}, Lcom/google/android/gms/common/c;->b_()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/gc;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/gc;->a:Lcom/google/android/gms/common/c;

    check-cast p1, Lcom/google/android/gms/internal/gc;

    iget-object v1, p1, Lcom/google/android/gms/internal/gc;->a:Lcom/google/android/gms/common/c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/gc;->a:Lcom/google/android/gms/common/c;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method
