.class final Lcom/bbm/iceberg/h;
.super Ljava/lang/Object;
.source "IcebergFetcher.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/io/File;
.field final synthetic b:Lcom/bbm/iceberg/i;
.field final synthetic c:Lcom/bbm/iceberg/a;
.method constructor <init>(Lcom/bbm/iceberg/a;Ljava/io/File;Lcom/bbm/iceberg/i;)V
.registers 4
iput-object p1, p0, Lcom/bbm/iceberg/h;->c:Lcom/bbm/iceberg/a;
iput-object p2, p0, Lcom/bbm/iceberg/h;->a:Ljava/io/File;
iput-object p3, p0, Lcom/bbm/iceberg/h;->b:Lcom/bbm/iceberg/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 11
iget-object v1, p0, Lcom/bbm/iceberg/h;->c:Lcom/bbm/iceberg/a;
monitor-enter v1
:try_start_3
iget-object v2, p0, Lcom/bbm/iceberg/h;->a:Ljava/io/File;
iget-object v3, p0, Lcom/bbm/iceberg/h;->b:Lcom/bbm/iceberg/i;
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iget-object v0, v3, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_16
:goto_16
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v3, v0}, Lcom/bbm/iceberg/i;->a(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v6
sget-object v7, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v6, v7, :cond_16
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_2d
.catchall {:try_start_3 .. :try_end_2d} :catchall_2e
goto :goto_16
:catchall_2e
move-exception v0
monitor-exit v1
throw v0
:cond_31
:try_start_31
new-instance v0, Ljava/lang/StringBuilder;
const-string v5, "LCE: Caching "
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, " enhancements to disk"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v0, v5}, Lcom/blackberry/a/i;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_50
:try_end_50
.catchall {:try_start_31 .. :try_end_50} :catchall_2e
new-instance v5, Ljava/io/FileOutputStream;
invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
new-instance v2, Ljava/io/BufferedOutputStream;
invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
new-instance v6, Landroid/util/JsonWriter;
new-instance v0, Ljava/io/OutputStreamWriter;
const-string v7, "UTF-8"
invoke-direct {v0, v2, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
invoke-direct {v6, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
invoke-virtual {v6}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_6d
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_d5
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v3, v0}, Lcom/bbm/iceberg/i;->b(Ljava/lang/String;)Ljava/util/List;
move-result-object v8
invoke-virtual {v6}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;
const-string v9, "email"
invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;
invoke-virtual {v6, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;
const-string v0, "pins"
invoke-virtual {v6, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;
invoke-virtual {v6}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;
invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_94
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_ce
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v6, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;
:try_end_a3
.catchall {:try_start_50 .. :try_end_a3} :catchall_2e
.catch Ljava/io/IOException; {:try_start_50 .. :try_end_a3} :catch_a4
goto :goto_94
:catch_a4
move-exception v0
:try_start_a5
const-string v0, "Could not write to iceberg cache file."
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/blackberry/a/i;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_ad
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "LCE: Done caching "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " enhancements to disk"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/blackberry/a/i;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
monitor-exit v1
:try_end_cd
.catchall {:try_start_a5 .. :try_end_cd} :catchall_2e
return-void
:cond_ce
:try_start_ce
invoke-virtual {v6}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;
invoke-virtual {v6}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
goto :goto_6d
:cond_d5
invoke-virtual {v6}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;
invoke-virtual {v6}, Landroid/util/JsonWriter;->close()V
invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
:try_end_e1
.catchall {:try_start_ce .. :try_end_e1} :catchall_2e
.catch Ljava/io/IOException; {:try_start_ce .. :try_end_e1} :catch_a4
goto :goto_ad
.end method