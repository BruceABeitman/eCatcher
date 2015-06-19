.class public Lcom/googlecode/javacpp/Loader$ClassProperties;
.super Ljava/util/HashMap;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassProperties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/LinkedList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field pathSeparator:Ljava/lang/String;

.field platformName:Ljava/lang/String;

.field platformRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 8

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "platform.name"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/googlecode/javacpp/Loader$ClassProperties;->platformName:Ljava/lang/String;

    const-string v4, "platform.root"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/googlecode/javacpp/Loader$ClassProperties;->platformRoot:Ljava/lang/String;

    const-string v4, "path.separator"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/googlecode/javacpp/Loader$ClassProperties;->pathSeparator:Ljava/lang/String;

    iget-object v4, p0, Lcom/googlecode/javacpp/Loader$ClassProperties;->platformRoot:Ljava/lang/String;

    if-eqz v4, :cond_27

    iget-object v4, p0, Lcom/googlecode/javacpp/Loader$ClassProperties;->platformRoot:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2b

    :cond_27
    const-string v4, "."

    iput-object v4, p0, Lcom/googlecode/javacpp/Loader$ClassProperties;->platformRoot:Ljava/lang/String;

    :cond_2b
    iget-object v4, p0, Lcom/googlecode/javacpp/Loader$ClassProperties;->platformRoot:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/googlecode/javacpp/Loader$ClassProperties;->platformRoot:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/googlecode/javacpp/Loader$ClassProperties;->platformRoot:Ljava/lang/String;

    :cond_4c
    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_54
    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_54

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_54

    const-string v4, "compiler.includepath"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9c

    const-string v4, "compiler.include"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9c

    const-string v4, "compiler.linkpath"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9c

    const-string v4, "compiler.link"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9c

    const-string v4, "compiler.framework"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    :cond_9c
    iget-object v4, p0, Lcom/googlecode/javacpp/Loader$ClassProperties;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_54

    :cond_a6
    invoke-virtual {p0, v2, v3}, Lcom/googlecode/javacpp/Loader$ClassProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_54

    :cond_aa
    return-void
.end method


# virtual methods
.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_7f

    const/4 v1, 0x0

    const-string v4, "compiler.path"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "compiler.sysroot"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "compiler.includepath"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "compiler.linkpath"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_23
    iget-object v1, p0, Lcom/googlecode/javacpp/Loader$ClassProperties;->platformRoot:Ljava/lang/String;

    :cond_25
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2d

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    if-eqz v1, :cond_7b

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_7b

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7b
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_7f
    return-void
.end method

.method public varargs addAll(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_9

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;Ljava/util/Collection;)V

    :cond_9
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/googlecode/javacpp/Loader$ClassProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v0
.end method

.method getHeaderFiles()Ljava/util/LinkedList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v8, "compiler.includepath"

    invoke-virtual {p0, v8}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v7

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    const-string v8, "generator.include"

    invoke-virtual {p0, v8}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    const-string v8, "generator.cinclude"

    invoke-virtual {p0, v8}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "<"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6c

    const-string v8, ">"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6c

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_4d
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_51

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_6c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_7b
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_a
    return-object p2

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p2, v1

    goto :goto_a
.end method

