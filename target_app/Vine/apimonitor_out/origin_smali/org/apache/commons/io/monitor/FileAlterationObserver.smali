.class public Lorg/apache/commons/io/monitor/FileAlterationObserver;
.super Ljava/lang/Object;
.source "FileAlterationObserver.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final fileFilter:Ljava/io/FileFilter;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/io/monitor/FileAlterationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final rootEntry:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Ljava/io/FileFilter;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;)V
    .registers 4

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/io/IOCase;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .registers 5

    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Root entry is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Root directory is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    iput-object p2, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    if-eqz p3, :cond_30

    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_30
    sget-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    :goto_34
    return-void

    :cond_35
    sget-object v0, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    goto :goto_34

    :cond_42
    sget-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    goto :goto_34
.end method

.method private checkAndNotify(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V
    .registers 13

    const/4 v1, 0x0

    array-length v6, p3

    if-lez v6, :cond_2f

    array-length v6, p3

    new-array v2, v6, [Lorg/apache/commons/io/monitor/FileEntry;

    :goto_7
    move-object v0, p2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v5, :cond_69

    aget-object v3, v0, v4

    :goto_e
    array-length v6, p3

    if-ge v1, v6, :cond_32

    iget-object v6, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v7

    aget-object v8, p3, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_32

    aget-object v6, p3, v1

    invoke-direct {p0, p1, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v6

    aput-object v6, v2, v1

    aget-object v6, v2, v1

    invoke-direct {p0, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->doCreate(Lorg/apache/commons/io/monitor/FileEntry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2f
    sget-object v2, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_7

    :cond_32
    array-length v6, p3

    if-ge v1, v6, :cond_5c

    iget-object v6, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v7

    aget-object v8, p3, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_5c

    aget-object v6, p3, v1

    invoke-direct {p0, v3, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->doMatch(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v6

    aget-object v7, p3, v1

    invoke-direct {p0, v7}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_5c
    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v6

    sget-object v7, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-direct {p0, v3, v6, v7}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    invoke-direct {p0, v3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->doDelete(Lorg/apache/commons/io/monitor/FileEntry;)V

    goto :goto_59

    :cond_69
    :goto_69
    array-length v6, p3

    if-ge v1, v6, :cond_7c

    aget-object v6, p3, v1

    invoke-direct {p0, p1, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v6

    aput-object v6, v2, v1

    aget-object v6, v2, v1

    invoke-direct {p0, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->doCreate(Lorg/apache/commons/io/monitor/FileEntry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_7c
    invoke-virtual {p1, v2}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    return-void
.end method

.method private createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .registers 8

    invoke-virtual {p1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    invoke-direct {p0, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v4, v2

    if-lez v4, :cond_20

    array-length v4, v2

    new-array v0, v4, [Lorg/apache/commons/io/monitor/FileEntry;

    :goto_11
    const/4 v3, 0x0

    :goto_12
    array-length v4, v2

    if-ge v3, v4, :cond_23

    aget-object v4, v2, v3

    invoke-direct {p0, v1, v4}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_20
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_11

    :cond_23
    invoke-virtual {v1, v0}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    return-object v1
.end method

.method private doCreate(Lorg/apache/commons/io/monitor/FileEntry;)V
    .registers 9

    iget-object v6, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/io/monitor/FileAlterationListener;

    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onDirectoryCreate(Ljava/io/File;)V

    goto :goto_6

    :cond_20
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onFileCreate(Ljava/io/File;)V

    goto :goto_6

    :cond_28
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v2

    move-object v1, v2

    array-length v4, v1

    const/4 v3, 0x0

    :goto_2f
    if-ge v3, v4, :cond_39

    aget-object v0, v1, v3

    invoke-direct {p0, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->doCreate(Lorg/apache/commons/io/monitor/FileEntry;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_39
    return-void
.end method

.method private doDelete(Lorg/apache/commons/io/monitor/FileEntry;)V
    .registers 5

    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onDirectoryDelete(Ljava/io/File;)V

    goto :goto_6

    :cond_20
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onFileDelete(Ljava/io/File;)V

    goto :goto_6

    :cond_28
    return-void
.end method

.method private doMatch(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1, p2}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onDirectoryChange(Ljava/io/File;)V

    goto :goto_c

    :cond_22
    invoke-interface {v1, p2}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onFileChange(Ljava/io/File;)V

    goto :goto_c

    :cond_26
    return-void
.end method

.method private listFiles(Ljava/io/File;)[Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    if-nez v1, :cond_21

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    :cond_f
    :goto_f
    if-nez v0, :cond_13

    sget-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    :cond_13
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    if-eqz v1, :cond_20

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_20

    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_20
    return-object v0

    :cond_21
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_f
.end method


# virtual methods
.method public addListener(Lorg/apache/commons/io/monitor/FileAlterationListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public checkAndNotify()V
    .registers 7

    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    invoke-interface {v1, p0}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onStart(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    goto :goto_6

    :cond_16
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    iget-object v4, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v4

    invoke-direct {p0, v2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    :cond_31
    :goto_31
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    invoke-interface {v1, p0}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onStop(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    goto :goto_37

    :cond_47
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->isExists()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    iget-object v4, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    goto :goto_31

    :cond_5d
    return-void
.end method

.method public destroy()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFileFilter()Ljava/io/FileFilter;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    return-object v0
.end method

.method public getListeners()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/io/monitor/FileAlterationListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public initialize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    iget-object v4, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    if-lez v3, :cond_2c

    array-length v3, v1

    new-array v0, v3, [Lorg/apache/commons/io/monitor/FileEntry;

    :goto_1b
    const/4 v2, 0x0

    :goto_1c
    array-length v3, v1

    if-ge v2, v3, :cond_2f

    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    aget-object v4, v1, v2

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2c
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_1b

    :cond_2f
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v3, v0}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    return-void
.end method

.method public removeListener(Lorg/apache/commons/io/monitor/FileAlterationListener;)V
    .registers 3

    if-eqz p1, :cond_a

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[file=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    if-eqz v1, :cond_37

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    const-string v1, ", listeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
