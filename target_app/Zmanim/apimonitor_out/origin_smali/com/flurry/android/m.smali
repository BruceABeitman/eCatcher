.class final Lcom/flurry/android/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;

.field private c:J

.field private d:Z

.field private e:J

.field private f:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;JZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/android/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/android/m;->b:Ljava/util/Map;

    iput-wide p3, p0, Lcom/flurry/android/m;->c:J

    iput-boolean p5, p0, Lcom/flurry/android/m;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/m;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/android/m;->e:J

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/flurry/android/m;->d:Z

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lcom/flurry/android/m;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/flurry/android/m;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final b()[B
    .registers 7

    iget-object v0, p0, Lcom/flurry/android/m;->f:[B

    if-nez v0, :cond_32

    const/4 v0, 0x0

    :try_start_5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_8a

    :try_start_f
    iget-object v0, p0, Lcom/flurry/android/m;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/m;->b:Ljava/util/Map;

    if-nez v0, :cond_35

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :cond_1c
    iget-wide v0, p0, Lcom/flurry/android/m;->c:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v0, p0, Lcom/flurry/android/m;->e:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/m;->f:[B
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_82
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2f} :catch_6f

    invoke-static {v3}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/flurry/android/m;->f:[B

    return-object v0

    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/flurry/android/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_35 .. :try_end_6e} :catchall_82
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_6e} :catch_6f

    goto :goto_48

    :catch_6f
    move-exception v0

    move-object v0, v3

    :goto_71
    const/4 v1, 0x0

    :try_start_72
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/flurry/android/m;->f:[B
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_85

    invoke-static {v0}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    goto :goto_32

    :catchall_7a
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_7e
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_82
    move-exception v0

    move-object v1, v3

    goto :goto_7e

    :catchall_85
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_7e

    :catch_8a
    move-exception v1

    goto :goto_71
.end method
