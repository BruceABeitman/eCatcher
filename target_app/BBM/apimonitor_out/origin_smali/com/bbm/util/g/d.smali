.class public final Lcom/bbm/util/g/d;
.super Ljava/lang/Object;
.source "BbmVCardUtil.java"


# direct methods
.method public static a(Ljava/io/File;)Lcom/bbm/util/g/a;
    .registers 8

    const/4 v6, 0x0

    new-instance v1, Lcom/bbm/util/g/b;

    invoke-direct {v1}, Lcom/bbm/util/g/b;-><init>()V

    new-instance v2, Lcom/bbm/util/g/c;

    invoke-direct {v2}, Lcom/bbm/util/g/c;-><init>()V

    iget-object v0, v2, Lcom/bbm/util/g/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/a/a/af;

    invoke-direct {v3}, Lcom/a/a/af;-><init>()V

    :try_start_15
    new-instance v0, Lcom/a/a/ac;

    invoke-direct {v0}, Lcom/a/a/ac;-><init>()V

    invoke-virtual {v0, v2}, Lcom/a/a/y;->a(Lcom/a/a/x;)V

    invoke-virtual {v0, v3}, Lcom/a/a/y;->a(Lcom/a/a/x;)V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v4}, Lcom/a/a/y;->a(Ljava/io/InputStream;)V
    :try_end_28
    .catch Lcom/a/a/a/f; {:try_start_15 .. :try_end_28} :catch_36
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_28} :catch_6a

    :goto_28
    iget-object v0, v1, Lcom/bbm/util/g/b;->a:Lcom/google/b/a/l;

    new-instance v1, Lcom/bbm/util/g/a;

    invoke-direct {v1}, Lcom/bbm/util/g/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/b/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/g/a;

    return-object v0

    :catch_36
    move-exception v0

    const-string v4, "VCard parsing version exception handled: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/a/a/a/f;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    :try_start_45
    new-instance v0, Lcom/a/a/ad;

    invoke-direct {v0}, Lcom/a/a/ad;-><init>()V

    invoke-virtual {v0, v2}, Lcom/a/a/y;->a(Lcom/a/a/x;)V

    invoke-virtual {v0, v3}, Lcom/a/a/y;->a(Lcom/a/a/x;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lcom/a/a/y;->a(Ljava/io/InputStream;)V

    const-string v0, "vCard Parsed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_60} :catch_61

    goto :goto_28

    :catch_61
    move-exception v0

    const-string v2, "Failed to parse vcard"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_28

    :catch_6a
    move-exception v0

    const-string v2, "Failed to parse vcard"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_28
.end method

.method public static a(Lcom/a/a/d;)Lcom/google/b/a/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d;",
            ")",
            "Lcom/google/b/a/l",
            "<[B>;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/a/a/d;->b:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_11
    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    goto :goto_6

    :cond_16
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/r;

    iget-object v0, v0, Lcom/a/a/r;->a:[B

    invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    goto :goto_6
.end method

.method public static a(Ljava/io/File;Lcom/bbm/d/gp;D)Ljava/lang/String;
    .registers 12

    const/4 v7, 0x0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".vcf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v2

    :try_start_23
    invoke-interface {v2}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/fd;

    invoke-virtual {v1}, Lcom/bbm/d/fd;->c()[B

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/bbm/util/g/d;->a(Ljava/io/File;Lcom/bbm/d/gp;[B)Z
    :try_end_30
    .catch Lcom/bbm/j/z; {:try_start_23 .. :try_end_30} :catch_52

    move-result v6

    :try_start_31
    invoke-interface {v2}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/fd;

    invoke-virtual {v1}, Lcom/bbm/d/fd;->c()[B

    move-result-object v2

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/g/d;->a(Ljava/io/File;Lcom/bbm/d/gp;[BDLjava/io/File;)Z
    :try_end_41
    .catch Lcom/bbm/j/z; {:try_start_31 .. :try_end_41} :catch_61

    move-result v1

    :goto_42
    if-eqz v6, :cond_57

    if-eqz v1, :cond_57

    const-string v1, "vcf file created successfully"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_51
    return-object v0

    :catch_52
    move-exception v1

    move v1, v7

    :goto_54
    move v6, v1

    move v1, v7

    goto :goto_42

    :cond_57
    const-string v0, "failed to create vcf file"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_51

    :catch_61
    move-exception v1

    move v1, v6

    goto :goto_54
.end method

.method private static a(Ljava/io/File;Lcom/bbm/d/gp;[B)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string v1, "createVCard null user"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_a
    :goto_a
    return v0

    :cond_b
    if-nez p0, :cond_15

    const-string v1, "createVCard null file"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_15
    iget-object v1, p1, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v1, v2, :cond_23

    const-string v1, "Cannot createVCard with non existent user"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_23
    new-instance v1, Lcom/a/a/b;

    invoke-direct {v1}, Lcom/a/a/b;-><init>()V

    const-string v2, "X-RIM-PIN"

    invoke-static {p1}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "data1"

    iget-object v5, p1, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/a/a/b;->a(Ljava/util/List;)Lcom/a/a/b;

    if-eqz p2, :cond_be

    array-length v2, p2

    if-lez v2, :cond_be

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2}, Lcom/a/a/ag;->a([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHOTO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/a/a/b;->b:Z

    if-eqz v5, :cond_e9

    const-string v5, "ENCODING=B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7a
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/a/a/b;->a:I

    invoke-static {v5}, Lcom/a/a/c;->c(I)Z

    move-result v5

    if-nez v5, :cond_97

    iget v5, v1, Lcom/a/a/b;->a:I

    invoke-static {v5}, Lcom/a/a/c;->b(I)Z

    move-result v5

    if-nez v5, :cond_93

    iget-boolean v5, v1, Lcom/a/a/b;->d:Z

    if-eqz v5, :cond_9c

    :cond_93
    iget-boolean v5, v1, Lcom/a/a/b;->c:Z

    if-nez v5, :cond_9c

    :cond_97
    const-string v5, "TYPE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_be
    const/4 v2, 0x0

    :try_start_bf
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_ce

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_ce

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_ce
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d7

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_d7
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_dc
    .catchall {:try_start_bf .. :try_end_dc} :catchall_105
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_dc} :catch_f4

    :try_start_dc
    invoke-virtual {v1}, Lcom/a/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_111
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e3} :catch_114

    :try_start_e3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_ef

    :goto_e6
    const/4 v0, 0x1

    goto/16 :goto_a

    :cond_e9
    const-string v5, "ENCODING=BASE64"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    :catch_ef
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_e6

    :catch_f4
    move-exception v1

    :goto_f5
    :try_start_f5
    invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_105

    if-eqz v2, :cond_a

    :try_start_fa
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_ff

    goto/16 :goto_a

    :catch_ff
    move-exception v1

    invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :catchall_105
    move-exception v0

    :goto_106
    if-eqz v2, :cond_10b

    :try_start_108
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_10c

    :cond_10b
    :goto_10b
    throw v0

    :catch_10c
    move-exception v1

    invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_10b

    :catchall_111
    move-exception v0

    move-object v2, v3

    goto :goto_106

    :catch_114
    move-exception v1

    move-object v2, v3

    goto :goto_f5
.end method

.method private static a(Ljava/io/File;Lcom/bbm/d/gp;[BDLjava/io/File;)Z
    .registers 16

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    double-to-long v3, p3

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    const-string v5, "shrinkVcardIfRequired MaxVCardSize %d, initial vcard size %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_27

    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    cmp-long v1, v1, v3

    if-gez v1, :cond_2d

    const/4 v0, 0x1

    goto :goto_26

    :cond_2d
    const-string v1, "shrinkVcardIfRequired shrinking vcard"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    :try_start_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tmp.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v5, p2

    invoke-static {p2, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0xc00

    sub-long v6, v3, v6

    invoke-static {v2, v1, v5, v6, v7}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;ZJ)Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_65} :catch_9d

    :try_start_65
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/google/b/d/a;->a(Ljava/io/InputStream;)[B
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_6d} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6d} :catch_9d

    move-result-object v1

    :try_start_6e
    invoke-static {p0, p1, v1}, Lcom/bbm/util/g/d;->a(Ljava/io/File;Lcom/bbm/d/gp;[B)Z

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-string v1, "shrinkVcardIfRequired vcard shrunken size is %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    cmp-long v1, v5, v3

    if-gtz v1, :cond_af

    const/4 v0, 0x1

    :cond_89
    :goto_89
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    const-string v2, "shrinkVcardIfRequired Has the temp file been deleted %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_9c} :catch_9d

    goto :goto_26

    :catch_9d
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_26

    :catch_a3
    move-exception v0

    :try_start_a4
    const-string v0, "No image attached to vcard"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto/16 :goto_26

    :cond_af
    const-string v1, "shrinkVcardIfRequired vcard too big discarding photo"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/bbm/util/g/d;->a(Ljava/io/File;Lcom/bbm/d/gp;[B)Z

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-gtz v1, :cond_89

    const-string v0, "shrinkVcardIfRequired vcard still too big without photo."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_cb} :catch_9d

    const/4 v0, 0x0

    goto :goto_89
.end method

.method public static b(Lcom/a/a/d;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/a/a/d;->b:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_10
    move v0, v1

    goto :goto_5

    :cond_12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/r;

    if-eqz v0, :cond_26

    iget-object v3, v0, Lcom/a/a/r;->a:[B

    if-eqz v3, :cond_23

    iget-object v0, v0, Lcom/a/a/r;->a:[B

    array-length v0, v0

    if-nez v0, :cond_28

    :cond_23
    move v0, v2

    :goto_24
    if-eqz v0, :cond_2a

    :cond_26
    move v0, v1

    goto :goto_5

    :cond_28
    move v0, v1

    goto :goto_24

    :cond_2a
    move v0, v2

    goto :goto_5
.end method
