.class public final Lcom/millennialmedia/a/a/r;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/m;
.registers 7
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->p()Z
move-result v1
const/4 v0, 0x1
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/a;->a(Z)V
:try_start_8
invoke-static {p1}, Lcom/millennialmedia/a/a/b/s;->a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/m;
:try_end_b
.catchall {:try_start_8 .. :try_end_b} :catchall_30
.catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_b} :catch_10
.catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_b} :catch_35
move-result-object v0
invoke-virtual {p1, v1}, Lcom/millennialmedia/a/a/d/a;->a(Z)V
return-object v0
:catch_10
move-exception v0
:try_start_11
new-instance v2, Lcom/millennialmedia/a/a/q;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Failed parsing JSON source: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " to Json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catchall_30
:try_end_30
.catchall {:try_start_11 .. :try_end_30} :catchall_30
move-exception v0
invoke-virtual {p1, v1}, Lcom/millennialmedia/a/a/d/a;->a(Z)V
throw v0
:catch_35
move-exception v0
:try_start_36
new-instance v2, Lcom/millennialmedia/a/a/q;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Failed parsing JSON source: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " to Json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:try_end_55
.catchall {:try_start_36 .. :try_end_55} :catchall_30
.end method
.method public a(Ljava/io/Reader;)Lcom/millennialmedia/a/a/m;
.registers 5
:try_start_0
new-instance v0, Lcom/millennialmedia/a/a/d/a;
invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/d/a;-><init>(Ljava/io/Reader;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/r;->a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/m;
move-result-object v1
invoke-virtual {v1}, Lcom/millennialmedia/a/a/m;->s()Z
move-result v2
if-nez v2, :cond_34
invoke-virtual {v0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v2, Lcom/millennialmedia/a/a/d/c;->j:Lcom/millennialmedia/a/a/d/c;
if-eq v0, v2, :cond_34
new-instance v0, Lcom/millennialmedia/a/a/w;
const-string v1, "Did not consume the entire document."
invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/String;)V
throw v0
:try_end_1f
.catch Lcom/millennialmedia/a/a/d/e; {:try_start_0 .. :try_end_1f} :catch_1f
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_26
.catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1f} :catch_2d
:catch_1f
move-exception v0
new-instance v1, Lcom/millennialmedia/a/a/w;
invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_26
move-exception v0
new-instance v1, Lcom/millennialmedia/a/a/n;
invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_2d
move-exception v0
new-instance v1, Lcom/millennialmedia/a/a/w;
invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_34
return-object v1
.end method
.method public a(Ljava/lang/String;)Lcom/millennialmedia/a/a/m;
.registers 3
new-instance v0, Ljava/io/StringReader;
invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/r;->a(Ljava/io/Reader;)Lcom/millennialmedia/a/a/m;
move-result-object v0
return-object v0
.end method