.class public Lorg/apache/commons/io/DirectoryWalker$CancelException;
.super Ljava/io/IOException;
.source "DirectoryWalker.java"
.field private static final serialVersionUID:J = 0x12b2b63ef9f577f0L
.field private final depth:I
.field private final file:Ljava/io/File;
.method public constructor <init>(Ljava/io/File;I)V
.registers 4
const-string v0, "Operation Cancelled"
invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker$CancelException;-><init>(Ljava/lang/String;Ljava/io/File;I)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;I)V
.registers 4
invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
iput-object p2, p0, Lorg/apache/commons/io/DirectoryWalker$CancelException;->file:Ljava/io/File;
iput p3, p0, Lorg/apache/commons/io/DirectoryWalker$CancelException;->depth:I
return-void
.end method
.method public getDepth()I
.registers 2
iget v0, p0, Lorg/apache/commons/io/DirectoryWalker$CancelException;->depth:I
return v0
.end method
.method public getFile()Ljava/io/File;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/DirectoryWalker$CancelException;->file:Ljava/io/File;
return-object v0
.end method