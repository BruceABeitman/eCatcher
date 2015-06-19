.class public Lorg/apache/log4j/f/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "mru_file_manager"

.field private static final b:I = 0x3


# instance fields
.field private c:I

.field private d:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/f/b/b/b;->c:I

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/b;->e()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/b/b;->d(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/f/b/b/b;->c:I

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/b;->e()V

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/b/b;->d(I)V

    return-void
.end method

.method public static d()V
    .registers 4

    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lf5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_31
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/b;->b()I

    move-result v0

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a()V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_9
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public a(Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/b/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lorg/apache/log4j/f/b/b/b;->c:I

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/b/b;->d(I)V

    :goto_14
    return-void

    :cond_15
    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/b/b;->c(I)V

    goto :goto_14
.end method

.method public a(Ljava/net/URL;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/b/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Ljava/io/InputStream;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/b;->b()I

    move-result v0

    if-ge p1, v0, :cond_1c

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/b/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_15

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/b/b;->b(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    check-cast v0, Ljava/net/URL;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/b/b;->b(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_14

    :cond_1c
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected b(Ljava/io/File;)Ljava/io/InputStream;
    .registers 4

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected b(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 3

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public c()[Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/b;->b()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/b;->b()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/b;->b()I

    move-result v0

    if-ge v1, v0, :cond_31

    invoke-virtual {p0, v1}, Lorg/apache/log4j/f/b/b/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/io/File;

    if-eqz v3, :cond_2a

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    :goto_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_26

    :cond_31
    move-object v0, v2

    goto :goto_7
.end method

.method protected d(I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1a

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    iput p1, p0, Lorg/apache/log4j/f/b/b/b;->c:I

    return-void
.end method

.method protected e()V
    .registers 4

    invoke-static {}, Lorg/apache/log4j/f/b/b/b;->d()V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4c

    :try_start_12
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/io/File;

    if-nez v2, :cond_2d

    instance-of v1, v1, Ljava/net/URL;

    if-nez v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_42} :catch_43

    goto :goto_2d

    :catch_43
    move-exception v0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/f/b/b/b;->d:Ljava/util/LinkedList;

    goto :goto_4b
.end method

.method protected f()Ljava/lang/String;
    .registers 4

    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "lf5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "mru_file_manager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
