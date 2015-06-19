.class public Lcom/a/a/a/ao;
.super Ljava/lang/Object;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Lorg/json/JSONObject;
.registers 7
const/4 v1, 0x0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v2, "Crashlytics"
const-string v3, "Reading cached settings..."
invoke-interface {v0, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_start_10
new-instance v0, Ljava/io/File;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v2
invoke-virtual {v2}, Lcom/a/a/a/cw;->g()Ljava/io/File;
move-result-object v2
const-string v3, "com.crashlytics.settings.json"
invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_3a
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_2a
:try_end_2a
.catchall {:try_start_10 .. :try_end_2a} :catchall_63
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_4b
invoke-static {v2}, Lcom/a/a/a/bc;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v3
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
:try_end_33
.catchall {:try_start_2a .. :try_end_33} :catchall_6a
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_6d
move-object v1, v2
:goto_34
const-string v2, "Error while closing settings cache file."
invoke-static {v1, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:goto_39
return-object v0
:try_start_3a
:cond_3a
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v2, "Crashlytics"
const-string v3, "No cached settings found."
invoke-interface {v0, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_49
.catchall {:try_start_3a .. :try_end_49} :catchall_63
.catch Ljava/lang/Exception; {:try_start_3a .. :try_end_49} :catch_4b
move-object v0, v1
goto :goto_34
:catch_4b
move-exception v0
move-object v2, v1
:goto_4d
:try_start_4d
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v3
const-string v4, "Crashlytics"
const-string v5, "Failed to fetch cached settings"
invoke-interface {v3, v4, v5, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_5c
.catchall {:try_start_4d .. :try_end_5c} :catchall_6a
const-string v0, "Error while closing settings cache file."
invoke-static {v2, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
move-object v0, v1
goto :goto_39
:catchall_63
move-exception v0
:goto_64
const-string v2, "Error while closing settings cache file."
invoke-static {v1, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
:catchall_6a
move-exception v0
move-object v1, v2
goto :goto_64
:catch_6d
move-exception v0
goto :goto_4d
.end method
.method public a(JLorg/json/JSONObject;)V
.registers 9
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
const-string v2, "Writing settings to cache file..."
invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p3, :cond_3a
const/4 v2, 0x0
:try_start_12
const-string v0, "expires_at"
invoke-virtual {p3, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
new-instance v1, Ljava/io/FileWriter;
new-instance v0, Ljava/io/File;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->g()Ljava/io/File;
move-result-object v3
const-string v4, "com.crashlytics.settings.json"
invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
:try_start_2b
:try_end_2b
.catchall {:try_start_12 .. :try_end_2b} :catchall_52
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2b} :catch_3b
invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
:try_end_35
.catchall {:try_start_2b .. :try_end_35} :catchall_59
.catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_5c
const-string v0, "Failed to close settings writer."
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:goto_3a
:cond_3a
return-void
:catch_3b
move-exception v0
move-object v1, v2
:try_start_3d
:goto_3d
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v2
invoke-virtual {v2}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v2
const-string v3, "Crashlytics"
const-string v4, "Failed to cache settings"
invoke-interface {v2, v3, v4, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_4c
.catchall {:try_start_3d .. :try_end_4c} :catchall_59
const-string v0, "Failed to close settings writer."
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
goto :goto_3a
:catchall_52
move-exception v0
:goto_53
const-string v1, "Failed to close settings writer."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
:catchall_59
move-exception v0
move-object v2, v1
goto :goto_53
:catch_5c
move-exception v0
goto :goto_3d
.end method