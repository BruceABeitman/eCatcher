.class Lcom/google/android/gms/tagmanager/er;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ay;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/eo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/eo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/eo;Lcom/google/android/gms/tagmanager/eo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/er;-><init>(Lcom/google/android/gms/tagmanager/eo;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/cp;)V
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    monitor-enter v1

    :try_start_3
    iget-object v0, p1, Lcom/google/android/gms/internal/cp;->b:Lcom/google/android/gms/internal/cl;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/eo;->c(Lcom/google/android/gms/tagmanager/eo;)Lcom/google/android/gms/internal/cp;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/cp;->b:Lcom/google/android/gms/internal/cl;

    if-nez v0, :cond_20

    const-string v0, "Current resource is null; network resource is also null"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/tagmanager/eo;J)V

    monitor-exit v1

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/eo;->c(Lcom/google/android/gms/tagmanager/eo;)Lcom/google/android/gms/internal/cp;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/cp;->b:Lcom/google/android/gms/internal/cl;

    iput-object v0, p1, Lcom/google/android/gms/internal/cp;->b:Lcom/google/android/gms/internal/cl;

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/tagmanager/eo;)Lcom/google/android/gms/internal/je;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/je;->a()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, p1, v2, v3, v4}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/tagmanager/eo;Lcom/google/android/gms/internal/cp;JZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting refresh time to current time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/eo;->d(Lcom/google/android/gms/tagmanager/eo;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/eo;->e(Lcom/google/android/gms/tagmanager/eo;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/tagmanager/eo;Lcom/google/android/gms/internal/cp;)V

    :cond_63
    monitor-exit v1

    goto :goto_1f

    :catchall_65
    move-exception v0

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw v0
.end method

.method public a(Lcom/google/android/gms/tagmanager/az;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/eo;->f(Lcom/google/android/gms/tagmanager/eo;)Lcom/google/android/gms/tagmanager/el;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/eo;->f(Lcom/google/android/gms/tagmanager/eo;)Lcom/google/android/gms/tagmanager/el;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/common/api/m;)V

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    const-wide/32 v1, 0x36ee80

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/tagmanager/eo;J)V

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/er;->a:Lcom/google/android/gms/tagmanager/eo;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/eo;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/common/api/m;)V

    goto :goto_13
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/cp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/er;->a(Lcom/google/android/gms/internal/cp;)V

    return-void
.end method
