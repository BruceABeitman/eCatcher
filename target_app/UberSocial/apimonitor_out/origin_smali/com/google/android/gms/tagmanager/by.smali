.class Lcom/google/android/gms/tagmanager/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/do;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/bx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/bx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/by;->a:Lcom/google/android/gms/tagmanager/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/af;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/by;->a:Lcom/google/android/gms/tagmanager/bx;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/af;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bx;->a(Lcom/google/android/gms/tagmanager/bx;J)V

    return-void
.end method

.method public b(Lcom/google/android/gms/tagmanager/af;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/by;->a:Lcom/google/android/gms/tagmanager/bx;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/af;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bx;->a(Lcom/google/android/gms/tagmanager/bx;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permanent failure dispatching hitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/af;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/tagmanager/af;)V
    .registers 7

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/af;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/by;->a:Lcom/google/android/gms/tagmanager/bx;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/af;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/by;->a:Lcom/google/android/gms/tagmanager/bx;

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/bx;->a(Lcom/google/android/gms/tagmanager/bx;)Lcom/google/android/gms/internal/je;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/je;->a()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/tagmanager/bx;->a(Lcom/google/android/gms/tagmanager/bx;JJ)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const-wide/32 v2, 0xdbba00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/by;->a:Lcom/google/android/gms/tagmanager/bx;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bx;->a(Lcom/google/android/gms/tagmanager/bx;)Lcom/google/android/gms/internal/je;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/je;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/by;->a:Lcom/google/android/gms/tagmanager/bx;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/af;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bx;->a(Lcom/google/android/gms/tagmanager/bx;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Giving up on failed hitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/af;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V

    goto :goto_1d
.end method
