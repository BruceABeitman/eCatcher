.class public Lorg/apache/commons/io/FileExistsException;
.super Ljava/io/IOException;
.source "FileExistsException.java"
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/io/IOException;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/io/File;)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "File "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " exists"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
return-void
.end method