.class  Lcom/lenovo/anyshare/sdk/internal/bb$d;
.super Lcom/lenovo/anyshare/sdk/internal/bb$a;
.source "RootUtils.java"
.field private a:Ljava/lang/String;
.method private constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bb$a;-><init>(Lcom/lenovo/anyshare/sdk/internal/bb$1;)V
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/lenovo/anyshare/sdk/internal/bb$1;)V
.registers 2
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/bb$d;-><init>()V
return-void
.end method
.method private a()Ljava/lang/String;
.registers 8
const-string/jumbo v5, ""
iput-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a:Ljava/lang/String;
const-string/jumbo v5, "PATH"
invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, ":"
invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v3, v0
const/4 v2, 0x0
:goto_15
if-ge v2, v3, :cond_3b
aget-object v4, v0, v2
new-instance v1, Ljava/io/File;
const-string/jumbo v5, "su"
invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v5
if-eqz v5, :cond_38
invoke-direct {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a(Ljava/io/File;)Z
move-result v5
if-eqz v5, :cond_38
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
iput-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a:Ljava/lang/String;
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
:goto_37
return-object v5
:cond_38
add-int/lit8 v2, v2, 0x1
goto :goto_15
:cond_3b
const-string/jumbo v5, ""
goto :goto_37
.end method
.method private a(Ljava/lang/Process;)V
.registers 4
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bb$d$1;
invoke-direct {v1, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bb$d$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/bb$d;Ljava/lang/Process;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method private a(Ljava/io/File;)Z
.registers 6
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a:Ljava/lang/String;
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a:Ljava/lang/String;
const-string/jumbo v2, "pm install /system/.NOT_EXIST_APPLICATION"
invoke-virtual {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/bb$b;
move-result-object v1
iget-object v2, v1, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;
const-string/jumbo v3, "INSTALL_FAILED_INVALID_URI"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_25
iget-object v2, v1, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;
const-string/jumbo v3, "INSTALL_FAILED_INSUFFICIENT_STORAGE"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_27
:cond_25
const/4 v2, 0x1
:goto_26
return v2
:cond_27
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a:Ljava/lang/String;
const/4 v2, 0x0
goto :goto_26
.end method
.method public a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/bb$b;
.registers 14
new-instance v8, Lcom/lenovo/anyshare/sdk/internal/bb$b;
invoke-direct {v8}, Lcom/lenovo/anyshare/sdk/internal/bb$b;-><init>()V
const/4 v3, 0x0
const/4 v1, 0x0
:try_start_7
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v9
iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;
move-result-object v6
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, "\n"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B
move-result-object v9
invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
new-instance v4, Ljava/io/BufferedReader;
new-instance v9, Ljava/io/InputStreamReader;
invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
move-result-object v10
invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_end_44
.catchall {:try_start_7 .. :try_end_44} :catchall_fb
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_44} :catch_100
:try_start_44
new-instance v2, Ljava/io/BufferedReader;
new-instance v9, Ljava/io/InputStreamReader;
invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;
move-result-object v10
invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_start_52
:try_end_52
.catchall {:try_start_44 .. :try_end_52} :catchall_fd
.catch Ljava/lang/Exception; {:try_start_44 .. :try_end_52} :catch_103
invoke-direct {p0, v7}, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a(Ljava/lang/Process;)V
const/4 v5, 0x0
:goto_56
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_dc
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
iget-object v10, v8, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, "\n"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
iput-object v9, v8, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;
:try_end_78
.catchall {:try_start_52 .. :try_end_78} :catchall_e8
.catch Ljava/lang/Exception; {:try_start_52 .. :try_end_78} :catch_79
goto :goto_56
:catch_79
move-exception v0
move-object v1, v2
move-object v3, v4
:goto_7c
:try_start_7c
const-string/jumbo v9, "RootUtils"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v11, "RootUtils root "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
iget-object v10, v8, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
iput-object v9, v8, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;
:try_end_b3
.catchall {:try_start_7c .. :try_end_b3} :catchall_fb
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V
:goto_b9
invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/bb;->a(Lcom/lenovo/anyshare/sdk/internal/bb$b;)Z
move-result v9
iput-boolean v9, v8, Lcom/lenovo/anyshare/sdk/internal/bb$b;->c:Z
const-string/jumbo v9, "RootUtils"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v11, "RootUtils root error:"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, v8, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
return-object v8
:cond_dc
:goto_dc
:try_start_dc
invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_f2
iget-object v9, v8, Lcom/lenovo/anyshare/sdk/internal/bb$b;->a:Ljava/util/List;
invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_e7
.catchall {:try_start_dc .. :try_end_e7} :catchall_e8
.catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e7} :catch_79
goto :goto_dc
:catchall_e8
move-exception v9
move-object v1, v2
move-object v3, v4
:goto_eb
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V
throw v9
:cond_f2
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V
move-object v1, v2
move-object v3, v4
goto :goto_b9
:catchall_fb
move-exception v9
goto :goto_eb
:catchall_fd
move-exception v9
move-object v3, v4
goto :goto_eb
:catch_100
move-exception v0
goto/16 :goto_7c
:catch_103
move-exception v0
move-object v3, v4
goto/16 :goto_7c
.end method
.method public a(Landroid/content/Context;)Z
.registers 4
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a:Ljava/lang/String;
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method