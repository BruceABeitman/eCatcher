.class final Lcom/facebook/a/o;
.super Ljava/lang/Object;
.source "LogCatCollector.java"
.method protected static a(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/4 v2, 0x0
:try_start_1
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
const-string v0, "logcat"
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz p0, :cond_15
const-string v0, "-b"
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_15
const/4 v0, -0x1
new-instance v4, Ljava/util/ArrayList;
invoke-static {}, Lcom/facebook/a/a;->a()Lcom/facebook/a/a/b;
move-result-object v1
invoke-interface {v1}, Lcom/facebook/a/a/b;->b()[Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
const-string v1, "-t"
invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v1
if-ltz v1, :cond_56
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v5
if-ge v1, v5, :cond_56
add-int/lit8 v0, v1, 0x1
invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-static {}, Lcom/facebook/a/b;->a()I
move-result v5
const/16 v6, 0x8
if-ge v5, v6, :cond_56
add-int/lit8 v5, v1, 0x1
invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;
invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
const-string v1, "-d"
invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_56
new-instance v1, Lcom/facebook/a/c/b;
if-lez v0, :cond_b1
:goto_5a
invoke-direct {v1, v0}, Lcom/facebook/a/c/b;-><init>(I)V
:try_end_5d
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_5d} :catch_b6
:try_start_5d
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v2
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
move-result-object v0
new-instance v2, Ljava/io/BufferedReader;
new-instance v3, Ljava/io/InputStreamReader;
invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
move-result-object v0
invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
:goto_84
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_b4
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/facebook/a/c/b;->add(Ljava/lang/Object;)Z
:try_end_a0
.catch Ljava/io/IOException; {:try_start_5d .. :try_end_a0} :catch_a1
goto :goto_84
:catch_a1
move-exception v0
move-object v7, v0
move-object v0, v1
move-object v1, v7
:goto_a5
sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v3, "LogCatCollector.collectLogcat could not retrieve data."
invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_ac
invoke-virtual {v0}, Lcom/facebook/a/c/b;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_b1
const/16 v0, 0x64
goto :goto_5a
:cond_b4
move-object v0, v1
goto :goto_ac
:catch_b6
move-exception v0
move-object v1, v0
move-object v0, v2
goto :goto_a5
.end method