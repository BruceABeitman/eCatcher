.class public Lorg/apache/commons/io/FileDeleteStrategy;
.super Ljava/lang/Object;
.source "FileDeleteStrategy.java"
.field public static final FORCE:Lorg/apache/commons/io/FileDeleteStrategy;
.field public static final NORMAL:Lorg/apache/commons/io/FileDeleteStrategy;
.field private final name:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lorg/apache/commons/io/FileDeleteStrategy;
const-string v1, "Normal"
invoke-direct {v0, v1}, Lorg/apache/commons/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V
sput-object v0, Lorg/apache/commons/io/FileDeleteStrategy;->NORMAL:Lorg/apache/commons/io/FileDeleteStrategy;
new-instance v0, Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;
invoke-direct {v0}, Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;-><init>()V
sput-object v0, Lorg/apache/commons/io/FileDeleteStrategy;->FORCE:Lorg/apache/commons/io/FileDeleteStrategy;
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/commons/io/FileDeleteStrategy;->name:Ljava/lang/String;
return-void
.end method
.method public delete(Ljava/io/File;)V
.registers 5
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_25
invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileDeleteStrategy;->doDelete(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_25
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Deletion failed: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
return-void
.end method
.method public deleteQuietly(Ljava/io/File;)Z
.registers 4
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_a
:cond_8
const/4 v1, 0x1
:goto_9
return v1
:cond_a
:try_start_a
invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileDeleteStrategy;->doDelete(Ljava/io/File;)Z
:try_end_d
.catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_f
move-result v1
goto :goto_9
:catch_f
move-exception v0
const/4 v1, 0x0
goto :goto_9
.end method
.method protected doDelete(Ljava/io/File;)Z
.registers 3
invoke-virtual {p1}, Ljava/io/File;->delete()Z
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "FileDeleteStrategy["
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lorg/apache/commons/io/FileDeleteStrategy;->name:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method