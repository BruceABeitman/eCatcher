.class public abstract Lcom/loopj/android/http/o;
.super Lcom/loopj/android/http/k;
.source "SourceFile"


# instance fields
.field private c:J

.field private d:Z


# virtual methods
.method public final a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 6

    iget-object v0, p0, Lcom/loopj/android/http/o;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/loopj/android/http/o;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/loopj/android/http/o;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loopj/android/http/o;->c:J

    :cond_18
    iget-wide v0, p0, Lcom/loopj/android/http/o;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/http/o;->d:Z

    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/loopj/android/http/o;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    return-void
.end method
