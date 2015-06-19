.class public Lcom/googlecode/javacpp/Builder$ClassScanner;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassScanner"
.end annotation


# instance fields
.field private classes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private loader:Lcom/googlecode/javacpp/Builder$UserClassLoader;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/googlecode/javacpp/Builder$UserClassLoader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class;",
            ">;",
            "Lcom/googlecode/javacpp/Builder$UserClassLoader;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    iput-object p2, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->loader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    return-void
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_16
    const/4 v2, 0x0

    :try_start_17
    iget-object v3, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->loader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    invoke-static {p1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_17 .. :try_end_2a} :catch_4f

    goto :goto_3

    :catch_2b
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: Could not find class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :catch_4f
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: Could not load class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public addClassOrPackage(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addPackage(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_23
    const-string v0, ".*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addPackage(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_39
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addClass(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public addMatchingDir(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .registers 13

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_4d

    aget-object v1, v0, v3

    if-nez p1, :cond_33

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_14
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_49

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1, p3, p4}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addMatchingDir(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_14

    :cond_49
    invoke-virtual {p0, v5, p3, p4}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addMatchingFile(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_30

    :cond_4d
    return-void
.end method

.method public addMatchingFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    const/4 v3, 0x0

    const/16 v2, 0x2f

    if-eqz p1, :cond_32

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    if-eqz p2, :cond_29

    if-eqz p3, :cond_17

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_17
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v3, p2, v3, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_29
    const/16 v0, 0x2e

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addClass(Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public addPackage(Ljava/lang/String;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v10, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->loader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    invoke-virtual {v10}, Lcom/googlecode/javacpp/Builder$UserClassLoader;->getPaths()[Ljava/lang/String;

    move-result-object v8

    if-nez p1, :cond_28

    const/4 v7, 0x0

    :goto_9
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v9

    move-object v0, v8

    array-length v5, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v5, :cond_67

    aget-object v6, v0, v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_44

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v2, v7, p2}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addMatchingDir(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_28
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x2e

    const/16 v12, 0x2f

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_44
    new-instance v4, Ljava/util/jar/JarInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    :goto_52
    if-eqz v1, :cond_63

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v7, p2}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addMatchingFile(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->closeEntry()V

    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    goto :goto_52

    :cond_63
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->close()V

    goto :goto_25

    :cond_67
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-nez v10, :cond_7c

    if-nez p1, :cond_7c

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Warning: No classes found in the unnamed package"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/googlecode/javacpp/Builder;->printHelp()V

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-ne v9, v10, :cond_7b

    if-eqz p1, :cond_7b

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Warning: No classes found in package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7b
.end method

.method public getClassLoader()Lcom/googlecode/javacpp/Builder$UserClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->loader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    return-object v0
.end method

.method public getClasses()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    return-object v0
.end method
