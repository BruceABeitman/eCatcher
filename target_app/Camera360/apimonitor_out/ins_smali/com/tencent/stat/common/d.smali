.class public Lcom/tencent/stat/common/d;
.super Ljava/lang/Object;
.method public static a(Ljava/lang/String;)Ljava/io/File;
.registers 3
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_c
:goto_b
return-object v0
:cond_c
invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_21
invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/tencent/stat/common/d;->a(Ljava/lang/String;)Ljava/io/File;
:cond_21
invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
goto :goto_b
.end method
.method public static a(Ljava/io/File;)Ljava/util/List;
.registers 4
new-instance v0, Ljava/io/FileReader;
invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
new-instance v1, Ljava/io/BufferedReader;
invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_f
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_16
return-object v0
:cond_16
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f
.end method