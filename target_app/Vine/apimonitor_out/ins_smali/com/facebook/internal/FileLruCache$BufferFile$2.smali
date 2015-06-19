.class final Lcom/facebook/internal/FileLruCache$BufferFile$2;
.super Ljava/lang/Object;
.source "FileLruCache.java"
.implements Ljava/io/FilenameFilter;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 4
const-string v0, "buffer"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method