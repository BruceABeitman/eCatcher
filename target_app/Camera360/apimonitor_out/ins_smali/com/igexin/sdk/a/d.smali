.class public Lcom/igexin/sdk/a/d;
.super Ljava/lang/Object;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_6
:goto_5
return-void
:cond_6
iput-object p1, p0, Lcom/igexin/sdk/a/d;->c:Landroid/content/Context;
invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "/data/data/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "/files/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "run.pid"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/igexin/sdk/a/d;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "/data/data/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "/files/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "stop.lock"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/igexin/sdk/a/d;->b:Ljava/lang/String;
goto :goto_5
.end method
.method public a()V
.registers 3
invoke-virtual {p0}, Lcom/igexin/sdk/a/d;->c()Z
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lcom/igexin/sdk/a/d;->a:Ljava/lang/String;
if-eqz v0, :cond_14
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/igexin/sdk/a/d;->a:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_start_11
invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
:goto_14
:try_end_14
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15
:cond_14
return-void
:catch_15
move-exception v0
goto :goto_14
.end method
.method public b()V
.registers 3
invoke-virtual {p0}, Lcom/igexin/sdk/a/d;->c()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/igexin/sdk/a/d;->a:Ljava/lang/String;
if-eqz v0, :cond_14
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/igexin/sdk/a/d;->a:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_14
return-void
.end method
.method public c()Z
.registers 5
const/4 v1, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lcom/igexin/sdk/a/d;->a:Ljava/lang/String;
if-eqz v0, :cond_50
new-instance v0, Ljava/io/File;
iget-object v3, p0, Lcom/igexin/sdk/a/d;->a:Ljava/lang/String;
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:goto_d
iget-object v3, p0, Lcom/igexin/sdk/a/d;->b:Ljava/lang/String;
if-eqz v3, :cond_18
new-instance v1, Ljava/io/File;
iget-object v3, p0, Lcom/igexin/sdk/a/d;->b:Ljava/lang/String;
invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:cond_18
if-eqz v0, :cond_2d
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_2d
if-eqz v1, :cond_2b
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_2b
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_2b
move v0, v2
:goto_2c
return v0
:cond_2d
if-eqz v1, :cond_4e
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_4e
new-instance v0, Ljava/io/File;
iget-object v3, p0, Lcom/igexin/sdk/a/d;->a:Ljava/lang/String;
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v0
if-eqz v0, :cond_4e
new-instance v0, Lcom/igexin/sdk/a/c;
iget-object v1, p0, Lcom/igexin/sdk/a/d;->c:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/igexin/sdk/a/c;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/igexin/sdk/a/c;->a()V
move v0, v2
goto :goto_2c
:cond_4e
const/4 v0, 0x0
goto :goto_2c
:cond_50
move-object v0, v1
goto :goto_d
.end method