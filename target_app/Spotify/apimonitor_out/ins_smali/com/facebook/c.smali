.class final Lcom/facebook/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Ljava/lang/Object;
.field private b:Landroid/content/Context;
.field private c:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/c;->a:Ljava/lang/Object;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/c;->c:Ljava/util/HashMap;
iput-object p1, p0, Lcom/facebook/c;->b:Landroid/content/Context;
return-void
.end method
.method public static a(Landroid/content/Context;)Lcom/facebook/c;
.registers 9
sget-object v2, Lcom/facebook/c;->a:Ljava/lang/Object;
monitor-enter v2
:try_start_3
new-instance v3, Lcom/facebook/c;
invoke-direct {v3, p0}, Lcom/facebook/c;-><init>(Landroid/content/Context;)V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_38
const/4 v0, 0x0
:try_start_9
new-instance v1, Ljava/io/ObjectInputStream;
new-instance v4, Ljava/io/BufferedInputStream;
iget-object v5, v3, Lcom/facebook/c;->b:Landroid/content/Context;
const-string v6, "AppEventsLogger.persistedevents"
invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_1b
:try_end_1b
.catchall {:try_start_9 .. :try_end_1b} :catchall_5d
.catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_1b} :catch_33
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_3b
invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
iget-object v4, v3, Lcom/facebook/c;->b:Landroid/content/Context;
const-string v5, "AppEventsLogger.persistedevents"
invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->delete()Z
iput-object v0, v3, Lcom/facebook/c;->c:Ljava/util/HashMap;
:try_start_2e
:try_end_2e
.catchall {:try_start_1b .. :try_end_2e} :catchall_65
.catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_2e} :catch_69
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2e} :catch_67
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
:goto_31
monitor-exit v2
return-object v3
:catch_33
move-exception v1
:goto_34
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
:try_end_37
.catchall {:try_start_2e .. :try_end_37} :catchall_38
goto :goto_31
:catchall_38
move-exception v0
monitor-exit v2
throw v0
:catch_3b
move-exception v1
move-object v7, v1
move-object v1, v0
move-object v0, v7
:try_start_3f
:goto_3f
invoke-static {}, Lcom/facebook/AppEventsLogger;->f()Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Got unexpected exception: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_start_59
:try_end_59
.catchall {:try_start_3f .. :try_end_59} :catchall_65
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto :goto_31
:catchall_5d
move-exception v1
move-object v7, v1
move-object v1, v0
move-object v0, v7
:goto_61
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
throw v0
:try_end_65
.catchall {:try_start_59 .. :try_end_65} :catchall_38
:catchall_65
move-exception v0
goto :goto_61
:catch_67
move-exception v0
goto :goto_3f
:catch_69
move-exception v0
move-object v0, v1
goto :goto_34
.end method
.method public static a(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/d;)V
.registers 4
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p0, v0}, Lcom/facebook/c;->a(Landroid/content/Context;Ljava/util/Map;)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/util/Map;)V
.registers 10
sget-object v3, Lcom/facebook/c;->a:Ljava/lang/Object;
monitor-enter v3
:try_start_3
invoke-static {p0}, Lcom/facebook/c;->a(Landroid/content/Context;)Lcom/facebook/c;
move-result-object v4
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_f
:goto_f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_52
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/d;
invoke-virtual {v1}, Lcom/facebook/d;->b()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v5
if-eqz v5, :cond_f
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
iget-object v5, v4, Lcom/facebook/c;->c:Ljava/util/HashMap;
invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_43
iget-object v5, v4, Lcom/facebook/c;->c:Ljava/util/HashMap;
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_43
iget-object v5, v4, Lcom/facebook/c;->c:Ljava/util/HashMap;
invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:try_end_4e
.catchall {:try_start_3 .. :try_end_4e} :catchall_4f
goto :goto_f
:catchall_4f
move-exception v0
monitor-exit v3
throw v0
:cond_52
const/4 v2, 0x0
:try_start_53
new-instance v1, Ljava/io/ObjectOutputStream;
new-instance v0, Ljava/io/BufferedOutputStream;
iget-object v5, v4, Lcom/facebook/c;->b:Landroid/content/Context;
const-string v6, "AppEventsLogger.persistedevents"
const/4 v7, 0x0
invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
move-result-object v5
invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_66
.catchall {:try_start_53 .. :try_end_66} :catchall_90
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_66} :catch_70
:try_start_66
iget-object v0, v4, Lcom/facebook/c;->c:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
:try_start_6b
:try_end_6b
.catchall {:try_start_66 .. :try_end_6b} :catchall_96
.catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_98
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
:goto_6e
monitor-exit v3
:try_end_6f
.catchall {:try_start_6b .. :try_end_6f} :catchall_4f
return-void
:catch_70
move-exception v0
move-object v1, v2
:goto_72
:try_start_72
invoke-static {}, Lcom/facebook/AppEventsLogger;->f()Ljava/lang/String;
move-result-object v2
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Got unexpected exception: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_start_8c
:try_end_8c
.catchall {:try_start_72 .. :try_end_8c} :catchall_96
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto :goto_6e
:catchall_90
move-exception v0
move-object v1, v2
:goto_92
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
throw v0
:try_end_96
.catchall {:try_start_8c .. :try_end_96} :catchall_4f
:catchall_96
move-exception v0
goto :goto_92
:catch_98
move-exception v0
goto :goto_72
.end method
.method public final a(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Ljava/util/List;
.registers 3
iget-object v0, p0, Lcom/facebook/c;->c:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
return-object v0
.end method
.method public final a()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/facebook/c;->c:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method