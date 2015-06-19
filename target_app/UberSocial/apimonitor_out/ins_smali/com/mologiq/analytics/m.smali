.class  Lcom/mologiq/analytics/m;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/io/File;
.field private final b:Ljava/io/File;
.method constructor <init>(Ljava/io/File;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, ".bak"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/mologiq/analytics/m;->b:Ljava/io/File;
return-void
.end method
.method  a()Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
return-object v0
.end method
.method  a(Ljava/io/FileOutputStream;)V
.registers 5
if-eqz p1, :cond_a
:try_start_2
invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
iget-object v0, p0, Lcom/mologiq/analytics/m;->b:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:try_end_a
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_b
:cond_a
:goto_a
return-void
:catch_b
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "finishWrite: Got exception:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
goto :goto_a
.end method
.method  b()Ljava/io/FileOutputStream;
.registers 4
const/4 v2, -0x1
iget-object v0, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/mologiq/analytics/m;->b:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_43
iget-object v0, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
iget-object v1, p0, Lcom/mologiq/analytics/m;->b:Ljava/io/File;
invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_3b
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Couldn\'t rename file "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " to backup file "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/mologiq/analytics/m;->b:Ljava/io/File;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
:try_start_3b
:goto_3b
:cond_3b
new-instance v0, Ljava/io/FileOutputStream;
iget-object v1, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_42
.catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_42} :catch_49
:goto_42
return-object v0
:cond_43
iget-object v0, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
goto :goto_3b
:catch_49
move-exception v0
iget-object v0, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
move-result v1
if-nez v1, :cond_6d
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Couldn\'t create directory "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6d
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
const/16 v1, 0x1f9
invoke-static {v0, v1, v2, v2}, Lcom/mologiq/analytics/FileUtils;->setPermissions(Ljava/lang/String;III)I
:try_start_76
new-instance v0, Ljava/io/FileOutputStream;
iget-object v1, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_7d
.catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_7d} :catch_7e
goto :goto_42
:catch_7e
move-exception v0
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Couldn\'t create "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method  b(Ljava/io/FileOutputStream;)V
.registers 5
if-eqz p1, :cond_11
:try_start_2
invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
iget-object v0, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
iget-object v0, p0, Lcom/mologiq/analytics/m;->b:Ljava/io/File;
iget-object v1, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:try_end_11
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_12
:goto_11
:cond_11
return-void
:catch_12
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "failWrite: Got exception:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
goto :goto_11
.end method
.method  c()Ljava/io/FileOutputStream;
.registers 4
:try_start_0
new-instance v0, Ljava/io/FileOutputStream;
iget-object v1, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
:try_end_8
.catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_9
return-object v0
:catch_9
move-exception v0
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Couldn\'t append "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method  d()V
.registers 4
:try_start_0
new-instance v0, Ljava/io/FileOutputStream;
iget-object v1, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
:try_end_a
.catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_b
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_23
:goto_a
return-void
:catch_b
move-exception v0
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Couldn\'t append "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:catch_23
move-exception v0
goto :goto_a
.end method
.method  e()Ljava/io/FileInputStream;
.registers 3
iget-object v0, p0, Lcom/mologiq/analytics/m;->b:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
iget-object v0, p0, Lcom/mologiq/analytics/m;->b:Ljava/io/File;
iget-object v1, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:cond_14
new-instance v0, Ljava/io/FileInputStream;
iget-object v1, p0, Lcom/mologiq/analytics/m;->a:Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
return-object v0
.end method
.method  f()[B
.registers 7
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/mologiq/analytics/m;->e()Ljava/io/FileInputStream;
move-result-object v3
:try_start_5
invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I
move-result v0
new-array v0, v0, [B
:goto_b
array-length v2, v0
sub-int/2addr v2, v1
invoke-virtual {v3, v0, v1, v2}, Ljava/io/FileInputStream;->read([BII)I
:try_end_10
.catchall {:try_start_5 .. :try_end_10} :catchall_2b
move-result v2
if-gtz v2, :cond_17
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
return-object v0
:cond_17
add-int/2addr v2, v1
:try_start_18
invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I
move-result v1
array-length v4, v0
sub-int/2addr v4, v2
if-le v1, v4, :cond_30
add-int/2addr v1, v2
new-array v1, v1, [B
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:try_end_28
.catchall {:try_start_18 .. :try_end_28} :catchall_2b
move-object v0, v1
move v1, v2
goto :goto_b
:catchall_2b
move-exception v0
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
throw v0
:cond_30
move v1, v2
goto :goto_b
.end method