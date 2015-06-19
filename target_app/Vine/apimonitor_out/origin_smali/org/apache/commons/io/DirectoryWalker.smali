.class public abstract Lorg/apache/commons/io/DirectoryWalker;
.super Ljava/lang/Object;
.source "DirectoryWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/DirectoryWalker$CancelException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final depthLimit:I

.field private final filter:Ljava/io/FileFilter;


# direct methods
.method protected constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/DirectoryWalker;-><init>(Ljava/io/FileFilter;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/FileFilter;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    iput p2, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    if-nez p2, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    :goto_a
    iput p3, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    return-void

    :cond_d
    if-eqz p1, :cond_29

    :goto_f
    if-eqz p2, :cond_2c

    :goto_11
    invoke-static {p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->makeDirectoryOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->makeFileOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    goto :goto_a

    :cond_29
    sget-object p1, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_f

    :cond_2c
    sget-object p2, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_11
.end method

.method private walk(Ljava/io/File;ILjava/util/Collection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V

    add-int/lit8 v1, p2, 0x1

    iget v6, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    if-ltz v6, :cond_16

    iget v6, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    if-gt v1, v6, :cond_2a

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    iget-object v6, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    if-nez v6, :cond_31

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    :goto_21
    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/commons/io/DirectoryWalker;->filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_38

    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleRestricted(Ljava/io/File;ILjava/util/Collection;)V

    :cond_2a
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V

    :cond_2d
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    return-void

    :cond_31
    iget-object v6, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    invoke-virtual {p1, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    goto :goto_21

    :cond_38
    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v5, :cond_2a

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-direct {p0, v2, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    :goto_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_4b
    invoke-virtual {p0, v2, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    invoke-virtual {p0, v2, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleFile(Ljava/io/File;ILjava/util/Collection;)V

    invoke-virtual {p0, v2, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    goto :goto_48
.end method


# virtual methods
.method protected final checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lorg/apache/commons/io/DirectoryWalker$CancelException;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker$CancelException;-><init>(Ljava/io/File;I)V

    throw v0

    :cond_c
    return-void
.end method

.method protected filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p3
.end method

.method protected handleCancelled(Ljava/io/File;Ljava/util/Collection;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lorg/apache/commons/io/DirectoryWalker$CancelException;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    throw p3
.end method

.method protected handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected handleEnd(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected handleFile(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected handleRestricted(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected handleStart(Ljava/io/File;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected final walk(Ljava/io/File;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Start Directory is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker;->handleStart(Ljava/io/File;Ljava/util/Collection;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lorg/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/io/DirectoryWalker;->handleEnd(Ljava/util/Collection;)V
    :try_end_14
    .catch Lorg/apache/commons/io/DirectoryWalker$CancelException; {:try_start_a .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/DirectoryWalker;->handleCancelled(Ljava/io/File;Ljava/util/Collection;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V

    goto :goto_14
.end method
