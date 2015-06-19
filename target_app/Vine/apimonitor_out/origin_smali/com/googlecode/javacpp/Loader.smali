.class public Lcom/googlecode/javacpp/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacpp/Loader$ClassProperties;
    }
.end annotation


# static fields
.field static loadLibraries:Z

.field static loadedLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static memberOffsets:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacpp/Pointer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final platformName:Ljava/lang/String;

.field private static platformProperties:Ljava/util/Properties;

.field static tempDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x0

    sput-object v6, Lcom/googlecode/javacpp/Loader;->platformProperties:Ljava/util/Properties;

    const-string v4, "java.vm.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "os.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "os.arch"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "dalvik"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9e

    const-string v4, "linux"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9e

    const-string v2, "android"

    :cond_33
    :goto_33
    const-string v4, "i386"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    const-string v4, "i486"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    const-string v4, "i586"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    const-string v4, "i686"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    :cond_53
    const-string v1, "x86"

    :cond_55
    :goto_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/googlecode/javacpp/Loader;->platformName:Ljava/lang/String;

    sput-object v6, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    const/4 v4, 0x1

    sput-boolean v4, Lcom/googlecode/javacpp/Loader;->loadLibraries:Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    sput-object v4, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getPlatformName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "windows"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Lcom/googlecode/javacpp/Loader$2;

    invoke-direct {v5}, Lcom/googlecode/javacpp/Loader$2;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    :cond_96
    new-instance v4, Ljava/util/WeakHashMap;

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v4, Lcom/googlecode/javacpp/Loader;->memberOffsets:Ljava/util/WeakHashMap;

    return-void

    :cond_9e
    const-string v4, "mac os x"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a9

    const-string v2, "macosx"

    goto :goto_33

    :cond_a9
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_33

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_33

    :cond_b8
    const-string v4, "amd64"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d0

    const-string v4, "x86-64"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d0

    const-string v4, "x64"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d3

    :cond_d0
    const-string v1, "x86_64"

    goto :goto_55

    :cond_d3
    const-string v4, "arm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    const-string v1, "arm"

    goto/16 :goto_55
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractResource(Ljava/lang/Class;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/googlecode/javacpp/Loader;->extractResource(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static extractResource(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/googlecode/javacpp/Loader;->extractResource(Ljava/lang/Class;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static extractResource(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    :goto_7
    if-nez v6, :cond_c

    :goto_9
    return-object v3

    :cond_a
    move-object v6, v3

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_55

    if-nez p3, :cond_55

    if-nez p1, :cond_20

    :try_start_14
    new-instance v1, Ljava/io/File;

    const-string v9, "java.io.tmpdir"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :cond_20
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_32} :catch_4c

    :try_start_32
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_61

    move-result v5

    move-object v3, v4

    :goto_37
    :try_start_37
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x400

    new-array v0, v9, [B

    :goto_40
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_5a

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4b} :catch_4c

    goto :goto_40

    :catch_4c
    move-exception v2

    :goto_4d
    if-eqz v3, :cond_54

    if-nez v5, :cond_54

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_54
    throw v2

    :cond_55
    :try_start_55
    invoke-static {p2, p3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    goto :goto_37

    :cond_5a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_60} :catch_4c

    goto :goto_9

    :catch_61
    move-exception v2

    move-object v3, v4

    goto :goto_4d
.end method

.method public static findLibrary(Ljava/lang/Class;Lcom/googlecode/javacpp/Loader$ClassProperties;Ljava/lang/String;)[Ljava/net/URL;
    .registers 27

    const-string v21, "@"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v21, 0x0

    aget-object v10, v14, v21

    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4a

    array-length v0, v14

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v14, v21

    :goto_20
    sget-object v21, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_57

    const/16 v21, 0x1

    :try_start_30
    move/from16 v0, v21

    new-array v0, v0, [Ljava/net/URL;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v23

    aput-object v23, v21, v22
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_49} :catch_4d

    :goto_49
    return-object v21

    :cond_4a
    const-string v20, ""

    goto :goto_20

    :catch_4d
    move-exception v3

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/net/URL;

    move-object/from16 v21, v0

    goto :goto_49

    :cond_57
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "platform.name"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "library.prefix"

    const-string v23, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v21, "library.suffix"

    const-string v22, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v15, v21

    const/16 v21, 0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v15, v21

    const/16 v21, 0x2

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v15, v21

    const/4 v8, 0x0

    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    const-string v21, "loader.preloadpath"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    const-string v21, "compiler.linkpath"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    array-length v0, v15

    move/from16 v21, v0

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    mul-int v21, v21, v22

    move/from16 v0, v21

    new-array v0, v0, [Ljava/net/URL;

    move-object/from16 v19, v0

    const/4 v6, 0x0

    move v9, v8

    :goto_141
    if-eqz p0, :cond_173

    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_173

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v15, v6

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v18

    if-eqz v18, :cond_1c5

    add-int/lit8 v8, v9, 0x1

    aput-object v18, v19, v9

    :goto_16f
    add-int/lit8 v6, v6, 0x1

    move v9, v8

    goto :goto_141

    :cond_173
    const/4 v6, 0x0

    move v8, v9

    :goto_175
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v21

    if-lez v21, :cond_1bb

    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_1bb

    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_186
    :goto_186
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1b8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    aget-object v21, v15, v6

    move-object/from16 v0, v21

    invoke-direct {v4, v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_186

    add-int/lit8 v9, v8, 0x1

    :try_start_1a3
    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v21

    aput-object v21, v19, v8
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1ad} :catch_1af

    move v8, v9

    goto :goto_186

    :catch_1af
    move-exception v3

    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    :cond_1b8
    add-int/lit8 v6, v6, 0x1

    goto :goto_175

    :cond_1bb
    move-object/from16 v0, v19

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/net/URL;

    goto/16 :goto_49

    :cond_1c5
    move v8, v9

    goto :goto_16f
.end method

.method public static getCallerClass(I)Ljava/lang/Class;
    .registers 6

    new-instance v3, Lcom/googlecode/javacpp/Loader$1;

    invoke-direct {v3}, Lcom/googlecode/javacpp/Loader$1;-><init>()V

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Loader$1;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v2, 0x0

    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_48

    aget-object v3, v0, v2

    const-class v4, Lcom/googlecode/javacpp/Loader;

    if-ne v3, v4, :cond_1a

    add-int v3, p0, v2

    aget-object v3, v0, v3

    :goto_19
    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1d
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    :goto_26
    array-length v3, v1

    if-ge v2, v3, :cond_48

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/googlecode/javacpp/Loader;

    if-ne v3, v4, :cond_44

    add-int v3, p0, v2

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_42} :catch_47

    move-result-object v3

    goto :goto_19

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :catch_47
    move-exception v3

    :cond_48
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public static getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4

    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_f

    const-class v2, Lcom/googlecode/javacpp/annotation/Properties;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    return-object v0

    :cond_10
    const-class v2, Lcom/googlecode/javacpp/annotation/Platform;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-class v2, Lcom/googlecode/javacpp/annotation/Platform;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/googlecode/javacpp/annotation/Platform;

    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Platform;->define()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_f

    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Platform;->include()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_f

    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Platform;->cinclude()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_f

    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Platform;->includepath()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_f

    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Platform;->options()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_f

    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Platform;->linkpath()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_f

    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Platform;->link()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_f

    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Platform;->framework()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_f

    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Platform;->preloadpath()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_f

    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Platform;->preload()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_f

    invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Platform;->library()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_f

    :cond_70
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method public static getPlatformName()Ljava/lang/String;
    .registers 2

    const-string v0, "com.googlecode.javacpp.platform.name"

    sget-object v1, Lcom/googlecode/javacpp/Loader;->platformName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempDir()Ljava/io/File;
    .registers 6

    sget-object v3, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    if-nez v3, :cond_3e

    new-instance v2, Ljava/io/File;

    const-string v3, "java.io.tmpdir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_3e

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javacpp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_41

    sput-object v0, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    sget-object v3, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    :cond_3e
    sget-object v3, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    return-object v3

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public static isLoadLibraries()Z
    .registers 1

    sget-boolean v0, Lcom/googlecode/javacpp/Loader;->loadLibraries:Z

    return v0
.end method

.method public static load()Ljava/lang/String;
    .registers 2

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static load(Ljava/lang/Class;)Ljava/lang/String;
    .registers 14

    const/4 v12, 0x1

    sget-boolean v9, Lcom/googlecode/javacpp/Loader;->loadLibraries:Z

    if-eqz v9, :cond_7

    if-nez p0, :cond_9

    :cond_7
    const/4 v9, 0x0

    :goto_8
    return-object v9

    :cond_9
    invoke-static {p0}, Lcom/googlecode/javacpp/Loader;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_19} :catch_55

    move-result-object p0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->loadProperties()Ljava/util/Properties;

    move-result-object v9

    invoke-static {p0, v9, v12}, Lcom/googlecode/javacpp/Loader;->loadProperties(Ljava/lang/Class;Ljava/util/Properties;Z)Lcom/googlecode/javacpp/Loader$ClassProperties;

    move-result-object v4

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    const-string v9, "loader.preload"

    invoke-virtual {v4, v9}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    const-string v9, "compiler.link"

    invoke-virtual {v4, v9}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    const/4 v6, 0x0

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_4a
    invoke-static {p0, v4, v5}, Lcom/googlecode/javacpp/Loader;->findLibrary(Ljava/lang/Class;Lcom/googlecode/javacpp/Loader$ClassProperties;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/googlecode/javacpp/Loader;->loadLibrary([Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4a .. :try_end_51} :catch_52

    goto :goto_3e

    :catch_52
    move-exception v0

    move-object v6, v0

    goto :goto_3e

    :catch_55
    move-exception v1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_63
    :try_start_63
    const-string v9, "loader.library"

    invoke-virtual {v4, v9}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v4, v3}, Lcom/googlecode/javacpp/Loader;->findLibrary(Ljava/lang/Class;Lcom/googlecode/javacpp/Loader$ClassProperties;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/googlecode/javacpp/Loader;->loadLibrary([Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    :try_end_70
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_63 .. :try_end_70} :catch_72

    move-result-object v9

    goto :goto_8

    :catch_72
    move-exception v0

    if-eqz v6, :cond_78

    invoke-virtual {v0, v6}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_78
    throw v0
.end method

.method public static loadLibrary([Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const/4 v4, 0x0

    sget-boolean v11, Lcom/googlecode/javacpp/Loader;->loadLibraries:Z

    if-nez v11, :cond_6

    :cond_5
    :goto_5
    return-object v4

    :cond_6
    sget-object v11, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    const/4 v9, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    :try_start_13
    array-length v6, v0

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v6, :cond_64

    aget-object v10, v0, v5
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_8e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_13 .. :try_end_19} :catch_82
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_9b

    :try_start_19
    new-instance v3, Ljava/io/File;

    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_8e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_42
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_19 .. :try_end_22} :catch_82
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_9b

    :goto_22
    if-eqz v3, :cond_61

    :try_start_24
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_61

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_8e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_24 .. :try_end_2d} :catch_82
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2d} :catch_9b

    move-result-object v4

    :try_start_2e
    sget-object v11, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    invoke-interface {v11, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_8e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2e .. :try_end_36} :catch_5a
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_36} :catch_9b

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    goto :goto_5

    :catch_42
    move-exception v1

    if-eqz v9, :cond_4e

    :try_start_45
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4e

    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    :cond_4e
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getTempDir()Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/googlecode/javacpp/Loader;->extractResource(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    move-object v3, v9

    goto :goto_22

    :catch_5a
    move-exception v1

    move-object v8, v1

    sget-object v11, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_64
    const-string v11, "@"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v7, v11, v12

    sget-object v11, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    invoke-interface {v11, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_45 .. :try_end_75} :catchall_8e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_45 .. :try_end_75} :catch_82
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_75} :catch_9b

    if-eqz v9, :cond_80

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_80

    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    :cond_80
    move-object v4, v7

    goto :goto_5

    :catch_82
    move-exception v1

    :try_start_83
    sget-object v11, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_8d

    invoke-virtual {v1, v8}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_8d
    throw v1
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception v11

    if-eqz v9, :cond_9a

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9a

    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    :cond_9a
    throw v11

    :catch_9b
    move-exception v2

    :try_start_9c
    sget-object v11, Lcom/googlecode/javacpp/Loader;->loadedLibraries:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_a6

    invoke-virtual {v2, v8}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_a6
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_b3
    .catchall {:try_start_9c .. :try_end_b3} :catchall_8e
.end method

.method public static loadProperties(Ljava/lang/Class;Ljava/util/Properties;Z)Lcom/googlecode/javacpp/Loader$ClassProperties;
    .registers 4

    new-instance v0, Lcom/googlecode/javacpp/Loader$ClassProperties;

    invoke-direct {v0, p1}, Lcom/googlecode/javacpp/Loader$ClassProperties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v0, p0, p2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->load(Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public static loadProperties([Ljava/lang/Class;Ljava/util/Properties;Z)Lcom/googlecode/javacpp/Loader$ClassProperties;
    .registers 8

    new-instance v2, Lcom/googlecode/javacpp/Loader$ClassProperties;

    invoke-direct {v2, p1}, Lcom/googlecode/javacpp/Loader$ClassProperties;-><init>(Ljava/util/Properties;)V

    move-object v0, p0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v4, :cond_12

    aget-object v1, v0, v3

    invoke-virtual {v2, v1, p2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->load(Ljava/lang/Class;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    return-object v2
.end method

.method public static loadProperties()Ljava/util/Properties;
    .registers 3

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/googlecode/javacpp/Loader;->platformProperties:Ljava/util/Properties;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/googlecode/javacpp/Loader;->platformProperties:Ljava/util/Properties;

    const-string v2, "platform.name"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/googlecode/javacpp/Loader;->platformProperties:Ljava/util/Properties;

    :goto_18
    return-object v1

    :cond_19
    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->loadProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    sput-object v1, Lcom/googlecode/javacpp/Loader;->platformProperties:Ljava/util/Properties;

    goto :goto_18
.end method

.method public static loadProperties(Ljava/lang/String;)Ljava/util/Properties;
    .registers 8

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    const-string v4, "platform.name"

    invoke-virtual {v3, v4, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "properties/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".properties"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v4, Lcom/googlecode/javacpp/Loader;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    :try_start_29
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_31
    .catch Ljava/lang/NoSuchMethodError; {:try_start_29 .. :try_end_31} :catch_32
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_37

    :goto_31
    return-object v3

    :catch_32
    move-exception v0

    :try_start_33
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_31

    :catch_37
    move-exception v0

    const-string p0, "properties/generic.properties"

    const-class v4, Lcom/googlecode/javacpp/Loader;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    :try_start_40
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_48
    .catch Ljava/lang/NoSuchMethodError; {:try_start_40 .. :try_end_48} :catch_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_4e

    goto :goto_31

    :catch_49
    move-exception v1

    :try_start_4a
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_31

    :catch_4e
    move-exception v1

    new-instance v4, Ljava/util/MissingResourceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not even get generic properties: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/googlecode/javacpp/Loader;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9

    new-instance v5, Ljava/io/File;

    const-string v6, "java.io.tmpdir"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "javacpp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2a

    :cond_29
    :goto_29
    return-void

    :cond_2a
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_30
    if-ge v2, v3, :cond_4b

    aget-object v1, v0, v2

    :goto_34
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_48

    const-wide/16 v6, 0x64

    :try_start_42
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_34

    :catch_46
    move-exception v6

    goto :goto_34

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_4b
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_29
.end method

.method public static offsetof(Ljava/lang/Class;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacpp/Pointer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/googlecode/javacpp/Loader;->memberOffsets:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static declared-synchronized putMemberOffset(Ljava/lang/Class;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacpp/Pointer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-class v2, Lcom/googlecode/javacpp/Loader;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/googlecode/javacpp/Loader;->memberOffsets:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_17

    sget-object v1, Lcom/googlecode/javacpp/Loader;->memberOffsets:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v2

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static putMemberOffset(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/googlecode/javacpp/Loader;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/googlecode/javacpp/Loader;->putMemberOffset(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method

.method public static sizeof(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacpp/Pointer;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/googlecode/javacpp/Loader;->memberOffsets:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "sizeof"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
