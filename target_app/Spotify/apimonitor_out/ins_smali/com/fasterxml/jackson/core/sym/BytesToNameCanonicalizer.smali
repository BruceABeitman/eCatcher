.class public final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected _collCount:I
.field protected _collEnd:I
.field protected _collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
.field private _collListShared:Z
.field protected _count:I
.field private final _hashSeed:I
.field protected final _intern:Z
.field protected _longestCollisionList:I
.field protected _mainHash:[I
.field protected _mainHashMask:I
.field private _mainHashShared:Z
.field protected _mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
.field private _mainNamesShared:Z
.field private transient _needRehash:Z
.field protected final _parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.field protected final _tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
.method private constructor <init>(IZI)V
.registers 6
const/16 v0, 0x10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
iput p3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I
iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z
if-ge p1, v0, :cond_1b
move p1, v0
:goto_f
:cond_f
new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
return-void
:cond_1b
add-int/lit8 v1, p1, -0x1
and-int/2addr v1, p1
if-eqz v1, :cond_f
:goto_20
if-ge v0, p1, :cond_24
add-int/2addr v0, v0
goto :goto_20
:cond_24
move p1, v0
goto :goto_f
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;ZILcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V
.registers 7
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
iput p3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I
iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I
iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I
iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHashMask:I
iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I
iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHash:[I
iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collCount:I
iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I
iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collEnd:I
iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I
iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z
return-void
.end method
.method private _addSymbol(ILcom/fasterxml/jackson/core/sym/Name;)V
.registers 10
const/16 v6, 0xff
const/4 v5, 0x1
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
if-eqz v0, :cond_a
invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareMain()V
:cond_a
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z
if-eqz v0, :cond_11
invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->rehash()V
:cond_11
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int v1, p1, v0
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
aget-object v0, v0, v1
if-nez v0, :cond_45
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
shl-int/lit8 v2, p1, 0x8
aput v2, v0, v1
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
if-eqz v0, :cond_2e
invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareNames()V
:cond_2e
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
aput-object p2, v0, v1
:goto_32
:cond_32
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
array-length v0, v0
iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I
shr-int/lit8 v2, v0, 0x1
if-le v1, v2, :cond_44
shr-int/lit8 v1, v0, 0x2
iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I
sub-int/2addr v0, v1
if-le v2, v0, :cond_a2
iput-boolean v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z
:goto_44
:cond_44
return-void
:cond_45
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z
if-eqz v0, :cond_4c
invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareCollision()V
:cond_4c
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
aget v2, v0, v1
and-int/lit16 v0, v2, 0xff
if-nez v0, :cond_9f
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
const/16 v3, 0xfe
if-gt v0, v3, :cond_9a
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
iget v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
array-length v3, v3
if-lt v0, v3, :cond_70
invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->expandCollision()V
:cond_70
:goto_70
iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
and-int/lit16 v2, v2, -0x100
add-int/lit8 v4, v0, 0x1
or-int/2addr v2, v4
aput v2, v3, v1
:goto_79
new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
aget-object v2, v2, v0
invoke-direct {v1, p2, v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V
iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
aput-object v1, v2, v0
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length()I
move-result v0
iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I
if-le v0, v6, :cond_32
invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->reportTooManyCollisions(I)V
goto :goto_32
:cond_9a
invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findBestBucket()I
move-result v0
goto :goto_70
:cond_9f
add-int/lit8 v0, v0, -0x1
goto :goto_79
:cond_a2
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I
if-lt v0, v1, :cond_44
iput-boolean v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z
goto :goto_44
.end method
.method private static constructName(ILjava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;
.registers 10
const/4 v2, 0x1
const/4 v1, 0x0
const/4 v0, 0x4
if-ge p3, v0, :cond_8
packed-switch p3, :pswitch_data_3c
:cond_8
new-array v2, p3, [I
move v0, v1
:goto_b
if-ge v0, p3, :cond_35
aget v1, p2, v0
aput v1, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_b
:pswitch_14
new-instance v0, Lcom/fasterxml/jackson/core/sym/Name1;
aget v1, p2, v1
invoke-direct {v0, p1, p0, v1}, Lcom/fasterxml/jackson/core/sym/Name1;-><init>(Ljava/lang/String;II)V
:goto_1b
return-object v0
:pswitch_1c
new-instance v0, Lcom/fasterxml/jackson/core/sym/Name2;
aget v1, p2, v1
aget v2, p2, v2
invoke-direct {v0, p1, p0, v1, v2}, Lcom/fasterxml/jackson/core/sym/Name2;-><init>(Ljava/lang/String;III)V
goto :goto_1b
:pswitch_26
new-instance v0, Lcom/fasterxml/jackson/core/sym/Name3;
aget v3, p2, v1
aget v4, p2, v2
const/4 v1, 0x2
aget v5, p2, v1
move-object v1, p1
move v2, p0
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/Name3;-><init>(Ljava/lang/String;IIII)V
goto :goto_1b
:cond_35
new-instance v0, Lcom/fasterxml/jackson/core/sym/NameN;
invoke-direct {v0, p1, p0, v2, p3}, Lcom/fasterxml/jackson/core/sym/NameN;-><init>(Ljava/lang/String;I[II)V
goto :goto_1b
nop
:pswitch_data_3c
.packed-switch 0x1
:pswitch_14
:pswitch_1c
:pswitch_26
.end packed-switch
.end method
.method public static createRoot()Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.registers 4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
long-to-int v2, v0
const/16 v3, 0x20
ushr-long/2addr v0, v3
long-to-int v0, v0
add-int/2addr v0, v2
or-int/lit8 v0, v0, 0x1
invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
move-result-object v0
return-object v0
.end method
.method protected static createRoot(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
const/16 v1, 0x40
const/4 v2, 0x1
invoke-direct {v0, v1, v2, p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;-><init>(IZI)V
return-object v0
.end method
.method private expandCollision()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
array-length v1, v0
add-int v2, v1, v1
new-array v2, v2, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method private findBestBucket()I
.registers 7
iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
const v3, 0x7fffffff
const/4 v0, -0x1
const/4 v1, 0x0
iget v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
:goto_9
if-ge v1, v5, :cond_1c
aget-object v2, v4, v1
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length()I
move-result v2
if-ge v2, v3, :cond_1e
const/4 v0, 0x1
if-ne v2, v0, :cond_17
:goto_16
return v1
:cond_17
move v0, v1
:goto_18
add-int/lit8 v1, v1, 0x1
move v3, v2
goto :goto_9
:cond_1c
move v1, v0
goto :goto_16
:cond_1e
move v2, v3
goto :goto_18
.end method
.method public static getEmptyName()Lcom/fasterxml/jackson/core/sym/Name;
.registers 1
invoke-static {}, Lcom/fasterxml/jackson/core/sym/Name1;->getEmptyName()Lcom/fasterxml/jackson/core/sym/Name1;
move-result-object v0
return-object v0
.end method
.method private initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
.registers 11
const/4 v1, 0x0
new-instance v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
add-int/lit8 v2, p1, -0x1
new-array v3, p1, [I
new-array v4, p1, [Lcom/fasterxml/jackson/core/sym/Name;
const/4 v5, 0x0
move v6, v1
move v7, v1
move v8, v1
invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;-><init>(II[I[Lcom/fasterxml/jackson/core/sym/Name;[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;III)V
return-object v0
.end method
.method private mergeChild(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V
.registers 5
iget v1, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
iget v2, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I
if-gt v1, v2, :cond_f
:goto_e
return-void
:cond_f
const/16 v2, 0x1770
if-gt v1, v2, :cond_19
iget v1, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I
const/16 v2, 0x3f
if-le v1, v2, :cond_1f
:cond_19
const/16 v1, 0x40
invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
move-result-object p1
:cond_1f
iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
goto :goto_e
.end method
.method private nukeSymbols()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I
iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I
iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
return-void
.end method
.method private rehash()V
.registers 14
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
array-length v3, v0
add-int v0, v3, v3
const/high16 v2, 0x1
if-le v0, v2, :cond_12
invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->nukeSymbols()V
:cond_11
:goto_11
return-void
:cond_12
new-array v2, v0, [I
iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
add-int/lit8 v2, v0, -0x1
iput v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I
iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
new-array v0, v0, [Lcom/fasterxml/jackson/core/sym/Name;
iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
move v2, v1
move v0, v1
:goto_22
if-ge v2, v3, :cond_3e
aget-object v5, v4, v2
if-eqz v5, :cond_3b
add-int/lit8 v0, v0, 0x1
invoke-virtual {v5}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I
move-result v6
iget v7, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int/2addr v7, v6
iget-object v8, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
aput-object v5, v8, v7
iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
shl-int/lit8 v6, v6, 0x8
aput v6, v5, v7
:cond_3b
add-int/lit8 v2, v2, 0x1
goto :goto_22
:cond_3e
iget v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
if-nez v5, :cond_45
iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I
goto :goto_11
:cond_45
iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I
iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z
iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
array-length v2, v6
new-array v2, v2, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
move v4, v1
move v2, v0
:goto_54
if-ge v4, v5, :cond_cf
aget-object v0, v6, v4
move-object v12, v0
move v0, v2
move-object v2, v12
:goto_5b
if-eqz v2, :cond_ca
add-int/lit8 v3, v0, 0x1
iget-object v7, v2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;
invoke-virtual {v7}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I
move-result v0
iget v8, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int/2addr v8, v0
iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
aget v9, v9, v8
iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
aget-object v10, v10, v8
if-nez v10, :cond_83
iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
shl-int/lit8 v0, v0, 0x8
aput v0, v9, v8
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
aput-object v7, v0, v8
move v0, v1
:goto_7d
iget-object v1, v2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
move-object v2, v1
move v1, v0
move v0, v3
goto :goto_5b
:cond_83
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I
and-int/lit16 v0, v9, 0xff
if-nez v0, :cond_c7
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
const/16 v10, 0xfe
if-gt v0, v10, :cond_c2
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
iget v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
add-int/lit8 v10, v10, 0x1
iput v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I
iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
array-length v10, v10
if-lt v0, v10, :cond_a3
invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->expandCollision()V
:goto_a3
:cond_a3
iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
and-int/lit16 v9, v9, -0x100
add-int/lit8 v11, v0, 0x1
or-int/2addr v9, v11
aput v9, v10, v8
:goto_ac
new-instance v8, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
aget-object v9, v9, v0
invoke-direct {v8, v7, v9}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V
iget-object v7, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
aput-object v8, v7, v0
invoke-virtual {v8}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length()I
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
goto :goto_7d
:cond_c2
invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findBestBucket()I
move-result v0
goto :goto_a3
:cond_c7
add-int/lit8 v0, v0, -0x1
goto :goto_ac
:cond_ca
add-int/lit8 v2, v4, 0x1
move v4, v2
move v2, v0
goto :goto_54
:cond_cf
iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I
if-eq v2, v0, :cond_11
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Internal error: count after rehash "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; should be "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I
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
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
if-nez v0, :cond_e
const/16 v0, 0x20
new-array v0, v0, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
:goto_b
iput-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z
return-void
:cond_e
array-length v1, v0
new-array v2, v1, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_b
.end method
.method private unshareMain()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
array-length v1, v1
new-array v2, v1, [I
iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
return-void
.end method
.method private unshareNames()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
array-length v1, v0
new-array v2, v1, [Lcom/fasterxml/jackson/core/sym/Name;
iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
return-void
.end method
.method public final addName(Ljava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z
if-eqz v0, :cond_c
sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
:cond_c
const/4 v0, 0x3
if-ge p3, v0, :cond_28
if-ne p3, v2, :cond_1f
aget v0, p2, v1
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I
move-result v0
:goto_17
invoke-static {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_addSymbol(ILcom/fasterxml/jackson/core/sym/Name;)V
return-object v1
:cond_1f
aget v0, p2, v1
aget v1, p2, v2
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I
move-result v0
goto :goto_17
:cond_28
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash([II)I
move-result v0
goto :goto_17
.end method
.method public final calcHash(I)I
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I
xor-int/2addr v0, p1
ushr-int/lit8 v1, v0, 0xf
add-int/2addr v0, v1
ushr-int/lit8 v1, v0, 0x9
xor-int/2addr v0, v1
return v0
.end method
.method public final calcHash(II)I
.registers 5
ushr-int/lit8 v0, p1, 0xf
xor-int/2addr v0, p1
mul-int/lit8 v1, p2, 0x21
add-int/2addr v0, v1
iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I
xor-int/2addr v0, v1
ushr-int/lit8 v1, v0, 0x7
add-int/2addr v0, v1
return v0
.end method
.method public final calcHash([II)I
.registers 6
const/4 v0, 0x3
if-ge p2, v0, :cond_9
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_9
const/4 v1, 0x0
aget v1, p1, v1
iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I
xor-int/2addr v1, v2
ushr-int/lit8 v2, v1, 0x9
add-int/2addr v1, v2
mul-int/lit8 v1, v1, 0x21
const/4 v2, 0x1
aget v2, p1, v2
add-int/2addr v1, v2
const v2, 0x1003f
mul-int/2addr v1, v2
ushr-int/lit8 v2, v1, 0xf
add-int/2addr v1, v2
const/4 v2, 0x2
aget v2, p1, v2
xor-int/2addr v1, v2
ushr-int/lit8 v2, v1, 0x11
add-int/2addr v1, v2
:goto_26
if-ge v0, p2, :cond_36
mul-int/lit8 v1, v1, 0x1f
aget v2, p1, v0
xor-int/2addr v1, v2
ushr-int/lit8 v2, v1, 0x3
add-int/2addr v1, v2
shl-int/lit8 v2, v1, 0x7
xor-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_26
:cond_36
ushr-int/lit8 v0, v1, 0xf
add-int/2addr v0, v1
shl-int/lit8 v1, v0, 0x9
xor-int/2addr v0, v1
return v0
.end method
.method public final findName(I)Lcom/fasterxml/jackson/core/sym/Name;
.registers 7
const/4 v0, 0x0
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I
move-result v2
iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int/2addr v1, v2
iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
aget v3, v3, v1
shr-int/lit8 v4, v3, 0x8
xor-int/2addr v4, v2
shl-int/lit8 v4, v4, 0x8
if-nez v4, :cond_22
iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
aget-object v1, v4, v1
if-nez v1, :cond_1a
:goto_19
:cond_19
return-object v0
:cond_1a
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/sym/Name;->equals(I)Z
move-result v4
if-eqz v4, :cond_24
move-object v0, v1
goto :goto_19
:cond_22
if-eqz v3, :cond_19
:cond_24
and-int/lit16 v1, v3, 0xff
if-lez v1, :cond_19
add-int/lit8 v1, v1, -0x1
iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
aget-object v1, v3, v1
if-eqz v1, :cond_19
const/4 v0, 0x0
invoke-virtual {v1, v2, p1, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/fasterxml/jackson/core/sym/Name;
move-result-object v0
goto :goto_19
.end method
.method public final findName(II)Lcom/fasterxml/jackson/core/sym/Name;
.registers 8
const/4 v1, 0x0
if-nez p2, :cond_1d
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I
move-result v0
:goto_7
iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int/2addr v2, v0
iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
aget v3, v3, v2
shr-int/lit8 v4, v3, 0x8
xor-int/2addr v4, v0
shl-int/lit8 v4, v4, 0x8
if-nez v4, :cond_2a
iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
aget-object v2, v4, v2
if-nez v2, :cond_22
move-object v0, v1
:goto_1c
return-object v0
:cond_1d
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I
move-result v0
goto :goto_7
:cond_22
invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z
move-result v4
if-eqz v4, :cond_2e
move-object v0, v2
goto :goto_1c
:cond_2a
if-nez v3, :cond_2e
move-object v0, v1
goto :goto_1c
:cond_2e
and-int/lit16 v2, v3, 0xff
if-lez v2, :cond_3f
add-int/lit8 v2, v2, -0x1
iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
aget-object v2, v3, v2
if-eqz v2, :cond_3f
invoke-virtual {v2, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/fasterxml/jackson/core/sym/Name;
move-result-object v0
goto :goto_1c
:cond_3f
move-object v0, v1
goto :goto_1c
.end method
.method public final findName([II)Lcom/fasterxml/jackson/core/sym/Name;
.registers 8
const/4 v1, 0x0
const/4 v0, 0x0
const/4 v2, 0x3
if-ge p2, v2, :cond_13
aget v1, p1, v0
const/4 v2, 0x2
if-ge p2, v2, :cond_f
:goto_a
invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;
move-result-object v0
:cond_e
:goto_e
return-object v0
:cond_f
const/4 v0, 0x1
aget v0, p1, v0
goto :goto_a
:cond_13
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash([II)I
move-result v2
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I
and-int/2addr v0, v2
iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I
aget v3, v3, v0
shr-int/lit8 v4, v3, 0x8
xor-int/2addr v4, v2
shl-int/lit8 v4, v4, 0x8
if-nez v4, :cond_42
iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;
aget-object v0, v4, v0
if-eqz v0, :cond_e
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z
move-result v4
if-nez v4, :cond_e
:cond_31
and-int/lit16 v0, v3, 0xff
if-lez v0, :cond_46
add-int/lit8 v0, v0, -0x1
iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
aget-object v0, v3, v0
if-eqz v0, :cond_46
invoke-virtual {v0, v2, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(I[II)Lcom/fasterxml/jackson/core/sym/Name;
move-result-object v0
goto :goto_e
:cond_42
if-nez v3, :cond_31
move-object v0, v1
goto :goto_e
:cond_46
move-object v0, v1
goto :goto_e
.end method
.method public final makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.registers 6
new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
invoke-direct {v1, p0, p2, v2, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;ZILcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V
return-object v1
.end method
.method public final maybeDirty()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final release()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
if-eqz v0, :cond_1b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->maybeDirty()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;-><init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;)V
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V
iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z
iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z
iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z
:cond_1b
return-void
.end method
.method protected final reportTooManyCollisions(I)V
.registers 5
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Longest collision chain in symbol table (of size "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I
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