.class final Lorg/apache/commons/io/FileCleaningTracker$Tracker;
.super Ljava/lang/ref/PhantomReference;
.source "FileCleaningTracker.java"
.field private final deleteStrategy:Lorg/apache/commons/io/FileDeleteStrategy;
.field private final path:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Lorg/apache/commons/io/FileDeleteStrategy;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
.registers 5
invoke-direct {p0, p3, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
iput-object p1, p0, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->path:Ljava/lang/String;
if-nez p2, :cond_9
sget-object p2, Lorg/apache/commons/io/FileDeleteStrategy;->NORMAL:Lorg/apache/commons/io/FileDeleteStrategy;
:cond_9
iput-object p2, p0, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->deleteStrategy:Lorg/apache/commons/io/FileDeleteStrategy;
return-void
.end method
.method public delete()Z
.registers 4
iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->deleteStrategy:Lorg/apache/commons/io/FileDeleteStrategy;
new-instance v1, Ljava/io/File;
iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->path:Ljava/lang/String;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lorg/apache/commons/io/FileDeleteStrategy;->deleteQuietly(Ljava/io/File;)Z
move-result v0
return v0
.end method
.method public getPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->path:Ljava/lang/String;
return-object v0
.end method