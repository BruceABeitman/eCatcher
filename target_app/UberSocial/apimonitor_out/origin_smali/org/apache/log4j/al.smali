.class public Lorg/apache/log4j/al;
.super Lorg/apache/log4j/r;
.source "SourceFile"


# instance fields
.field protected a:J

.field protected i:I

.field private j:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/apache/log4j/r;-><init>()V

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/al;->a:J

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/al;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/al;->j:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/u;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/r;-><init>(Lorg/apache/log4j/u;Ljava/lang/String;)V

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/al;->a:J

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/al;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/al;->j:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/u;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/log4j/r;-><init>(Lorg/apache/log4j/u;Ljava/lang/String;Z)V

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/al;->a:J

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/al;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/al;->j:J

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/apache/log4j/al;->i:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/log4j/al;->a:J

    return-void
.end method

.method protected a(Ljava/io/Writer;)V
    .registers 4

    new-instance v0, Lorg/apache/log4j/c/d;

    iget-object v1, p0, Lorg/apache/log4j/al;->e:Lorg/apache/log4j/k/e;

    invoke-direct {v0, p1, v1}, Lorg/apache/log4j/c/d;-><init>(Ljava/io/Writer;Lorg/apache/log4j/k/e;)V

    iput-object v0, p0, Lorg/apache/log4j/al;->z:Lorg/apache/log4j/c/aa;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;ZZI)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/log4j/al;->v:Z

    iget v1, p0, Lorg/apache/log4j/al;->w:I

    invoke-super {p0, p1, p2, v0, v1}, Lorg/apache/log4j/r;->a(Ljava/lang/String;ZZI)V

    if-eqz p2, :cond_1a

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/al;->z:Lorg/apache/log4j/c/aa;

    check-cast v0, Lorg/apache/log4j/c/d;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/c/d;->a(J)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    iget-wide v0, p0, Lorg/apache/log4j/al;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/al;->a:J

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/al;->i:I

    return v0
.end method

.method protected c(Lorg/apache/log4j/k/k;)V
    .registers 6

    invoke-super {p0, p1}, Lorg/apache/log4j/r;->c(Lorg/apache/log4j/k/k;)V

    iget-object v0, p0, Lorg/apache/log4j/al;->u:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/apache/log4j/al;->z:Lorg/apache/log4j/c/aa;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/apache/log4j/al;->z:Lorg/apache/log4j/c/aa;

    check-cast v0, Lorg/apache/log4j/c/d;

    invoke-virtual {v0}, Lorg/apache/log4j/c/d;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/log4j/al;->a:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_22

    iget-wide v2, p0, Lorg/apache/log4j/al;->j:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_22

    invoke-virtual {p0}, Lorg/apache/log4j/al;->n()V

    :cond_22
    return-void
.end method

.method public l()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/log4j/al;->a:J

    return-wide v0
.end method

.method public n()V
    .registers 8

    const/16 v6, 0x2e

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/log4j/al;->z:Lorg/apache/log4j/c/aa;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/apache/log4j/al;->z:Lorg/apache/log4j/c/aa;

    check-cast v0, Lorg/apache/log4j/c/d;

    invoke-virtual {v0}, Lorg/apache/log4j/c/d;->a()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "rolling over count="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-wide v4, p0, Lorg/apache/log4j/al;->a:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/log4j/al;->j:J

    :cond_2a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "maxBackupIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lorg/apache/log4j/al;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/log4j/al;->i:I

    if-lez v0, :cond_1a5

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/apache/log4j/al;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/log4j/al;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_6e
    iget v2, p0, Lorg/apache/log4j/al;->i:I

    add-int/lit8 v2, v2, -0x1

    :goto_72
    if-lt v2, v1, :cond_df

    if-eqz v0, :cond_df

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lorg/apache/log4j/al;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_dc

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lorg/apache/log4j/al;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Renaming file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    :cond_dc
    add-int/lit8 v2, v2, -0x1

    goto :goto_72

    :cond_df
    if-eqz v0, :cond_13a

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/apache/log4j/al;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/log4j/al;->q()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/log4j/al;->u:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Renaming file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_175

    :try_start_12f
    iget-object v0, p0, Lorg/apache/log4j/al;->u:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lorg/apache/log4j/al;->v:Z

    iget v4, p0, Lorg/apache/log4j/al;->w:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/apache/log4j/al;->a(Ljava/lang/String;ZZI)V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_139} :catch_14b

    move v0, v1

    :cond_13a
    :goto_13a
    if-eqz v0, :cond_14a

    :try_start_13c
    iget-object v0, p0, Lorg/apache/log4j/al;->u:Ljava/lang/String;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/apache/log4j/al;->v:Z

    iget v3, p0, Lorg/apache/log4j/al;->w:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/log4j/al;->a(Ljava/lang/String;ZZI)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/al;->j:J
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_14a} :catch_177

    :cond_14a
    :goto_14a
    return-void

    :catch_14b
    move-exception v0

    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_157

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_157
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "setFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/al;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", true) call failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_175
    move v0, v1

    goto :goto_13a

    :catch_177
    move-exception v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_183

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_183
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "setFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/al;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", false) call failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14a

    :cond_1a2
    move v0, v1

    goto/16 :goto_6e

    :cond_1a5
    move v0, v1

    goto :goto_13a
.end method
