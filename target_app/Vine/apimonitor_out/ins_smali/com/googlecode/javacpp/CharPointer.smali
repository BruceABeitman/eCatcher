.class public Lcom/googlecode/javacpp/CharPointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "CharPointer.java"
.method public constructor <init>(I)V
.registers 5
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
:try_start_3
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->allocateArray(I)V
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
invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v0, v0
add-int/lit8 v0, v0, 0x1
invoke-direct {p0, v0}, Lcom/googlecode/javacpp/CharPointer;-><init>(I)V
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->putString(Ljava/lang/String;)Lcom/googlecode/javacpp/CharPointer;
return-void
.end method
.method public constructor <init>(Ljava/nio/CharBuffer;)V
.registers 4
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Ljava/nio/Buffer;)V
if-eqz p1, :cond_24
invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z
move-result v1
if-eqz v1, :cond_24
invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C
move-result-object v0
array-length v1, v0
invoke-direct {p0, v1}, Lcom/googlecode/javacpp/CharPointer;->allocateArray(I)V
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/CharPointer;->put([C)Lcom/googlecode/javacpp/CharPointer;
invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I
move-result v1
invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/CharPointer;->position(I)Lcom/googlecode/javacpp/CharPointer;
invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I
move-result v1
invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/CharPointer;->limit(I)Lcom/googlecode/javacpp/CharPointer;
:cond_24
return-void
.end method
.method public varargs constructor <init>([C)V
.registers 3
array-length v0, p1
invoke-direct {p0, v0}, Lcom/googlecode/javacpp/CharPointer;-><init>(I)V
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->put([C)Lcom/googlecode/javacpp/CharPointer;
return-void
.end method
.method private native allocateArray(I)V
.end method
.method public bridge synthetic asBuffer()Ljava/nio/Buffer;
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacpp/CharPointer;->asBuffer()Ljava/nio/CharBuffer;
move-result-object v0
return-object v0
.end method
.method public final asBuffer()Ljava/nio/CharBuffer;
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacpp/CharPointer;->asByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;
move-result-object v0
return-object v0
.end method
.method public capacity(I)Lcom/googlecode/javacpp/CharPointer;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/CharPointer;
return-object v0
.end method
.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->capacity(I)Lcom/googlecode/javacpp/CharPointer;
move-result-object v0
return-object v0
.end method
.method public get()C
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/CharPointer;->get(I)C
move-result v0
return v0
.end method
.method public native get(I)C
.end method
.method public get([C)Lcom/googlecode/javacpp/CharPointer;
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/CharPointer;->get([CII)Lcom/googlecode/javacpp/CharPointer;
move-result-object v0
return-object v0
.end method
.method public native get([CII)Lcom/googlecode/javacpp/CharPointer;
.end method
.method public getString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/String;
invoke-virtual {p0}, Lcom/googlecode/javacpp/CharPointer;->getStringChars()[C
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
return-object v0
.end method
.method public getStringChars()[C
.registers 7
const/4 v5, 0x0
const/16 v4, 0x10
new-array v0, v4, [C
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/googlecode/javacpp/CharPointer;->position()I
move-result v2
:cond_a
:goto_a
invoke-virtual {p0, v2}, Lcom/googlecode/javacpp/CharPointer;->position(I)Lcom/googlecode/javacpp/CharPointer;
move-result-object v4
invoke-virtual {v4}, Lcom/googlecode/javacpp/CharPointer;->get()C
move-result v4
aput-char v4, v0, v1
if-eqz v4, :cond_28
add-int/lit8 v1, v1, 0x1
add-int/lit8 v2, v2, 0x1
array-length v4, v0
if-lt v1, v4, :cond_a
array-length v4, v0
mul-int/lit8 v4, v4, 0x2
new-array v3, v4, [C
array-length v4, v0
invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object v0, v3
goto :goto_a
:cond_28
new-array v3, v1, [C
invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v3
.end method
.method public limit(I)Lcom/googlecode/javacpp/CharPointer;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/CharPointer;
return-object v0
.end method
.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->limit(I)Lcom/googlecode/javacpp/CharPointer;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacpp/CharPointer;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/CharPointer;
return-object v0
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/CharPointer;->position(I)Lcom/googlecode/javacpp/CharPointer;
move-result-object v0
return-object v0
.end method
.method public put(C)Lcom/googlecode/javacpp/CharPointer;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacpp/CharPointer;->put(IC)Lcom/googlecode/javacpp/CharPointer;
move-result-object v0
return-object v0
.end method
.method public native put(IC)Lcom/googlecode/javacpp/CharPointer;
.end method
.method public put([C)Lcom/googlecode/javacpp/CharPointer;
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/CharPointer;->put([CII)Lcom/googlecode/javacpp/CharPointer;
move-result-object v0
return-object v0
.end method
.method public native put([CII)Lcom/googlecode/javacpp/CharPointer;
.end method
.method public putString(Ljava/lang/String;)Lcom/googlecode/javacpp/CharPointer;
.registers 6
invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/CharPointer;->put([C)Lcom/googlecode/javacpp/CharPointer;
move-result-object v1
array-length v2, v0
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacpp/CharPointer;->put(IC)Lcom/googlecode/javacpp/CharPointer;
move-result-object v1
return-object v1
.end method