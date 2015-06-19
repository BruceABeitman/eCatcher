.class public Lcom/googlecode/javacpp/SizeTPointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "SizeTPointer.java"
.method public constructor <init>(I)V
.registers 5
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
:try_start_3
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;->allocateArray(I)V
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
.method private native allocateArray(I)V
.end method
.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;->capacity(I)Lcom/googlecode/javacpp/SizeTPointer;
move-result-object v0
return-object v0
.end method
.method public capacity(I)Lcom/googlecode/javacpp/SizeTPointer;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/SizeTPointer;
return-object v0
.end method
.method public get()J
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/SizeTPointer;->get(I)J
move-result-wide v0
return-wide v0
.end method
.method public native get(I)J
.end method
.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;->limit(I)Lcom/googlecode/javacpp/SizeTPointer;
move-result-object v0
return-object v0
.end method
.method public limit(I)Lcom/googlecode/javacpp/SizeTPointer;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/SizeTPointer;
return-object v0
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;->position(I)Lcom/googlecode/javacpp/SizeTPointer;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacpp/SizeTPointer;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/SizeTPointer;
return-object v0
.end method
.method public native put(IJ)Lcom/googlecode/javacpp/SizeTPointer;
.end method
.method public put(J)Lcom/googlecode/javacpp/SizeTPointer;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, v0, p1, p2}, Lcom/googlecode/javacpp/SizeTPointer;->put(IJ)Lcom/googlecode/javacpp/SizeTPointer;
move-result-object v0
return-object v0
.end method