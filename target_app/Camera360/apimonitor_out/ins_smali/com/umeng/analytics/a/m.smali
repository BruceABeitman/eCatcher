.class public Lcom/umeng/analytics/a/m;
.super Lcom/umeng/analytics/a/l;
.source "Terminate.java"
.implements Lcom/umeng/analytics/a/g;
.field private static final k:Ljava/lang/String; = "duration"
.field private static final l:Ljava/lang/String; = "activities"
.field private static final m:Ljava/lang/String; = "terminate_time"
.field public a:Lcom/umeng/analytics/a/o;
.field public b:Lcom/umeng/analytics/a/p;
.field public c:J
.field private d:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;
iput-object p1, p0, Lcom/umeng/analytics/a/m;->e:Ljava/lang/String;
return-void
.end method
.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;JJ)Landroid/content/SharedPreferences$Editor;
.registers 19
sub-long v3, p4, p2
const-string/jumbo v2, "duration"
const-wide/16 v5, 0x0
invoke-interface {p0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v5
invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v7
sget-boolean v2, Lcom/umeng/analytics/f;->j:Z
if-eqz v2, :cond_6f
const-string/jumbo v2, "activities"
const-string/jumbo v8, ""
invoke-interface {p0, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v8, ""
invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :cond_3a
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, ";"
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:cond_3a
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "[%s,%d]"
const/4 v9, 0x2
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
aput-object p1, v9, v10
const/4 v10, 0x1
const-wide/16 v11, 0x3e8
div-long v11, v3, v11
invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v11
aput-object v11, v9, v10
invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string/jumbo v8, "activities"
invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v8, "activities"
invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_6f
const-string/jumbo v2, "duration"
add-long/2addr v3, v5
invoke-interface {v7, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v2, "terminate_time"
move-wide/from16 v0, p4
invoke-interface {v7, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-object v7
.end method
.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/a/m;
.registers 6
const/4 v0, 0x0
invoke-static {p0}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
const-string/jumbo v2, "session_id"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_f
:goto_e
return-object v0
:cond_f
new-instance v0, Lcom/umeng/analytics/a/m;
invoke-direct {v0, v2}, Lcom/umeng/analytics/a/m;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Lcom/umeng/analytics/a/o;->b(Landroid/content/Context;)Lcom/umeng/analytics/a/o;
move-result-object v2
if-eqz v2, :cond_22
invoke-virtual {v2}, Lcom/umeng/analytics/a/o;->a()Z
move-result v3
if-eqz v3, :cond_22
iput-object v2, v0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;
:cond_22
invoke-static {p0}, Lcom/umeng/analytics/a/p;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/p;
move-result-object v2
if-eqz v2, :cond_30
invoke-virtual {v2}, Lcom/umeng/analytics/a/p;->a()Z
move-result v3
if-eqz v3, :cond_30
iput-object v2, v0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;
:cond_30
invoke-static {v1}, Lcom/umeng/analytics/a/m;->c(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;
move-result-object v2
iput-object v2, v0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;
invoke-static {v1}, Lcom/umeng/analytics/a/m;->d(Landroid/content/SharedPreferences;)J
move-result-wide v2
iput-wide v2, v0, Lcom/umeng/analytics/a/m;->c:J
invoke-static {v1}, Lcom/umeng/analytics/a/m;->b(Landroid/content/SharedPreferences;)[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_50
array-length v3, v2
const/4 v4, 0x2
if-ne v3, v4, :cond_50
const/4 v3, 0x0
aget-object v3, v2, v3
iput-object v3, v0, Lcom/umeng/analytics/a/m;->g:Ljava/lang/String;
const/4 v3, 0x1
aget-object v2, v2, v3
iput-object v2, v0, Lcom/umeng/analytics/a/m;->h:Ljava/lang/String;
:cond_50
invoke-static {v1}, Lcom/umeng/analytics/a/m;->a(Landroid/content/SharedPreferences;)V
goto :goto_e
.end method
.method private static a(Landroid/content/SharedPreferences;)V
.registers 5
invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "duration"
const-wide/16 v2, 0x0
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v1, "activities"
const-string/jumbo v2, ""
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method private static b(Landroid/content/SharedPreferences;)[Ljava/lang/String;
.registers 5
const-wide/16 v2, 0x0
const-string/jumbo v0, "terminate_time"
invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
cmp-long v2, v0, v2
if-gtz v2, :cond_f
const/4 v0, 0x0
:goto_e
return-object v0
:cond_f
new-instance v2, Ljava/util/Date;
invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V
invoke-static {v2}, Lcom/umeng/common/b;->a(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, " "
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method private static c(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;
.registers 7
const-string/jumbo v0, "activities"
const-string/jumbo v1, ""
invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v0, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_41
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:try_start_18
const-string/jumbo v2, ";"
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const/4 v1, 0x0
:goto_20
array-length v3, v2
:try_end_21
.catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_3c
if-lt v1, v3, :cond_2a
:goto_23
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_41
:goto_29
return-object v0
:try_start_2a
:cond_2a
aget-object v3, v2, v1
new-instance v4, Lcom/umeng/analytics/a/k;
new-instance v5, Lorg/json/JSONArray;
invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
invoke-direct {v4, v5}, Lcom/umeng/analytics/a/k;-><init>(Lorg/json/JSONArray;)V
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_39
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_39} :catch_3c
add-int/lit8 v1, v1, 0x1
goto :goto_20
:catch_3c
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_23
:cond_41
const/4 v0, 0x0
goto :goto_29
.end method
.method private c(Lorg/json/JSONObject;)V
.registers 3
iget-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;
invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/p;->b(Lorg/json/JSONObject;)V
:cond_9
return-void
.end method
.method private static d(Landroid/content/SharedPreferences;)J
.registers 5
const-string/jumbo v0, "duration"
const-wide/16 v1, 0x0
invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
return-wide v0
.end method
.method private d(Lorg/json/JSONObject;)V
.registers 3
iget-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;
invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/o;->b(Lorg/json/JSONObject;)V
:cond_9
return-void
.end method
.method private e(Lorg/json/JSONObject;)V
.registers 4
new-instance v0, Lcom/umeng/analytics/a/o;
invoke-direct {v0}, Lcom/umeng/analytics/a/o;-><init>()V
invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/o;->a(Lorg/json/JSONObject;)V
invoke-virtual {v0}, Lcom/umeng/analytics/a/o;->a()Z
move-result v1
if-eqz v1, :cond_10
iput-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;
:cond_10
return-void
.end method
.method private f(Lorg/json/JSONObject;)V
.registers 4
new-instance v0, Lcom/umeng/analytics/a/p;
invoke-direct {v0}, Lcom/umeng/analytics/a/p;-><init>()V
invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/p;->a(Lorg/json/JSONObject;)V
invoke-virtual {v0}, Lcom/umeng/analytics/a/p;->a()Z
move-result v1
if-eqz v1, :cond_10
iput-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;
:cond_10
return-void
.end method
.method private g(Lorg/json/JSONObject;)V
.registers 6
const-string/jumbo v0, "activities"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_17
const-string/jumbo v0, "activities"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
const/4 v0, 0x0
:goto_11
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
if-lt v0, v2, :cond_18
:cond_17
return-void
:cond_18
new-instance v2, Lcom/umeng/analytics/a/k;
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
move-result-object v3
invoke-direct {v2, v3}, Lcom/umeng/analytics/a/k;-><init>(Lorg/json/JSONArray;)V
iget-object v3, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_11
.end method
.method private h(Lorg/json/JSONObject;)V
.registers 7
iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_14
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_21
const-string/jumbo v0, "activities"
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_8
:cond_21
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/analytics/a/k;
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
iget-object v4, v0, Lcom/umeng/analytics/a/k;->a:Ljava/lang/String;
invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
iget v0, v0, Lcom/umeng/analytics/a/k;->b:I
invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_14
.end method
.method public a(Lorg/json/JSONObject;)V
.registers 4
:try_start_0
invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->a(Lorg/json/JSONObject;)V
const-string/jumbo v0, "duration"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J
invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->f(Lorg/json/JSONObject;)V
invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->e(Lorg/json/JSONObject;)V
invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->g(Lorg/json/JSONObject;)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16
:goto_15
return-void
:catch_16
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_15
.end method
.method public a()Z
.registers 5
iget-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;
if-nez v0, :cond_11
sget-boolean v0, Lcom/umeng/analytics/f;->i:Z
if-eqz v0, :cond_11
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "missing location info in Terminate"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_11
iget-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;
if-nez v0, :cond_1e
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "missing receive and transport Traffic in Terminate "
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_1e
iget-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-gtz v0, :cond_31
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "missing Duration info in Terminate"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_30
return v0
:cond_31
iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_46
:cond_3d
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "missing Activities info in Terminate"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_46
invoke-super {p0}, Lcom/umeng/analytics/a/l;->a()Z
move-result v0
goto :goto_30
.end method
.method public b(Lorg/json/JSONObject;)V
.registers 6
invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->b(Lorg/json/JSONObject;)V
iget-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_13
const-string/jumbo v0, "duration"
iget-wide v1, p0, Lcom/umeng/analytics/a/m;->c:J
invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
:cond_13
invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->c(Lorg/json/JSONObject;)V
invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->d(Lorg/json/JSONObject;)V
invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->h(Lorg/json/JSONObject;)V
return-void
.end method