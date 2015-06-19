.class public Lcom/googlecode/javacpp/BytePointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "BytePointer.java"
.method public constructor <init>(I)V
.registers 5
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
:try_start_3
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->allocateArray(I)V
:try_end_6
.catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_6} :catch_7
return-void
:catch_7
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "No native JavaCPP library in memory. (Has Loader.load() been called?)"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
array-length v0, v0
add-int/lit8 v0, v0, 0x1
invoke-direct {p0, v0}, Lcom/googlecode/javacpp/BytePointer;-><init>(I)V
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->putString(Ljava/lang/String;)Lcom/googlecode/javacpp/BytePointer;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
array-length v0, v0
add-int/lit8 v0, v0, 0x1
invoke-direct {p0, v0}, Lcom/googlecode/javacpp/BytePointer;-><init>(I)V
invoke-virtual {p0, p1, p2}, Lcom/googlecode/javacpp/BytePointer;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacpp/BytePointer;
return-void
.end method
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Ljava/nio/Buffer;)V
if-eqz p1, :cond_24
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z
move-result v1
if-eqz v1, :cond_24
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v0
array-length v1, v0
invoke-direct {p0, v1}, Lcom/googlecode/javacpp/BytePointer;->allocateArray(I)V
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/BytePointer;->put([B)Lcom/googlecode/javacpp/BytePointer;
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v1
invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I
move-result v1
invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/BytePointer;->limit(I)Lcom/googlecode/javacpp/BytePointer;
:cond_24
return-void
.end method
.method public varargs constructor <init>([B)V
.registers 3
array-length v0, p1
invoke-direct {p0, v0}, Lcom/googlecode/javacpp/BytePointer;-><init>(I)V
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->put([B)Lcom/googlecode/javacpp/BytePointer;
return-void
.end method
.method private native allocateArray(I)V
.end method
.method public bridge synthetic asBuffer()Ljava/nio/Buffer;
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacpp/BytePointer;->asBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
return-object v0
.end method
.method public final asBuffer()Ljava/nio/ByteBuffer;
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacpp/BytePointer;->asByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
return-object v0
.end method
.method public capacity(I)Lcom/googlecode/javacpp/BytePointer;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/BytePointer;
return-object v0
.end method
.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
return-object v0
.end method
.method public get()B
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/BytePointer;->get(I)B
move-result v0
return v0
.end method
.method public native get(I)B
.end method
.method public get([B)Lcom/googlecode/javacpp/BytePointer;
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/BytePointer;->get([BII)Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
return-object v0
.end method
.method public native get([BII)Lcom/googlecode/javacpp/BytePointer;
.end method
.method public getString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/String;
invoke-virtual {p0}, Lcom/googlecode/javacpp/BytePointer;->getStringBytes()[B
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
return-object v0
.end method
.method public getString(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/String;
invoke-virtual {p0}, Lcom/googlecode/javacpp/BytePointer;->getStringBytes()[B
move-result-object v1
invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
return-object v0
.end method
.method public getStringBytes()[B
.registers 7
const/4 v5, 0x0
const/16 v4, 0x10
new-array v0, v4, [B
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/googlecode/javacpp/BytePointer;->position()I
move-result v2
:cond_a
:goto_a
invoke-virtual {p0, v2}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v4
invoke-virtual {v4}, Lcom/googlecode/javacpp/BytePointer;->get()B
move-result v4
aput-byte v4, v0, v1
if-eqz v4, :cond_28
add-int/lit8 v1, v1, 0x1
add-int/lit8 v2, v2, 0x1
array-length v4, v0
if-lt v1, v4, :cond_a
array-length v4, v0
mul-int/lit8 v4, v4, 0x2
new-array v3, v4, [B
array-length v4, v0
invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object v0, v3
goto :goto_a
:cond_28
new-array v3, v1, [B
invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v3
.end method
.method public limit(I)Lcom/googlecode/javacpp/BytePointer;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/BytePointer;
return-object v0
.end method
.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->limit(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacpp/BytePointer;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/BytePointer;
return-object v0
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
return-object v0
.end method
.method public put(B)Lcom/googlecode/javacpp/BytePointer;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacpp/BytePointer;->put(IB)Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
return-object v0
.end method
.method public native put(IB)Lcom/googlecode/javacpp/BytePointer;
.end method
.method public put([B)Lcom/googlecode/javacpp/BytePointer;
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/BytePointer;->put([BII)Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
return-object v0
.end method
.method public native put([BII)Lcom/googlecode/javacpp/BytePointer;
.end method
.method public putString(Ljava/lang/String;)Lcom/googlecode/javacpp/BytePointer;
.registers 6
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/BytePointer;->put([B)Lcom/googlecode/javacpp/BytePointer;
move-result-object v1
array-length v2, v0
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacpp/BytePointer;->put(IB)Lcom/googlecode/javacpp/BytePointer;
move-result-object v1
return-object v1
.end method
.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacpp/BytePointer;
.registers 7
invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/BytePointer;->put([B)Lcom/googlecode/javacpp/BytePointer;
move-result-object v1
array-length v2, v0
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacpp/BytePointer;->put(IB)Lcom/googlecode/javacpp/BytePointer;
return-object p0
.end method