.class  Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;
.super Lorg/apache/commons/io/FileDeleteStrategy;
.source "FileDeleteStrategy.java"
.method constructor <init>()V
.registers 2
const-string v0, "Force"
invoke-direct {p0, v0}, Lorg/apache/commons/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected doDelete(Ljava/io/File;)Z
.registers 3
invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V
const/4 v0, 0x1
return v0
.end method