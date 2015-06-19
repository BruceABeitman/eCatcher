.class public final Lcom/spotify/mobile/android/util/cg;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/util/Properties;
.field private b:Z
.method public constructor <init>()V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Properties;
invoke-direct {v0}, Ljava/util/Properties;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/cg;->a:Ljava/util/Properties;
const/4 v1, 0x0
:try_start_b
new-instance v0, Ljava/io/FileReader;
const-string v2, "/system/etc/spotify.preload"
invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
:try_start_12
:try_end_12
.catchall {:try_start_b .. :try_end_12} :catchall_39
.catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_12} :catch_1e
.catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_28
iget-object v1, p0, Lcom/spotify/mobile/android/util/cg;->a:Ljava/util/Properties;
invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/spotify/mobile/android/util/cg;->b:Z
:try_end_1a
.catchall {:try_start_12 .. :try_end_1a} :catchall_44
.catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1a} :catch_4e
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_1a} :catch_49
:try_start_1a
invoke-virtual {v0}, Ljava/io/FileReader;->close()V
:try_end_1d
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_40
:goto_1d
:cond_1d
return-void
:catch_1e
move-exception v0
move-object v0, v1
:goto_20
if-eqz v0, :cond_1d
:try_start_22
invoke-virtual {v0}, Ljava/io/FileReader;->close()V
:try_end_25
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26
goto :goto_1d
:catch_26
move-exception v0
goto :goto_1d
:catch_28
move-exception v0
:goto_29
:try_start_29
const-string v2, ""
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_31
.catchall {:try_start_29 .. :try_end_31} :catchall_39
if-eqz v1, :cond_1d
:try_start_33
invoke-virtual {v1}, Ljava/io/FileReader;->close()V
:try_end_36
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37
goto :goto_1d
:catch_37
move-exception v0
goto :goto_1d
:catchall_39
move-exception v0
:goto_3a
if-eqz v1, :cond_3f
:try_start_3c
invoke-virtual {v1}, Ljava/io/FileReader;->close()V
:try_end_3f
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_42
:goto_3f
:cond_3f
throw v0
:catch_40
move-exception v0
goto :goto_1d
:catch_42
move-exception v1
goto :goto_3f
:catchall_44
move-exception v1
move-object v4, v1
move-object v1, v0
move-object v0, v4
goto :goto_3a
:catch_49
move-exception v1
move-object v4, v1
move-object v1, v0
move-object v0, v4
goto :goto_29
:catch_4e
move-exception v1
goto :goto_20
.end method
.method public final a()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/cg;->a:Ljava/util/Properties;
const-string v1, "partner"
invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/cg;->a:Ljava/util/Properties;
const-string v1, "referrer"
invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cg;->b:Z
return v0
.end method