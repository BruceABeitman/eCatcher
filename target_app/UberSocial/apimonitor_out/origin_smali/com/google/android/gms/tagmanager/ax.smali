.class Lcom/google/android/gms/tagmanager/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cf;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:I

.field private d:D

.field private e:J

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/internal/je;


# direct methods
.method public constructor <init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/je;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ax;->f:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tagmanager/ax;->c:I

    iget v0, p0, Lcom/google/android/gms/tagmanager/ax;->c:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/ax;->d:D

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/ax;->a:J

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/ax;->b:J

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/ax;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/ax;->h:Lcom/google/android/gms/internal/je;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 13

    const/4 v0, 0x0

    const-wide/high16 v10, 0x3ff0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ax;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ax;->h:Lcom/google/android/gms/internal/je;

    invoke-interface {v2}, Lcom/google/android/gms/internal/je;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/ax;->e:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/ax;->b:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Excessive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/ax;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detected; call ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V

    monitor-exit v1

    :goto_35
    return v0

    :cond_36
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/ax;->d:D

    iget v6, p0, Lcom/google/android/gms/tagmanager/ax;->c:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5a

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/ax;->e:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/ax;->a:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_5a

    iget v6, p0, Lcom/google/android/gms/tagmanager/ax;->c:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/ax;->d:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/ax;->d:D

    :cond_5a
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/ax;->e:J

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/ax;->d:D

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_6d

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/ax;->d:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/ax;->d:D

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_35

    :catchall_6a
    move-exception v0

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6 .. :try_end_6c} :catchall_6a

    throw v0

    :cond_6d
    :try_start_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Excessive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/ax;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detected; call ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_6d .. :try_end_8c} :catchall_6a

    goto :goto_35
.end method
