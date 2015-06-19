.class public Lorg/apache/commons/io/comparator/SizeFileComparator;
.super Ljava/lang/Object;
.source "SizeFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_REVERSE:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;


# instance fields
.field private final sumDirectoryContents:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_REVERSE:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 16

    const-wide/16 v11, 0x0

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Ljava/io/File;

    move-object v2, v0

    const-wide/16 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_42

    iget-boolean v9, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v9, :cond_40

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_40

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v9

    move-wide v5, v9

    :goto_21
    const-wide/16 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_49

    iget-boolean v9, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v9, :cond_47

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v9

    move-wide v7, v9

    :goto_38
    sub-long v3, v5, v7

    cmp-long v9, v3, v11

    if-gez v9, :cond_4e

    const/4 v9, -0x1

    :goto_3f
    return v9

    :cond_40
    move-wide v5, v11

    goto :goto_21

    :cond_42
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_21

    :cond_47
    move-wide v7, v11

    goto :goto_38

    :cond_49
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_38

    :cond_4e
    cmp-long v9, v3, v11

    if-lez v9, :cond_54

    const/4 v9, 0x1

    goto :goto_3f

    :cond_54
    const/4 v9, 0x0

    goto :goto_3f
.end method
