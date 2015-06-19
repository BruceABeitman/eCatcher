.class public final Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final sBootstrapSymbolTable:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;


# instance fields
.field protected _buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

.field protected final _canonicalize:Z

.field protected _dirty:Z

.field private final _hashSeed:I

.field protected _indexMask:I

.field protected final _intern:Z

.field protected _longestCollisionList:I

.field protected _parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

.field protected _size:I

.field protected _sizeThreshold:I

.field protected _symbols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_intern:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->initTables(I)V

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;ZZ[Ljava/lang/String;[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;III)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_intern:Z

    iput-object p4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iput-object p5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput p6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iput p7, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    array-length v0, p4

    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_thresholdSize(I)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    iput p8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    return-void
.end method

.method private static _thresholdSize(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x2

    sub-int v0, p0, v0

    return v0
.end method

.method private copyArrays()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    array-length v1, v0

    new-array v2, v1, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static createRoot()Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-result-object v0

    return-object v0
.end method

.method protected static createRoot(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->makeOrphan(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-result-object v0

    return-object v0
.end method

.method private initTables(I)V
    .registers 4

    const/4 v1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    shr-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_thresholdSize(I)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    return-void
.end method

.method private makeOrphan(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .registers 11

    const/4 v2, 0x1

    new-instance v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget v6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget v8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    move v3, v2

    move v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;ZZ[Ljava/lang/String;[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;III)V

    return-object v0
.end method

.method private mergeChild(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V
    .registers 4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->size()I

    move-result v0

    const/16 v1, 0x2ee0

    if-gt v0, v1, :cond_e

    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    const/16 v1, 0x3f

    if-le v0, v1, :cond_1c

    :cond_e
    monitor-enter p0

    const/16 v0, 0x40

    :try_start_11
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->initTables(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    :cond_18
    :goto_18
    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->size()I

    move-result v1

    if-le v0, v1, :cond_18

    monitor-enter p0

    :try_start_27
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_44

    goto :goto_18

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private rehash()V
    .registers 13

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    array-length v4, v0

    add-int v0, v4, v4

    const/high16 v1, 0x1

    if-le v0, v1, :cond_1b

    iput v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    :cond_1a
    return-void

    :cond_1b
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    shr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_thresholdSize(I)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    move v3, v2

    move v0, v2

    move v1, v2

    :goto_36
    if-ge v3, v4, :cond_6b

    aget-object v7, v5, v3

    if-eqz v7, :cond_50

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v8

    iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v9, v9, v8

    if-nez v9, :cond_53

    iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v7, v9, v8

    :cond_50
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_53
    shr-int/lit8 v8, v8, 0x1

    new-instance v9, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v10, v10, v8

    invoke-direct {v9, v7, v10}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    iget-object v7, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object v9, v7, v8

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_50

    :cond_6b
    shr-int/lit8 v4, v4, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_70
    if-ge v3, v4, :cond_b3

    aget-object v0, v6, v3

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    :goto_77
    if-eqz v1, :cond_ae

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v7

    iget-object v8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_96

    iget-object v8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v5, v8, v7

    :goto_91
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->getNext()Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    move-result-object v1

    goto :goto_77

    :cond_96
    shr-int/lit8 v7, v7, 0x1

    new-instance v8, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v9, v9, v7

    invoke-direct {v8, v5, v9}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object v8, v5, v7

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_91

    :cond_ae
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_70

    :cond_b3
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    if-eq v2, v0, :cond_1a

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Internal error on SymbolTable.rehash(): had "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " entries; now have "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final _hashToIndex(I)I
    .registers 4

    ushr-int/lit8 v0, p1, 0xf

    add-int/2addr v0, p1

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int/2addr v0, v1

    return v0
.end method

.method public final calcHash(Ljava/lang/String;)I
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    const/4 v0, 0x0

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_a
    if-ge v1, v3, :cond_18

    mul-int/lit8 v0, v0, 0x21

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_a

    :cond_18
    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method public final calcHash([CII)I
    .registers 8

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    const/4 v0, 0x0

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_6
    if-ge v1, p3, :cond_12

    mul-int/lit8 v0, v0, 0x21

    aget-char v2, p1, v1

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_6

    :cond_12
    if-nez v0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public final findSymbol([CIII)Ljava/lang/String;
    .registers 11

    const/16 v5, 0xff

    if-gtz p3, :cond_7

    const-string v1, ""

    :cond_6
    :goto_6
    return-object v1

    :cond_7
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    if-nez v0, :cond_11

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_6

    :cond_11
    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v2, v0, v1

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p3, :cond_34

    const/4 v0, 0x0

    :cond_22
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v0

    aget-char v4, p1, v4

    if-ne v3, v4, :cond_30

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_22

    :cond_30
    if-ne v0, p3, :cond_34

    move-object v1, v2

    goto :goto_6

    :cond_34
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    shr-int/lit8 v2, v1, 0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_44

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->find([CII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    move-object v1, v0

    goto :goto_6

    :cond_44
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    if-nez v0, :cond_6f

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->copyArrays()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    move v0, v1

    :goto_4f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_intern:Z

    if-eqz v2, :cond_5e

    sget-object v2, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5e
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_81

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v1, v2, v0

    goto :goto_6

    :cond_6f
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    if-lt v0, v2, :cond_a5

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->rehash()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash([CII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v0

    goto :goto_4f

    :cond_81
    shr-int/lit8 v0, v0, 0x1

    new-instance v2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, v3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object v2, v3, v0

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length()I

    move-result v0

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    if-le v0, v5, :cond_6

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->reportTooManyCollisions(I)V

    goto/16 :goto_6

    :cond_a5
    move v0, v1

    goto :goto_4f
.end method

.method public final hashSeed()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    return v0
.end method

.method public final makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget v6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget v7, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    iget v8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_15

    new-instance v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;ZZ[Ljava/lang/String;[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;III)V

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final maybeDirty()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    return v0
.end method

.method public final release()V
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    goto :goto_6
.end method

.method protected final reportTooManyCollisions(I)V
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Longest collision chain in symbol table (of size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") now exceeds maximum, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- suspect a DoS attack based on hash collisions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    return v0
.end method
