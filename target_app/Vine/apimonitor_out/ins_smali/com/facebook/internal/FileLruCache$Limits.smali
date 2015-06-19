.class public final Lcom/facebook/internal/FileLruCache$Limits;
.super Ljava/lang/Object;
.source "FileLruCache.java"
.field private byteCount:I
.field private fileCount:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x400
iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I
const/high16 v0, 0x10
iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I
return-void
.end method
.method  getByteCount()I
.registers 2
iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I
return v0
.end method
.method  getFileCount()I
.registers 2
iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I
return v0
.end method
.method  setByteCount(I)V
.registers 4
if-gez p1, :cond_a
new-instance v0, Ljava/security/InvalidParameterException;
const-string v1, "Cache byte-count limit must be >= 0"
invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I
return-void
.end method
.method  setFileCount(I)V
.registers 4
if-gez p1, :cond_a
new-instance v0, Ljava/security/InvalidParameterException;
const-string v1, "Cache file count limit must be >= 0"
invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I
return-void
.end method