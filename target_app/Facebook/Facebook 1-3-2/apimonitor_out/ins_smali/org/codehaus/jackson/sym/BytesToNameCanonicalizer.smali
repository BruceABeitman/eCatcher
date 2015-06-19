.class public final Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.super Ljava/lang/Object;
.field protected static final DEFAULT_TABLE_SIZE:I = 0x40
.field static final INITIAL_COLLISION_LEN:I = 0x20
.field static final LAST_VALID_BUCKET:I = 0xfe
.field static final MAX_TABLE_SIZE:I = 0x1770
.field static final MIN_HASH_SIZE:I = 0x10
.field private _collCount:I
.field private _collEnd:I
.field private _collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
.field private _collListShared:Z
.field private _count:I
.field private _mainHash:[I
.field private _mainHashMask:I
.field private _mainHashShared:Z
.field private _mainNames:[Lorg/codehaus/jackson/sym/Name;
.field private _mainNamesShared:Z
.field private transient _needRehash:Z
.field final _parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.method private constructor <init>(I)V
.registers 4
const/16 v1, 0x10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
if-ge p1, v1, :cond_f
move v0, v1
:goto_b
:cond_b
invoke-direct {p0, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->initTables(I)V
return-void
:cond_f
const/4 v0, 0x1
sub-int v0, p1, v0
and-int/2addr v0, p1
if-eqz v0, :cond_1a
move v0, v1
:goto_16
if-ge v0, p1, :cond_b
add-int/2addr v0, v0
goto :goto_16
:cond_1a
move v0, p1
goto :goto_b
.end method
.method private constructor <init>(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V
.registers 4
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I
iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I
iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z
iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z
return-void
.end method
.method private _addSymbol(ILorg/codehaus/jackson/sym/Name;)V
.registers 9
const/4 v5, 0x1
iget-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
if-eqz v0, :cond_8
invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareMain()V
:cond_8
iget-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z
if-eqz v0, :cond_f
invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->rehash()V
:cond_f
iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int/2addr v0, p1
iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
aget-object v1, v1, v0
if-nez v1, :cond_42
iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
shl-int/lit8 v2, p1, 0x8
aput v2, v1, v0
iget-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
if-eqz v1, :cond_2b
invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareNames()V
:cond_2b
iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
aput-object p2, v1, v0
:goto_2f
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
array-length v0, v0
iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
shr-int/lit8 v2, v0, 0x1
if-le v1, v2, :cond_41
shr-int/lit8 v1, v0, 0x2
iget v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
sub-int/2addr v0, v1
if-le v2, v0, :cond_8d
iput-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z
:goto_41
:cond_41
return-void
:cond_42
iget-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z
if-eqz v1, :cond_49
invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareCollision()V
:cond_49
iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I
iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
aget v1, v1, v0
and-int/lit16 v2, v1, 0xff
if-nez v2, :cond_8a
iget v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
const/16 v3, 0xfe
if-gt v2, v3, :cond_85
iget v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
iget v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
array-length v3, v3
if-lt v2, v3, :cond_6d
invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->expandCollision()V
:goto_6d
:cond_6d
iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
and-int/lit16 v1, v1, -0x100
add-int/lit8 v4, v2, 0x1
or-int/2addr v1, v4
aput v1, v3, v0
move v0, v2
:goto_77
iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
new-instance v2, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
aget-object v3, v3, v0
invoke-direct {v2, p2, v3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V
aput-object v2, v1, v0
goto :goto_2f
:cond_85
invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findBestBucket()I
move-result v2
goto :goto_6d
:cond_8a
add-int/lit8 v0, v2, -0x1
goto :goto_77
:cond_8d
iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I
if-lt v0, v1, :cond_41
iput-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z
goto :goto_41
.end method
.method public static final calcHash(I)I
.registers 3
ushr-int/lit8 v0, p0, 0x10
xor-int/2addr v0, p0
ushr-int/lit8 v1, v0, 0x8
xor-int/2addr v0, v1
return v0
.end method
.method public static final calcHash(II)I
.registers 4
mul-int/lit8 v0, p0, 0x1f
add-int/2addr v0, p1
ushr-int/lit8 v1, v0, 0x10
xor-int/2addr v0, v1
ushr-int/lit8 v1, v0, 0x8
xor-int/2addr v0, v1
return v0
.end method
.method public static final calcHash([II)I
.registers 6
const/4 v0, 0x0
aget v0, p0, v0
const/4 v1, 0x1
move v3, v1
move v1, v0
move v0, v3
:goto_7
if-ge v0, p1, :cond_11
mul-int/lit8 v1, v1, 0x1f
aget v2, p0, v0
add-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_11
ushr-int/lit8 v0, v1, 0x10
xor-int/2addr v0, v1
ushr-int/lit8 v1, v0, 0x8
xor-int/2addr v0, v1
return v0
.end method
.method public static constructName(ILjava/lang/String;II)Lorg/codehaus/jackson/sym/Name;
.registers 6
sget-object v0, Lorg/codehaus/jackson/util/InternCache;->instance:Lorg/codehaus/jackson/util/InternCache;
invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez p3, :cond_f
new-instance v1, Lorg/codehaus/jackson/sym/Name1;
invoke-direct {v1, v0, p0, p2}, Lorg/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V
move-object v0, v1
:goto_e
return-object v0
:cond_f
new-instance v1, Lorg/codehaus/jackson/sym/Name2;
invoke-direct {v1, v0, p0, p2, p3}, Lorg/codehaus/jackson/sym/Name2;-><init>(Ljava/lang/String;III)V
move-object v0, v1
goto :goto_e
.end method
.method public static constructName(ILjava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;
.registers 10
const/4 v4, 0x1
const/4 v2, 0x0
sget-object v0, Lorg/codehaus/jackson/util/InternCache;->instance:Lorg/codehaus/jackson/util/InternCache;
invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 v0, 0x4
if-ge p3, v0, :cond_e
packed-switch p3, :pswitch_data_40
:cond_e
new-array v0, p3, [I
:goto_10
if-ge v2, p3, :cond_39
aget v3, p2, v2
aput v3, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_10
:pswitch_19
new-instance v0, Lorg/codehaus/jackson/sym/Name1;
aget v2, p2, v2
invoke-direct {v0, v1, p0, v2}, Lorg/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V
:goto_20
return-object v0
:pswitch_21
new-instance v0, Lorg/codehaus/jackson/sym/Name2;
aget v2, p2, v2
aget v3, p2, v4
invoke-direct {v0, v1, p0, v2, v3}, Lorg/codehaus/jackson/sym/Name2;-><init>(Ljava/lang/String;III)V
goto :goto_20
:pswitch_2b
new-instance v0, Lorg/codehaus/jackson/sym/Name3;
aget v3, p2, v2
aget v4, p2, v4
const/4 v2, 0x2
aget v5, p2, v2
move v2, p0
invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/sym/Name3;-><init>(Ljava/lang/String;IIII)V
goto :goto_20
:cond_39
new-instance v2, Lorg/codehaus/jackson/sym/NameN;
invoke-direct {v2, v1, p0, v0, p3}, Lorg/codehaus/jackson/sym/NameN;-><init>(Ljava/lang/String;I[II)V
move-object v0, v2
goto :goto_20
:pswitch_data_40
.packed-switch 0x1
:pswitch_19
:pswitch_21
:pswitch_2b
.end packed-switch
.end method
.method public static createRoot()Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.registers 2
new-instance v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
const/16 v1, 0x40
invoke-direct {v0, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(I)V
return-object v0
.end method
.method private expandCollision()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
array-length v1, v0
add-int v2, v1, v1
new-array v2, v2, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method private findBestBucket()I
.registers 8
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
const v1, 0x7fffffff
const/4 v2, -0x1
const/4 v3, 0x0
iget v4, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
move v6, v3
move v3, v1
move v1, v6
:goto_c
if-ge v1, v4, :cond_20
aget-object v5, v0, v1
invoke-virtual {v5}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->length()I
move-result v5
if-ge v5, v3, :cond_1d
const/4 v2, 0x1
if-ne v5, v2, :cond_1b
move v0, v1
:goto_1a
return v0
:cond_1b
move v2, v1
move v3, v5
:cond_1d
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_20
move v0, v2
goto :goto_1a
.end method
.method public static getEmptyName()Lorg/codehaus/jackson/sym/Name;
.registers 1
invoke-static {}, Lorg/codehaus/jackson/sym/Name1;->getEmptyName()Lorg/codehaus/jackson/sym/Name1;
move-result-object v0
return-object v0
.end method
.method private initTables(I)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
new-array v0, p1, [I
iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
new-array v0, p1, [Lorg/codehaus/jackson/sym/Name;
iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
sub-int v0, p1, v2
iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
iput-boolean v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z
return-void
.end method
.method private markAsShared()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z
return-void
.end method
.method private declared-synchronized mergeChild(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V
.registers 4
monitor-enter p0
:try_start_1
iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
:try_end_5
.catchall {:try_start_1 .. :try_end_5} :catchall_17
if-gt v0, v1, :cond_9
:goto_7
monitor-exit p0
return-void
:try_start_9
:cond_9
invoke-virtual {p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->size()I
move-result v0
const/16 v1, 0x1770
if-le v0, v1, :cond_1a
const/16 v0, 0x40
invoke-direct {p0, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->initTables(I)V
:try_end_16
.catchall {:try_start_9 .. :try_end_16} :catchall_17
goto :goto_7
:catchall_17
move-exception v0
monitor-exit p0
throw v0
:try_start_1a
:cond_1a
iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I
iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I
iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
:try_end_3c
.catchall {:try_start_1a .. :try_end_3c} :catchall_17
goto :goto_7
.end method
.method private rehash()V
.registers 13
const/4 v8, 0x0
iput-boolean v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z
iput-boolean v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
array-length v0, v0
add-int v1, v0, v0
new-array v1, v1, [I
iput-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
add-int v1, v0, v0
const/4 v2, 0x1
sub-int/2addr v1, v2
iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
add-int v2, v0, v0
new-array v2, v2, [Lorg/codehaus/jackson/sym/Name;
iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
move v2, v8
move v3, v8
:goto_1e
if-ge v2, v0, :cond_3a
aget-object v4, v1, v2
if-eqz v4, :cond_37
add-int/lit8 v3, v3, 0x1
invoke-virtual {v4}, Lorg/codehaus/jackson/sym/Name;->hashCode()I
move-result v5
iget v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int/2addr v6, v5
iget-object v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
aput-object v4, v7, v6
iget-object v4, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
shl-int/lit8 v5, v5, 0x8
aput v5, v4, v6
:cond_37
add-int/lit8 v2, v2, 0x1
goto :goto_1e
:cond_3a
iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
if-nez v0, :cond_3f
:cond_3e
return-void
:cond_3f
iput v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I
iput v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
iput-boolean v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z
iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
array-length v2, v1
new-array v2, v2, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
move v2, v8
:goto_4d
if-ge v2, v0, :cond_bb
aget-object v4, v1, v2
move-object v11, v4
move v4, v3
move-object v3, v11
:goto_54
if-eqz v3, :cond_b7
add-int/lit8 v4, v4, 0x1
iget-object v5, v3, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;
invoke-virtual {v5}, Lorg/codehaus/jackson/sym/Name;->hashCode()I
move-result v6
iget v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int/2addr v7, v6
iget-object v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
aget v8, v8, v7
iget-object v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
aget-object v9, v9, v7
if-nez v9, :cond_78
iget-object v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
shl-int/lit8 v6, v6, 0x8
aput v6, v8, v7
iget-object v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
aput-object v5, v6, v7
:goto_75
iget-object v3, v3, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
goto :goto_54
:cond_78
iget v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I
add-int/lit8 v6, v6, 0x1
iput v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I
and-int/lit16 v6, v8, 0xff
if-nez v6, :cond_b4
iget v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
const/16 v9, 0xfe
if-gt v6, v9, :cond_af
iget v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
iget v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
iget-object v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
array-length v9, v9
if-lt v6, v9, :cond_98
invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->expandCollision()V
:cond_98
:goto_98
iget-object v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
and-int/lit16 v8, v8, -0x100
add-int/lit8 v10, v6, 0x1
or-int/2addr v8, v10
aput v8, v9, v7
:goto_a1
iget-object v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
new-instance v8, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iget-object v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
aget-object v9, v9, v6
invoke-direct {v8, v5, v9}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V
aput-object v8, v7, v6
goto :goto_75
:cond_af
invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findBestBucket()I
move-result v6
goto :goto_98
:cond_b4
add-int/lit8 v6, v6, -0x1
goto :goto_a1
:cond_b7
add-int/lit8 v2, v2, 0x1
move v3, v4
goto :goto_4d
:cond_bb
iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
if-eq v3, v0, :cond_3e
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Internal error: count after rehash "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; should be "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private unshareCollision()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
if-nez v0, :cond_e
const/16 v0, 0x20
new-array v0, v0, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
:goto_b
iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z
return-void
:cond_e
array-length v1, v0
new-array v2, v1, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_b
.end method
.method private unshareMain()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
array-length v1, v1
new-array v2, v1, [I
iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
return-void
.end method
.method private unshareNames()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
array-length v1, v0
new-array v2, v1, [Lorg/codehaus/jackson/sym/Name;
iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
return-void
.end method
.method public addName(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;
.registers 6
invoke-static {p2, p3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash([II)I
move-result v0
invoke-static {v0, p1, p2, p3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;
move-result-object v1
invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_addSymbol(ILorg/codehaus/jackson/sym/Name;)V
return-object v1
.end method
.method public findName(I)Lorg/codehaus/jackson/sym/Name;
.registers 7
const/4 v4, 0x0
invoke-static {p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(I)I
move-result v0
iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int/2addr v1, v0
iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
aget v2, v2, v1
shr-int/lit8 v3, v2, 0x8
xor-int/2addr v3, v0
shl-int/lit8 v3, v3, 0x8
if-nez v3, :cond_23
iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
aget-object v1, v3, v1
if-nez v1, :cond_1b
move-object v0, v4
:goto_1a
return-object v0
:cond_1b
invoke-virtual {v1, p1}, Lorg/codehaus/jackson/sym/Name;->equals(I)Z
move-result v3
if-eqz v3, :cond_27
move-object v0, v1
goto :goto_1a
:cond_23
if-nez v2, :cond_27
move-object v0, v4
goto :goto_1a
:cond_27
and-int/lit16 v1, v2, 0xff
if-lez v1, :cond_39
add-int/lit8 v1, v1, -0x1
iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
aget-object v1, v2, v1
if-eqz v1, :cond_39
const/4 v2, 0x0
invoke-virtual {v1, v0, p1, v2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1a
:cond_39
move-object v0, v4
goto :goto_1a
.end method
.method public findName(II)Lorg/codehaus/jackson/sym/Name;
.registers 8
const/4 v4, 0x0
invoke-static {p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(II)I
move-result v0
iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int/2addr v1, v0
iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
aget v2, v2, v1
shr-int/lit8 v3, v2, 0x8
xor-int/2addr v3, v0
shl-int/lit8 v3, v3, 0x8
if-nez v3, :cond_23
iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
aget-object v1, v3, v1
if-nez v1, :cond_1b
move-object v0, v4
:goto_1a
return-object v0
:cond_1b
invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/sym/Name;->equals(II)Z
move-result v3
if-eqz v3, :cond_27
move-object v0, v1
goto :goto_1a
:cond_23
if-nez v2, :cond_27
move-object v0, v4
goto :goto_1a
:cond_27
and-int/lit16 v1, v2, 0xff
if-lez v1, :cond_38
add-int/lit8 v1, v1, -0x1
iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
aget-object v1, v2, v1
if-eqz v1, :cond_38
invoke-virtual {v1, v0, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1a
:cond_38
move-object v0, v4
goto :goto_1a
.end method
.method public findName([II)Lorg/codehaus/jackson/sym/Name;
.registers 8
const/4 v4, 0x0
invoke-static {p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash([II)I
move-result v0
iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int/2addr v1, v0
iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
aget v2, v2, v1
shr-int/lit8 v3, v2, 0x8
xor-int/2addr v3, v0
shl-int/lit8 v3, v3, 0x8
if-nez v3, :cond_21
iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;
aget-object v1, v3, v1
if-eqz v1, :cond_1f
invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/sym/Name;->equals([II)Z
move-result v3
if-eqz v3, :cond_25
:cond_1f
move-object v0, v1
:goto_20
return-object v0
:cond_21
if-nez v2, :cond_25
move-object v0, v4
goto :goto_20
:cond_25
and-int/lit16 v1, v2, 0xff
if-lez v1, :cond_36
add-int/lit8 v1, v1, -0x1
iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
aget-object v1, v2, v1
if-eqz v1, :cond_36
invoke-virtual {v1, v0, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(I[II)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_20
:cond_36
move-object v0, v4
goto :goto_20
.end method
.method public declared-synchronized makeChild()Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.registers 2
monitor-enter p0
:try_start_1
new-instance v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
invoke-direct {v0, p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-object v0
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public maybeDirty()Z
.registers 2
iget-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public release()V
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->maybeDirty()Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
if-eqz v0, :cond_12
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
invoke-direct {v0, p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->mergeChild(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V
invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->markAsShared()V
:cond_12
return-void
.end method
.method public size()I
.registers 2
iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[NameCanonicalizer, size: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v1, 0x2f
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I
array-length v1, v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, " coll; avg length: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
const/4 v2, 0x0
move v5, v2
move v2, v1
move v1, v5
:goto_2f
iget v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
if-ge v1, v3, :cond_49
iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
aget-object v3, v3, v1
invoke-virtual {v3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->length()I
move-result v3
const/4 v4, 0x1
move v5, v4
move v4, v2
move v2, v5
:goto_3f
if-gt v2, v3, :cond_45
add-int/2addr v4, v2
add-int/lit8 v2, v2, 0x1
goto :goto_3f
:cond_45
add-int/lit8 v1, v1, 0x1
move v2, v4
goto :goto_2f
:cond_49
iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
if-nez v1, :cond_5c
const-wide/16 v1, 0x0
:goto_4f
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_5c
int-to-double v1, v2
iget v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
int-to-double v3, v3
div-double/2addr v1, v3
goto :goto_4f
.end method