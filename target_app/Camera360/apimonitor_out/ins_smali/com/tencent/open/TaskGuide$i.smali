.class  Lcom/tencent/open/TaskGuide$i;
.super Ljava/lang/Object;
.source "ProGuard"
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:[Lcom/tencent/open/TaskGuide$e;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lorg/json/JSONObject;)Lcom/tencent/open/TaskGuide$i;
.registers 12
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
new-instance v7, Lcom/tencent/open/TaskGuide$i;
invoke-direct {v7}, Lcom/tencent/open/TaskGuide$i;-><init>()V
const-string/jumbo v0, "task_info"
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "task_id"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v7, Lcom/tencent/open/TaskGuide$i;->a:Ljava/lang/String;
const-string/jumbo v1, "task_desc"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v7, Lcom/tencent/open/TaskGuide$i;->b:Ljava/lang/String;
const-string/jumbo v1, "step_info"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v9
invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
move-result v10
if-lez v10, :cond_33
new-array v0, v10, [Lcom/tencent/open/TaskGuide$e;
iput-object v0, v7, Lcom/tencent/open/TaskGuide$i;->c:[Lcom/tencent/open/TaskGuide$e;
:cond_33
const/4 v0, 0x0
move v8, v0
:goto_35
if-ge v8, v10, :cond_6b
invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "step_no"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v1
const-string/jumbo v2, "status"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v6
const-string/jumbo v2, "step_desc"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "step_gift"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "end_time"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v4
new-instance v0, Lcom/tencent/open/TaskGuide$e;
invoke-direct/range {v0 .. v6}, Lcom/tencent/open/TaskGuide$e;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V
iget-object v1, v7, Lcom/tencent/open/TaskGuide$i;->c:[Lcom/tencent/open/TaskGuide$e;
aput-object v0, v1, v8
add-int/lit8 v0, v8, 0x1
move v8, v0
goto :goto_35
:cond_6b
move-object v0, v7
goto :goto_3
.end method
.method public a()Z
.registers 2
iget-object v0, p0, Lcom/tencent/open/TaskGuide$i;->a:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/tencent/open/TaskGuide$i;->c:[Lcom/tencent/open/TaskGuide$e;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/tencent/open/TaskGuide$i;->c:[Lcom/tencent/open/TaskGuide$e;
array-length v0, v0
if-lez v0, :cond_13
const/4 v0, 0x1
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method