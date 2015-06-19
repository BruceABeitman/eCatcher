.class public final Lcom/spotify/mobile/android/b/a;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Ljava/util/Set;)Ljava/lang/String;
.registers 12
const-string v0, "Don\'t pass paths as null"
invoke-static {p0, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v5, 0x0
const-wide/16 v3, 0x0
invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_c
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_18
new-instance v1, Lcom/spotify/mobile/android/util/db;
invoke-direct {v1, v0}, Lcom/spotify/mobile/android/util/db;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/db;->b()J
move-result-wide v7
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/db;->a()J
:try_end_24
.catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_31
move-result-wide v1
mul-long/2addr v1, v7
cmp-long v7, v1, v3
if-lez v7, :cond_33
move-wide v9, v1
move-object v2, v0
move-wide v0, v9
:goto_2d
move-wide v3, v0
move-object v5, v2
goto :goto_c
:cond_30
return-object v5
:catch_31
move-exception v0
goto :goto_c
:cond_33
move-wide v0, v3
move-object v2, v5
goto :goto_2d
.end method