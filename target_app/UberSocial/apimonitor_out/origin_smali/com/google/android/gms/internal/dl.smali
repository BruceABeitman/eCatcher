.class final Lcom/google/android/gms/internal/dl;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/dl;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/dl;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/dl;->b:J

    return-wide v0
.end method

.method public b()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dl;->b:J

    return-void
.end method

.method public c()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dl;->a:J

    return-void
.end method

.method public d()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "topen"

    iget-wide v2, p0, Lcom/google/android/gms/internal/dl;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "tclose"

    iget-wide v2, p0, Lcom/google/android/gms/internal/dl;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method