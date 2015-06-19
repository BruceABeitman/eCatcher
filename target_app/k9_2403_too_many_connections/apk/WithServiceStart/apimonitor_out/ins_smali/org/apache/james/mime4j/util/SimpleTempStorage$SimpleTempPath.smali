.class  Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;
.super Ljava/lang/Object;
.source "SimpleTempStorage.java"
.implements Lorg/apache/james/mime4j/util/TempPath;
.field private path:Ljava/io/File;
.field final synthetic this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;
.method private constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;)V
.registers 4
iput-object p1, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;
iput-object p2, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;
return-void
.end method
.method synthetic constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;Lorg/apache/james/mime4j/util/SimpleTempStorage$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;)V
return-void
.end method
.method private constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;
new-instance v0, Ljava/io/File;
invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;
return-void
.end method
.method synthetic constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;Lorg/apache/james/mime4j/util/SimpleTempStorage$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;)V
return-void
.end method
.method public createTempFile()Lorg/apache/james/mime4j/util/TempFile;
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;
#calls: Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
invoke-static {v0, p0, v1, v1}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
move-result-object v0
return-object v0
.end method
.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
.registers 4
iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;
#calls: Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
invoke-static {v0, p0, p1, p2}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
move-result-object v0
return-object v0
.end method
.method public createTempFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/james/mime4j/util/TempFile;
.registers 5
iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;
#calls: Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
invoke-static {v0, p0, p1, p2}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
move-result-object v0
return-object v0
.end method
.method public createTempPath()Lorg/apache/james/mime4j/util/TempPath;
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;
const/4 v1, 0x0
#calls: Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempPath(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
invoke-static {v0, p0, v1}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->access$400(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
move-result-object v0
return-object v0
.end method
.method public createTempPath(Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;
#calls: Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempPath(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
invoke-static {v0, p0, p1}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->access$400(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
move-result-object v0
return-object v0
.end method
.method public delete()V
.registers 1
return-void
.end method
.method public getAbsolutePath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method