.method public load(Ljava/lang/Class;Z)V
    .registers 38

    invoke-static/range {p1 .. p1}, Lcom/googlecode/javacpp/Loader;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    :goto_4
    const-class v32, Lcom/googlecode/javacpp/annotation/Properties;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v32

    if-nez v32, :cond_23

    const-class v32, Lcom/googlecode/javacpp/annotation/Platform;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v32

    if-nez v32, :cond_23

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v32

    if-eqz v32, :cond_23

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_4

    :cond_23
    const-class v32, Lcom/googlecode/javacpp/annotation/Properties;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/googlecode/javacpp/annotation/Properties;

    if-nez v8, :cond_104

    const-class v32, Lcom/googlecode/javacpp/annotation/Platform;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v26

    check-cast v26, Lcom/googlecode/javacpp/annotation/Platform;

    if-nez v26, :cond_3c

    :goto_3b
    return-void

    :cond_3c
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Lcom/googlecode/javacpp/annotation/Platform;

    move-object/from16 v27, v0

    const/16 v32, 0x0

    aput-object v26, v27, v32

    :cond_48
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v10, v0, [Ljava/lang/String;

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v15, v0, [Ljava/lang/String;

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v7, v0, [Ljava/lang/String;

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v11, v0, [Ljava/lang/String;

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "jni"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v3, v27

    array-length v0, v3

    move/from16 v17, v0

    const/4 v13, 0x0

    move v14, v13

    :goto_ae
    move/from16 v0, v17

    if-ge v14, v0, :cond_218

    aget-object v25, v3, v14

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v32, 0x0

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->value()[Ljava/lang/String;

    move-result-object v33

    aput-object v33, v23, v32

    const/16 v32, 0x1

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->not()[Ljava/lang/String;

    move-result-object v33

    aput-object v33, v23, v32

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Z

    move-object/from16 v22, v0

    fill-array-data v22, :array_28c

    const/4 v12, 0x0

    :goto_d8
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v12, v0, :cond_14d

    aget-object v4, v23, v12

    array-length v0, v4

    move/from16 v18, v0

    const/4 v13, 0x0

    :goto_e7
    move/from16 v0, v18

    if-ge v13, v0, :cond_101

    aget-object v30, v4, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Loader$ClassProperties;->platformName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_14a

    const/16 v32, 0x1

    aput-boolean v32, v22, v12

    :cond_101
    add-int/lit8 v12, v12, 0x1

    goto :goto_d8

    :cond_104
    invoke-interface {v8}, Lcom/googlecode/javacpp/annotation/Properties;->inherit()[Ljava/lang/Class;

    move-result-object v9

    if-eqz p2, :cond_121

    if-eqz v9, :cond_121

    move-object v3, v9

    array-length v0, v3

    move/from16 v17, v0

    const/4 v13, 0x0

    :goto_111
    move/from16 v0, v17

    if-ge v13, v0, :cond_121

    aget-object v6, v3, v13

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->load(Ljava/lang/Class;Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_111

    :cond_121
    invoke-interface {v8}, Lcom/googlecode/javacpp/annotation/Properties;->target()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_142

    const-string v32, "parser.target"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v31, v33, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_142
    invoke-interface {v8}, Lcom/googlecode/javacpp/annotation/Properties;->value()[Lcom/googlecode/javacpp/annotation/Platform;

    move-result-object v27

    if-nez v27, :cond_48

    goto/16 :goto_3b

    :cond_14a
    add-int/lit8 v13, v13, 0x1

    goto :goto_e7

    :cond_14d
    const/16 v32, 0x0

    aget-object v32, v23, v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-eqz v32, :cond_15e

    const/16 v32, 0x0

    aget-boolean v32, v22, v32

    if-eqz v32, :cond_213

    :cond_15e
    const/16 v32, 0x1

    aget-object v32, v23, v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-eqz v32, :cond_16f

    const/16 v32, 0x1

    aget-boolean v32, v22, v32

    if-nez v32, :cond_213

    :cond_16f
    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->define()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_17e

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->define()[Ljava/lang/String;

    move-result-object v10

    :cond_17e
    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->include()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_18d

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->include()[Ljava/lang/String;

    move-result-object v15

    :cond_18d
    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->cinclude()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_19c

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->cinclude()[Ljava/lang/String;

    move-result-object v7

    :cond_19c
    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->includepath()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_1ab

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->includepath()[Ljava/lang/String;

    move-result-object v16

    :cond_1ab
    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->options()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_1ba

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->options()[Ljava/lang/String;

    move-result-object v24

    :cond_1ba
    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->linkpath()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_1c9

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->linkpath()[Ljava/lang/String;

    move-result-object v21

    :cond_1c9
    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->link()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_1d8

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->link()[Ljava/lang/String;

    move-result-object v20

    :cond_1d8
    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->framework()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_1e7

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->framework()[Ljava/lang/String;

    move-result-object v11

    :cond_1e7
    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->preloadpath()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_1f6

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->preloadpath()[Ljava/lang/String;

    move-result-object v29

    :cond_1f6
    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->preload()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_205

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->preload()[Ljava/lang/String;

    move-result-object v28

    :cond_205
    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->library()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_213

    invoke-interface/range {v25 .. v25}, Lcom/googlecode/javacpp/annotation/Platform;->library()Ljava/lang/String;

    move-result-object v19

    :cond_213
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto/16 :goto_ae

    :cond_218
    const-string v32, "generator.define"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v10}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v32, "generator.include"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v15}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v32, "generator.cinclude"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v32, "compiler.includepath"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v32, "compiler.options"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v32, "compiler.linkpath"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v32, "compiler.link"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v32, "compiler.framework"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v32, "loader.preloadpath"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v32, "loader.preload"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v32, "loader.library"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3b

    nop

    :array_28c
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_18
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_c
.end method
