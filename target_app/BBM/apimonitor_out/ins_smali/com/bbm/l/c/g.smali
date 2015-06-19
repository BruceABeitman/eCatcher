.class final Lcom/bbm/l/c/g;
.super Ljava/lang/Object;
.source "AsyncStickerPackListFetcher.java"
.implements Lcom/bbm/util/bu;
.field final synthetic a:Lcom/bbm/l/c/i;
.method constructor <init>(Lcom/bbm/l/c/i;)V
.registers 2
iput-object p1, p0, Lcom/bbm/l/c/g;->a:Lcom/bbm/l/c/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lcom/bbm/l/c/g;->a:Lcom/bbm/l/c/i;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/bbm/l/c/g;->a:Lcom/bbm/l/c/i;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, v1}, Lcom/bbm/l/c/i;->a(Ljava/util/List;)V
:cond_e
return-void
.end method
.method public final a([BLjava/util/Map;)V
.registers 16
const-wide/32 v2, 0x240c8400
const-wide/32 v4, 0x36ee80
const/4 v12, 0x0
if-nez p1, :cond_18
iget-object v0, p0, Lcom/bbm/l/c/g;->a:Lcom/bbm/l/c/i;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/bbm/l/c/g;->a:Lcom/bbm/l/c/i;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, v1}, Lcom/bbm/l/c/i;->a(Ljava/util/List;)V
:cond_17
:goto_17
return-void
:cond_18
const/4 v0, 0x0
new-instance v1, Ljava/io/ByteArrayInputStream;
invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-static {v1}, Lcom/bbm/util/ca;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_174
:try_start_24
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/bbm/l/b/j;->a(Lorg/json/JSONObject;)Ljava/util/List;
:try_end_2c
.catchall {:try_start_24 .. :try_end_2c} :catchall_da
.catch Lorg/json/JSONException; {:try_start_24 .. :try_end_2c} :catch_aa
move-result-object v0
move-object v6, v0
:goto_2e
if-eqz v6, :cond_169
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_169
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v7
const-string v0, "X-BBM-Goods-Refresh"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_125
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_125
const/4 v1, 0x0
:try_start_53
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v8
const-wide/32 v0, 0xea60
mul-long/2addr v0, v8
new-instance v10, Ljava/lang/StringBuilder;
const-string v11, "STICKERS: X-BBM-Goods-Refresh: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
const/4 v9, 0x0
new-array v9, v9, [Ljava/lang/Object;
invoke-static {v8, v9}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-wide/16 v8, 0x1
cmp-long v8, v0, v8
if-gez v8, :cond_107
move-wide v0, v2
:goto_81
:cond_81
const-string v2, "stickers_fetch_period"
invoke-interface {v7, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
:try_end_86
.catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_86} :catch_10e
:goto_86
const-wide/16 v0, 0x0
invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
move-wide v1, v0
:goto_8d
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_14d
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/b/j;
:try_start_99
iget-object v0, v0, Lcom/bbm/l/b/l;->e:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
:try_end_a2
.catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_a2} :catch_136
move-result-wide v3
cmp-long v0, v3, v1
if-lez v0, :cond_133
move-wide v0, v3
:goto_a8
move-wide v1, v0
goto :goto_8d
:catch_aa
move-exception v0
:try_start_ab
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:try_end_ae
.catchall {:try_start_ab .. :try_end_ae} :catchall_da
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/bbm/l/c/e;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " Could not parse sticker packs"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v12, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/l/c/g;->a:Lcom/bbm/l/c/i;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/bbm/l/c/g;->a:Lcom/bbm/l/c/i;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, v1}, Lcom/bbm/l/c/i;->a(Ljava/util/List;)V
goto/16 :goto_17
:catchall_da
move-exception v0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/bbm/l/c/e;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " Could not parse sticker packs"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v12, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/l/c/g;->a:Lcom/bbm/l/c/i;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/bbm/l/c/g;->a:Lcom/bbm/l/c/i;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, v1}, Lcom/bbm/l/c/i;->a(Ljava/util/List;)V
goto/16 :goto_17
:cond_107
cmp-long v2, v0, v4
if-gez v2, :cond_81
move-wide v0, v4
goto/16 :goto_81
:catch_10e
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "long parse error: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v12, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_86
:cond_125
const-string v0, "stickers_fetch_period"
invoke-interface {v7, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v0, "STICKERS: X-BBM-Goods-Refresh header not found"
new-array v1, v12, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_86
:cond_133
move-wide v0, v1
goto/16 :goto_a8
:catch_136
move-exception v0
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "long parse error: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v3, v12, [Ljava/lang/Object;
invoke-static {v0, v3}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_8d
:cond_14d
new-instance v0, Ljava/lang/StringBuilder;
const-string v3, "STICKERS: PREF_STICKERS_NEWEST_PUBLISH_TIME "
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v3, v12, [Ljava/lang/Object;
invoke-static {v0, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "stickers_newest_publish_time"
invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
:cond_169
iget-object v0, p0, Lcom/bbm/l/c/g;->a:Lcom/bbm/l/c/i;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/bbm/l/c/g;->a:Lcom/bbm/l/c/i;
invoke-interface {v0, v6}, Lcom/bbm/l/c/i;->a(Ljava/util/List;)V
goto/16 :goto_17
:cond_174
move-object v6, v0
goto/16 :goto_2e
.end method