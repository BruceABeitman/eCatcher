.class public Lco/vine/android/network/MultipartInputStream;
.super Ljava/io/InputStream;
.source "MultipartInputStream.java"
.field private mCurrStream:Ljava/io/InputStream;
.field private final mEntities:Ljava/util/ArrayList;
.field private mNextEntity:I
.method public constructor <init>(Ljava/util/ArrayList;)V
.registers 3
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
iput-object p1, p0, Lco/vine/android/network/MultipartInputStream;->mEntities:Ljava/util/ArrayList;
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/network/MultipartInputStream;->mNextEntity:I
return-void
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;
:cond_c
return-void
.end method
.method public read()I
.registers 5
const/4 v3, 0x0
const/4 v2, 0x1
new-array v0, v2, [B
invoke-virtual {p0, v0, v3, v2}, Lco/vine/android/network/MultipartInputStream;->read([BII)I
move-result v1
if-ne v1, v2, :cond_d
aget-byte v1, v0, v3
:goto_c
return v1
:cond_d
const/4 v1, -0x1
goto :goto_c
.end method
.method public read([BII)I
.registers 10
const/4 v0, 0x0
iget v2, p0, Lco/vine/android/network/MultipartInputStream;->mNextEntity:I
iget-object v1, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;
:goto_5
if-ge v0, p3, :cond_30
if-nez v1, :cond_17
iget-object v4, p0, Lco/vine/android/network/MultipartInputStream;->mEntities:Ljava/util/ArrayList;
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/network/MultipartEntity$Entity;
invoke-interface {v4}, Lco/vine/android/network/MultipartEntity$Entity;->getInputStream()Ljava/io/InputStream;
move-result-object v1
iput-object v1, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;
:cond_17
:goto_17
add-int v4, p2, v0
sub-int v5, p3, v0
invoke-virtual {v1, p1, v4, v5}, Ljava/io/InputStream;->read([BII)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_24
add-int/2addr v0, v3
goto :goto_17
:cond_24
if-eq v0, p3, :cond_30
iget-object v4, p0, Lco/vine/android/network/MultipartInputStream;->mEntities:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
add-int/lit8 v4, v4, -0x1
if-ne v2, v4, :cond_31
:cond_30
return v0
:cond_31
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lco/vine/android/network/MultipartInputStream;->mNextEntity:I
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
const/4 v1, 0x0
const/4 v4, 0x0
iput-object v4, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;
goto :goto_5
.end method