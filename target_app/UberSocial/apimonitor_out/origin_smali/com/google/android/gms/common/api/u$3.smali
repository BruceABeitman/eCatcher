.class Lcom/google/android/gms/common/api/u$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/gw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/u;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/u;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/u$3;->a:Lcom/google/android/gms/common/api/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/u$3;->a:Lcom/google/android/gms/common/api/u;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/u;->d()Z

    move-result v0

    return v0
.end method

.method public d_()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/u$3;->a:Lcom/google/android/gms/common/api/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/u;->g(Lcom/google/android/gms/common/api/u;)Z

    move-result v0

    return v0
.end method
