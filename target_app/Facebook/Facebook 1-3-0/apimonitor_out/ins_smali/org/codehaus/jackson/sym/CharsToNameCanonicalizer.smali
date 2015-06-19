.class public final Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
.super Ljava/lang/Object;
.field protected static final DEFAULT_TABLE_SIZE:I = 0x40
.field protected static final INTERN_STRINGS:Z = true
.field static final MAX_SYMBOL_TABLE_SIZE:I = 0x1770
.field static final sBootstrapSymbolTable:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
.field protected _buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
.field protected _dirty:Z
.field protected _indexMask:I
.field protected _parent:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
.field protected _size:I
.field protected _sizeThreshold:I
.field protected _symbols:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
const/16 v1, 0x40
invoke-direct {v0, v1}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;-><init>(I)V
sput-object v0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
return-void
.end method
.method public constructor <init>(I)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z
if-ge p1, v0, :cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not use negative/zero initial size: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
const/4 v0, 0x4
:goto_22
if-ge v0, p1, :cond_26
add-int/2addr v0, v0
goto :goto_22
:cond_26
invoke-direct {p0, v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->initTables(I)V
return-void
.end method
.method private constructor <init>(Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;[Ljava/lang/String;[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;I)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
iput-object p2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
iput-object p3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iput p4, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
array-length v0, p2
shr-int/lit8 v1, v0, 0x2
sub-int v1, v0, v1
iput v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I
const/4 v1, 0x1
sub-int/2addr v0, v1
iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z
return-void
.end method
.method public static calcHash(Ljava/lang/String;)I
.registers 6
const/4 v0, 0x0
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
move v4, v1
move v1, v0
move v0, v4
:goto_d
if-ge v0, v2, :cond_19
mul-int/lit8 v1, v1, 0x1f
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
add-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_19
return v1
.end method
.method public static calcHash([CII)I
.registers 7
const/4 v0, 0x0
aget-char v0, p0, v0
const/4 v1, 0x1
move v3, v1
move v1, v0
move v0, v3
:goto_7
if-ge v0, p2, :cond_11
mul-int/lit8 v1, v1, 0x1f
aget-char v2, p0, v0
add-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_11
return v1
.end method
.method private copyArrays()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
array-length v1, v0
new-array v2, v1, [Ljava/lang/String;
iput-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
iget-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
array-length v1, v0
new-array v2, v1, [Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iput-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iget-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method public static createRoot()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
.registers 1
sget-object v0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
invoke-direct {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeOrphan()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
move-result-object v0
return-object v0
.end method
.method private initTables(I)V
.registers 3
new-array v0, p1, [Ljava/lang/String;
iput-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
shr-int/lit8 v0, p1, 0x1
new-array v0, v0, [Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iput-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
const/4 v0, 0x1
sub-int v0, p1, v0
iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I
const/4 v0, 0x0
iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
shr-int/lit8 v0, p1, 0x2
sub-int v0, p1, v0
iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I
return-void
.end method
.method private makeOrphan()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
.registers 6
new-instance v0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
const/4 v1, 0x0
iget-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
iget-object v3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iget v4, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
invoke-direct {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;-><init>(Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;[Ljava/lang/String;[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;I)V
return-object v0
.end method
.method private declared-synchronized mergeChild(Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p1}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->size()I
move-result v0
const/16 v1, 0x1770
if-le v0, v1, :cond_13
const/16 v0, 0x40
invoke-direct {p0, v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->initTables(I)V
:goto_e
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z
:cond_11
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_32
monitor-exit p0
return-void
:cond_13
:try_start_13
invoke-virtual {p1}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->size()I
move-result v0
invoke-virtual {p0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->size()I
move-result v1
if-le v0, v1, :cond_11
iget-object v0, p1, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
iput-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
iget-object v0, p1, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iput-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iget v0, p1, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
iget v0, p1, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I
iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I
iget v0, p1, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I
iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I
:try_end_31
.catchall {:try_start_13 .. :try_end_31} :catchall_32
goto :goto_e
:catchall_32
move-exception v0
monitor-exit p0
throw v0
.end method
.method private rehash()V
.registers 13
const/4 v10, 0x0
iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
array-length v0, v0
add-int v1, v0, v0
iget-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
iget-object v3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
new-array v4, v1, [Ljava/lang/String;
iput-object v4, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
shr-int/lit8 v4, v1, 0x1
new-array v4, v4, [Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iput-object v4, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
const/4 v4, 0x1
sub-int/2addr v1, v4
iput v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I
iget v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I
iget v4, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I
add-int/2addr v1, v4
iput v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I
move v1, v10
move v4, v10
:goto_21
if-ge v1, v0, :cond_4d
aget-object v5, v2, v1
if-eqz v5, :cond_3a
add-int/lit8 v4, v4, 0x1
invoke-static {v5}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I
move-result v6
iget v7, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I
and-int/2addr v6, v7
iget-object v7, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
aget-object v7, v7, v6
if-nez v7, :cond_3d
iget-object v7, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
aput-object v5, v7, v6
:cond_3a
:goto_3a
add-int/lit8 v1, v1, 0x1
goto :goto_21
:cond_3d
shr-int/lit8 v6, v6, 0x1
iget-object v7, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
new-instance v8, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iget-object v9, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
aget-object v9, v9, v6
invoke-direct {v8, v5, v9}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V
aput-object v8, v7, v6
goto :goto_3a
:cond_4d
shr-int/lit8 v0, v0, 0x1
move v1, v10
move v2, v4
:goto_51
if-ge v1, v0, :cond_8a
aget-object v4, v3, v1
move-object v11, v4
move v4, v2
move-object v2, v11
:goto_58
if-eqz v2, :cond_86
add-int/lit8 v4, v4, 0x1
invoke-virtual {v2}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getSymbol()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I
move-result v6
iget v7, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I
and-int/2addr v6, v7
iget-object v7, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
aget-object v7, v7, v6
if-nez v7, :cond_76
iget-object v7, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
aput-object v5, v7, v6
:goto_71
invoke-virtual {v2}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getNext()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
move-result-object v2
goto :goto_58
:cond_76
shr-int/lit8 v6, v6, 0x1
iget-object v7, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
new-instance v8, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iget-object v9, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
aget-object v9, v9, v6
invoke-direct {v8, v5, v9}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V
aput-object v8, v7, v6
goto :goto_71
:cond_86
add-int/lit8 v1, v1, 0x1
move v2, v4
goto :goto_51
:cond_8a
iget v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
if-eq v2, v0, :cond_b9
new-instance v0, Ljava/lang/Error;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Internal error on SymbolTable.rehash(): had "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
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
:cond_b9
return-void
.end method
.method public findSymbol([CIII)Ljava/lang/String;
.registers 11
const/4 v5, 0x1
if-ge p3, v5, :cond_6
const-string v0, ""
:goto_5
return-object v0
:cond_6
iget v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I
and-int/2addr v0, p4
iget-object v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
aget-object v1, v1, v0
if-eqz v1, :cond_39
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-ne v2, p3, :cond_29
const/4 v2, 0x0
:cond_16
invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
move-result v3
add-int v4, p2, v2
aget-char v4, p1, v4
if-eq v3, v4, :cond_24
:goto_20
if-ne v2, p3, :cond_29
move-object v0, v1
goto :goto_5
:cond_24
add-int/lit8 v2, v2, 0x1
if-lt v2, p3, :cond_16
goto :goto_20
:cond_29
iget-object v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
shr-int/lit8 v2, v0, 0x1
aget-object v1, v1, v2
if-eqz v1, :cond_39
invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->find([CII)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_39
move-object v0, v1
goto :goto_5
:cond_39
iget-boolean v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z
if-nez v1, :cond_5f
invoke-direct {p0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->copyArrays()V
iput-boolean v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z
:goto_42
:cond_42
iget v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
new-instance v1, Ljava/lang/String;
invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V
sget-object v2, Lorg/codehaus/jackson/util/InternCache;->instance:Lorg/codehaus/jackson/util/InternCache;
invoke-virtual {v2, v1}, Lorg/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
aget-object v2, v2, v0
if-nez v2, :cond_70
iget-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
aput-object v1, v2, v0
:goto_5d
move-object v0, v1
goto :goto_5
:cond_5f
iget v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
iget v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I
if-lt v1, v2, :cond_42
invoke-direct {p0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->rehash()V
invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->calcHash([CII)I
move-result v0
iget v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I
and-int/2addr v0, v1
goto :goto_42
:cond_70
shr-int/lit8 v0, v0, 0x1
iget-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
new-instance v3, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iget-object v4, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
aget-object v4, v4, v0
invoke-direct {v3, v1, v4}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V
aput-object v3, v2, v0
goto :goto_5d
.end method
.method public declared-synchronized makeChild()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
.registers 5
monitor-enter p0
:try_start_1
new-instance v0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
iget-object v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;
iget-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
iget v3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
invoke-direct {v0, p0, v1, v2, v3}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;-><init>(Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;[Ljava/lang/String;[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;I)V
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_e
monitor-exit p0
return-object v0
:catchall_e
move-exception v0
monitor-exit p0
throw v0
.end method
.method public maybeDirty()Z
.registers 2
iget-boolean v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z
return v0
.end method
.method public release()V
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->maybeDirty()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
if-eqz v0, :cond_6
iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
invoke-direct {v0, p0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->mergeChild(Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z
goto :goto_6
.end method
.method public size()I
.registers 2
iget v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I
return v0
.end method