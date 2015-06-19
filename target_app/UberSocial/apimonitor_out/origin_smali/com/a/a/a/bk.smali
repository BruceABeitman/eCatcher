.class public Lcom/a/a/a/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private c:Lcom/a/a/a/br;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/bk;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/a/a/a/bk;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/bk;->d:Ljava/io/File;

    new-instance v0, Lcom/a/a/a/br;

    iget-object v1, p0, Lcom/a/a/a/bk;->d:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/a/a/a/br;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/a/a/a/bk;->c:Lcom/a/a/a/br;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/a/bk;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/a/a/a/bk;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/bk;->e:Ljava/io/File;

    iget-object v0, p0, Lcom/a/a/a/bk;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/a/a/a/bk;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2f
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/bk;->c:Lcom/a/a/a/br;

    invoke-virtual {v0}, Lcom/a/a/a/br;->a()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/util/List;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/a/a/a/bk;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1a

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1b

    :cond_1a
    return-object v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/a/bk;->c:Lcom/a/a/a/br;

    invoke-virtual {v0}, Lcom/a/a/a/br;->close()V

    iget-object v4, p0, Lcom/a/a/a/bk;->d:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/a/bk;->e:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_3c

    :try_start_14
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_4c

    const/16 v0, 0x400

    :try_start_20
    new-array v0, v0, [B

    invoke-static {v1, v3, v0}, Lcom/a/a/a/bc;->a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_4e

    const-string v0, "Failed to close file input stream"

    invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    const-string v0, "Failed to close gzip output stream"

    invoke-static {v3, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v0, Lcom/a/a/a/br;

    iget-object v1, p0, Lcom/a/a/a/bk;->d:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/a/a/a/br;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/a/a/a/bk;->c:Lcom/a/a/a/br;

    return-void

    :catchall_3c
    move-exception v0

    move-object v1, v2

    :goto_3e
    const-string v3, "Failed to close file input stream"

    invoke-static {v1, v3}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    const-string v1, "Failed to close gzip output stream"

    invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v0

    :catchall_4c
    move-exception v0

    goto :goto_3e

    :catchall_4e
    move-exception v0

    move-object v2, v3

    goto :goto_3e
.end method

.method public a(Ljava/util/List;)V
    .registers 8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const-string v2, "deleting sent analytics file %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    :cond_27
    return-void
.end method

.method public a([B)V
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/bk;->c:Lcom/a/a/a/br;

    invoke-virtual {v0, p1}, Lcom/a/a/a/br;->a([B)V

    return-void
.end method

.method public a(II)Z
    .registers 4

    iget-object v0, p0, Lcom/a/a/a/bk;->c:Lcom/a/a/a/br;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/br;->a(II)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/bk;->c:Lcom/a/a/a/br;

    invoke-virtual {v0}, Lcom/a/a/a/br;->b()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/bk;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/bk;->c:Lcom/a/a/a/br;

    invoke-virtual {v0}, Lcom/a/a/a/br;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_b

    :goto_5
    iget-object v0, p0, Lcom/a/a/a/bk;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catch_b
    move-exception v0

    goto :goto_5
.end method
