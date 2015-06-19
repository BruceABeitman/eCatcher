.class public Lorg/apache/b/a/e/a/a;
.super Lorg/apache/b/a/e/a/g;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/Class;

.field private static c:Lorg/apache/commons/logging/Log;


# instance fields
.field private d:Lorg/apache/b/a/e/a/f;

.field private e:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/b/a/e/a/a;->a:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.b.a.e.a.a"

    invoke-static {v0}, Lorg/apache/b/a/e/a/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/e/a/a;->a:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/e/a/a;->c:Lorg/apache/commons/logging/Log;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/b/a/e/a/a;->a:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/b/a/e/a/g;-><init>()V

    iput-object v2, p0, Lorg/apache/b/a/e/a/a;->d:Lorg/apache/b/a/e/a/f;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/e/a/a;->e:Ljava/util/Random;

    new-instance v0, Lorg/apache/b/a/e/a/d;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/b/a/e/a/d;-><init>(Lorg/apache/b/a/e/a/a;Ljava/lang/String;Lorg/apache/b/a/e/a/b;)V

    iput-object v0, p0, Lorg/apache/b/a/e/a/a;->d:Lorg/apache/b/a/e/a/f;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method static a(Lorg/apache/b/a/e/a/a;Lorg/apache/b/a/e/a/f;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/e/a/e;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/b/a/e/a/a;->a(Lorg/apache/b/a/e/a/f;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/e/a/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/b/a/e/a/f;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/e/a/e;
    .registers 10

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    if-nez p3, :cond_8

    const-string p3, ".tmp"

    :cond_8
    const/16 v0, 0x3e8

    monitor-enter p0

    :cond_b
    :try_start_b
    iget-object v1, p0, Lorg/apache/b/a/e/a/a;->e:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    new-instance v3, Ljava/io/File;

    invoke-interface {p1}, Lorg/apache/b/a/e/a/f;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    if-gtz v0, :cond_b

    :cond_3d
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Creating temp file failed: Unable to find unique file name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4b
    move-exception v0

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_4b

    throw v0

    :cond_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_59

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_4b

    new-instance v0, Lorg/apache/b/a/e/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lorg/apache/b/a/e/a/c;-><init>(Ljava/io/File;Lorg/apache/b/a/e/a/b;)V

    return-object v0

    :catch_59
    move-exception v0

    :try_start_5a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Creating dir \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7d
    .catchall {:try_start_5a .. :try_end_7d} :catchall_4b
.end method

.method static a(Lorg/apache/b/a/e/a/a;Lorg/apache/b/a/e/a/f;Ljava/lang/String;)Lorg/apache/b/a/e/a/f;
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/apache/b/a/e/a/a;->a(Lorg/apache/b/a/e/a/f;Ljava/lang/String;)Lorg/apache/b/a/e/a/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/b/a/e/a/f;Ljava/lang/String;)Lorg/apache/b/a/e/a/f;
    .registers 9

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    const/16 v0, 0x3e8

    :cond_6
    iget-object v1, p0, Lorg/apache/b/a/e/a/a;->e:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    new-instance v3, Ljava/io/File;

    invoke-interface {p1}, Lorg/apache/b/a/e/a/f;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    if-gtz v0, :cond_6

    :cond_34
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_7f

    :cond_40
    sget-object v0, Lorg/apache/b/a/e/a/a;->c:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unable to mkdirs on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Creating dir \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    new-instance v0, Lorg/apache/b/a/e/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v3, v1}, Lorg/apache/b/a/e/a/d;-><init>(Lorg/apache/b/a/e/a/a;Ljava/io/File;Lorg/apache/b/a/e/a/b;)V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/apache/b/a/e/a/f;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/a/a;->d:Lorg/apache/b/a/e/a/f;

    return-object v0
.end method
