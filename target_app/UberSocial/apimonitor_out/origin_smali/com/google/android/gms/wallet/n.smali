.class public Lcom/google/android/gms/wallet/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/d;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ry;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;ILcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ry;

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ry;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;)V
    .registers 13

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/wallet/n;-><init>(Landroid/app/Activity;ILjava/lang/String;ILcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ry;->a()V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ry;->a(I)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/e;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ry;->a(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/f;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ry;->a(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ry;->a(Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    return-void
.end method

.method public a(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ry;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    return-void
.end method

.method public a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ry;->a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ry;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/e;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ry;->b(Lcom/google/android/gms/common/e;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/common/f;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ry;->b(Lcom/google/android/gms/common/f;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/android/gms/common/e;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ry;->c(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/common/f;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ry;->c(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ry;->c()Z

    move-result v0

    return v0
.end method

.method public c_()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ry;->c_()V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/n;->a:Lcom/google/android/gms/internal/ry;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ry;->d()Z

    move-result v0

    return v0
.end method
