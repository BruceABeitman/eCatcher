.class public Lcom/pinguo/camera360/gallery/util/ProfileData;
.super Ljava/lang/Object;
.source "ProfileData.java"
.field private static final TAG:Ljava/lang/String; = "ProfileData"
.field private mNameToId:Ljava/util/HashMap;
.field private mNextId:I
.field private mOut:Ljava/io/DataOutputStream;
.field private mRoot:Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
.field private mScratch:[B
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x4
new-array v0, v0, [B
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mScratch:[B
new-instance v0, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
const/4 v1, 0x0
const/4 v2, -0x1
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;-><init>(Lcom/pinguo/camera360/gallery/util/ProfileData$Node;I)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mRoot:Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mNameToId:Ljava/util/HashMap;
return-void
.end method
.method private nameToId(Ljava/lang/String;)I
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mNameToId:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_19
iget v1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mNextId:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mNextId:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mNameToId:Ljava/util/HashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_19
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
return v1
.end method
.method private writeAllStacks(Lcom/pinguo/camera360/gallery/util/ProfileData$Node;I)V
.registers 7
iget v2, p1, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->sampleCount:I
if-lez v2, :cond_7
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeOneStack(Lcom/pinguo/camera360/gallery/util/ProfileData$Node;I)V
:cond_7
iget-object v0, p1, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->children:Ljava/util/ArrayList;
if-eqz v0, :cond_12
const/4 v1, 0x0
:goto_c
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v2
if-lt v1, v2, :cond_13
:cond_12
return-void
:cond_13
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
add-int/lit8 v3, p2, 0x1
invoke-direct {p0, v2, v3}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeAllStacks(Lcom/pinguo/camera360/gallery/util/ProfileData$Node;I)V
add-int/lit8 v1, v1, 0x1
goto :goto_c
.end method
.method private writeAllSymbols()V
.registers 8
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mNameToId:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_11
return-void
:cond_11
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mOut:Ljava/io/DataOutputStream;
const-string/jumbo v3, "0x%x %s%n"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
goto :goto_a
.end method
.method private writeInt(I)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mScratch:[B
const/4 v1, 0x0
int-to-byte v2, p1
aput-byte v2, v0, v1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mScratch:[B
const/4 v1, 0x1
shr-int/lit8 v2, p1, 0x8
int-to-byte v2, v2
aput-byte v2, v0, v1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mScratch:[B
const/4 v1, 0x2
shr-int/lit8 v2, p1, 0x10
int-to-byte v2, v2
aput-byte v2, v0, v1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mScratch:[B
const/4 v1, 0x3
shr-int/lit8 v2, p1, 0x18
int-to-byte v2, v2
aput-byte v2, v0, v1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mOut:Ljava/io/DataOutputStream;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mScratch:[B
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
return-void
.end method
.method private writeOneStack(Lcom/pinguo/camera360/gallery/util/ProfileData$Node;I)V
.registers 5
iget v1, p1, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->sampleCount:I
invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeInt(I)V
invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeInt(I)V
move v0, p2
:goto_9
add-int/lit8 p2, v0, -0x1
if-gtz v0, :cond_e
return-void
:cond_e
iget v1, p1, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->id:I
invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeInt(I)V
iget-object p1, p1, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->parent:Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
move v0, p2
goto :goto_9
.end method
.method public addSample([Ljava/lang/String;)V
.registers 9
array-length v6, p1
new-array v3, v6, [I
const/4 v1, 0x0
:goto_4
array-length v6, p1
if-lt v1, v6, :cond_15
iget-object v5, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mRoot:Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
array-length v6, p1
add-int/lit8 v1, v6, -0x1
:goto_c
if-gez v1, :cond_20
iget v6, v5, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->sampleCount:I
add-int/lit8 v6, v6, 0x1
iput v6, v5, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->sampleCount:I
return-void
:cond_15
aget-object v6, p1, v1
invoke-direct {p0, v6}, Lcom/pinguo/camera360/gallery/util/ProfileData;->nameToId(Ljava/lang/String;)I
move-result v6
aput v6, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_20
iget-object v6, v5, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->children:Ljava/util/ArrayList;
if-nez v6, :cond_2b
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iput-object v6, v5, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->children:Ljava/util/ArrayList;
:cond_2b
aget v2, v3, v1
iget-object v0, v5, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->children:Ljava/util/ArrayList;
const/4 v4, 0x0
:goto_30
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v6
if-lt v4, v6, :cond_4d
:cond_36
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v6
if-ne v4, v6, :cond_44
new-instance v6, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
invoke-direct {v6, v5, v2}, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;-><init>(Lcom/pinguo/camera360/gallery/util/ProfileData$Node;I)V
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_44
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
add-int/lit8 v1, v1, -0x1
goto :goto_c
:cond_4d
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
iget v6, v6, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->id:I
if-eq v6, v2, :cond_36
add-int/lit8 v4, v4, 0x1
goto :goto_30
.end method
.method public dumpToFile(Ljava/lang/String;)V
.registers 5
:try_start_0
new-instance v1, Ljava/io/DataOutputStream;
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mOut:Ljava/io/DataOutputStream;
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeInt(I)V
const/4 v1, 0x3
invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeInt(I)V
const/4 v1, 0x1
invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeInt(I)V
const/16 v1, 0x4e20
invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeInt(I)V
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeInt(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mRoot:Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
const/4 v2, 0x0
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeAllStacks(Lcom/pinguo/camera360/gallery/util/ProfileData$Node;I)V
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeInt(I)V
const/4 v1, 0x1
invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeInt(I)V
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeInt(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/ProfileData;->writeAllSymbols()V
:try_end_36
.catchall {:try_start_0 .. :try_end_36} :catchall_49
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_3c
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mOut:Ljava/io/DataOutputStream;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V
:goto_3b
return-void
:catch_3c
move-exception v0
:try_start_3d
const-string/jumbo v1, "Failed to dump to file"
invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_43
.catchall {:try_start_3d .. :try_end_43} :catchall_49
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mOut:Ljava/io/DataOutputStream;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V
goto :goto_3b
:catchall_49
move-exception v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mOut:Ljava/io/DataOutputStream;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V
throw v1
.end method
.method public reset()V
.registers 4
new-instance v0, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
const/4 v1, 0x0
const/4 v2, -0x1
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;-><init>(Lcom/pinguo/camera360/gallery/util/ProfileData$Node;I)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mRoot:Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mNameToId:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/util/ProfileData;->mNextId:I
return-void
.end method