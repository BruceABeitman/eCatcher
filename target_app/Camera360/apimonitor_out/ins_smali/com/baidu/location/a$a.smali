.class  Lcom/baidu/location/a$a;
.super Ljava/lang/Object;
.field final synthetic a:Lcom/baidu/location/a;
.field public do:Lcom/baidu/location/LocationClientOption;
.field public for:Landroid/os/Messenger;
.field public if:I
.field public int:Ljava/lang/String;
.method public constructor <init>(Lcom/baidu/location/a;Landroid/os/Message;)V
.registers 6
const/4 v0, 0x0
iput-object p1, p0, Lcom/baidu/location/a$a;->a:Lcom/baidu/location/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/baidu/location/a$a;->int:Ljava/lang/String;
iput-object v0, p0, Lcom/baidu/location/a$a;->for:Landroid/os/Messenger;
new-instance v0, Lcom/baidu/location/LocationClientOption;
invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V
iput-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
const/4 v0, 0x0
iput v0, p0, Lcom/baidu/location/a$a;->if:I
iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
iput-object v0, p0, Lcom/baidu/location/a$a;->for:Landroid/os/Messenger;
invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-string/jumbo v1, "packName"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/a$a;->int:Ljava/lang/String;
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "prodName"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
iget-object v0, p0, Lcom/baidu/location/a$a;->int:Ljava/lang/String;
sput-object v0, Lcom/baidu/location/j;->ak:Ljava/lang/String;
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
sput-object v0, Lcom/baidu/location/j;->b:Ljava/lang/String;
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "coorType"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "addrType"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
sput-object v0, Lcom/baidu/location/j;->A:Ljava/lang/String;
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "openGPS"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, v0, Lcom/baidu/location/LocationClientOption;->case:Z
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "scanSpan"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
iput v1, v0, Lcom/baidu/location/LocationClientOption;->int:I
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "timeOut"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
iput v1, v0, Lcom/baidu/location/LocationClientOption;->long:I
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "priority"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
iput v1, v0, Lcom/baidu/location/LocationClientOption;->goto:I
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "location_change_notify"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, v0, Lcom/baidu/location/LocationClientOption;->void:Z
return-void
.end method
.method private a(I)V
.registers 4
const/4 v0, 0x0
invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
:try_start_5
iget-object v1, p0, Lcom/baidu/location/a$a;->for:Landroid/os/Messenger;
if-eqz v1, :cond_e
iget-object v1, p0, Lcom/baidu/location/a$a;->for:Landroid/os/Messenger;
invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:cond_e
const/4 v0, 0x0
iput v0, p0, Lcom/baidu/location/a$a;->if:I
:cond_11
:try_end_11
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12
:goto_11
return-void
:catch_12
move-exception v0
instance-of v0, v0, Landroid/os/DeadObjectException;
if-eqz v0, :cond_11
iget v0, p0, Lcom/baidu/location/a$a;->if:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/baidu/location/a$a;->if:I
goto :goto_11
.end method
.method private a(ILjava/lang/String;Ljava/lang/String;)V
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
:try_start_10
iget-object v0, p0, Lcom/baidu/location/a$a;->for:Landroid/os/Messenger;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/baidu/location/a$a;->for:Landroid/os/Messenger;
invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:cond_19
const/4 v0, 0x0
iput v0, p0, Lcom/baidu/location/a$a;->if:I
:goto_1c
:cond_1c
:try_end_1c
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1d
return-void
:catch_1d
move-exception v0
instance-of v0, v0, Landroid/os/DeadObjectException;
if-eqz v0, :cond_1c
iget v0, p0, Lcom/baidu/location/a$a;->if:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/baidu/location/a$a;->if:I
goto :goto_1c
.end method
.method static synthetic a(Lcom/baidu/location/a$a;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/baidu/location/a$a;->a(I)V
return-void
.end method
.method public a()V
.registers 2
const/16 v0, 0x17
invoke-direct {p0, v0}, Lcom/baidu/location/a$a;->a(I)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->void:Z
const/4 v1, 0x1
if-ne v0, v1, :cond_a
invoke-virtual {p0, p1}, Lcom/baidu/location/a$a;->if(Ljava/lang/String;)V
:cond_a
return-void
.end method
.method public a(Ljava/lang/String;I)V
.registers 16
const/4 v8, 0x1
const/4 v0, 0x0
const-wide/16 v11, 0x1
invoke-static {}, Lcom/baidu/location/a;->try()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "decode..."
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
if-nez p1, :cond_11
:goto_10
return-void
:cond_11
const/16 v1, 0x15
if-ne p2, v1, :cond_1d
const/16 v1, 0x1b
const-string/jumbo v2, "locStr"
invoke-direct {p0, v1, v2, p1}, Lcom/baidu/location/a$a;->a(ILjava/lang/String;Ljava/lang/String;)V
:cond_1d
iget-object v1, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
if-eqz v1, :cond_173
iget-object v1, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
const-string/jumbo v2, "gcj02"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_173
const-string/jumbo v1, "x\":\""
const-string/jumbo v2, "\""
invoke-static {p1, v1, v2}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
move-result-wide v1
const-string/jumbo v3, "y\":\""
const-string/jumbo v4, "\""
invoke-static {p1, v3, v4}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
move-result-wide v3
invoke-static {}, Lcom/baidu/location/a;->try()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "decode..."
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ":"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
cmpl-double v5, v1, v11
if-eqz v5, :cond_d7
cmpl-double v5, v3, v11
if-eqz v5, :cond_d7
iget-object v5, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v5, v5, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
invoke-static {v1, v2, v3, v4, v5}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D
move-result-object v1
const-string/jumbo v2, "x\":\""
const-string/jumbo v3, "\""
aget-wide v4, v1, v0
invoke-static {p1, v2, v3, v4, v5}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "y\":\""
const-string/jumbo v4, "\""
aget-wide v5, v1, v8
invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;
move-result-object p1
invoke-static {}, Lcom/baidu/location/a;->try()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "decode2 ..."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
aget-wide v4, v1, v0
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ":"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
aget-wide v4, v1, v8
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/baidu/location/a;->try()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "decode3 ..."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:cond_d7
iget-object v1, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->else:Z
if-eqz v1, :cond_173
:try_start_dd
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "result"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
const-string/jumbo v3, "content"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v3
const-string/jumbo v4, "error"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
const/16 v4, 0xa1
if-ne v2, v4, :cond_173
const-string/jumbo v2, "poi"
invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
const-string/jumbo v4, "p"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
:cond_10d
:goto_10d
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v5
if-ge v0, v5, :cond_15d
invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
const-string/jumbo v6, "x"
invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v6
const-string/jumbo v8, "y"
invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v8
cmpl-double v10, v6, v11
if-eqz v10, :cond_10d
cmpl-double v10, v8, v11
if-eqz v10, :cond_10d
iget-object v10, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v10, v10, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
invoke-static {v6, v7, v8, v9, v10}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D
move-result-object v6
const-string/jumbo v7, "x"
const/4 v8, 0x0
aget-wide v8, v6, v8
invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v8
invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v7, "y"
const/4 v8, 0x1
aget-wide v8, v6, v8
invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
add-int/lit8 v0, v0, 0x1
goto :goto_10d
:cond_15d
const-string/jumbo v0, "p"
invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v0, "poi"
invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v0, "content"
invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
:try_end_172
.catch Lorg/json/JSONException; {:try_start_dd .. :try_end_172} :catch_17b
move-result-object p1
:cond_173
:goto_173
const-string/jumbo v0, "locStr"
invoke-direct {p0, p2, v0, p1}, Lcom/baidu/location/a$a;->a(ILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_10
:catch_17b
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_173
.end method
.method public if()V
.registers 3
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->void:Z
const/4 v1, 0x1
if-ne v0, v1, :cond_10
sget-boolean v0, Lcom/baidu/location/j;->ab:Z
if-eqz v0, :cond_11
const/16 v0, 0x36
invoke-direct {p0, v0}, Lcom/baidu/location/a$a;->a(I)V
:goto_10
:cond_10
return-void
:cond_11
const/16 v0, 0x37
invoke-direct {p0, v0}, Lcom/baidu/location/a$a;->a(I)V
goto :goto_10
.end method
.method public if(Ljava/lang/String;)V
.registers 13
const/4 v10, 0x1
const/4 v9, 0x0
const-wide/16 v7, 0x1
const-wide/16 v5, 0x0
if-nez p1, :cond_9
:goto_8
return-void
:cond_9
const/16 v0, 0x1b
const-string/jumbo v1, "locStr"
invoke-direct {p0, v0, v1, p1}, Lcom/baidu/location/a$a;->a(ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
const-string/jumbo v1, "gcj02"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_6c
const-string/jumbo v0, "x\":\""
const-string/jumbo v1, "\""
invoke-static {p1, v0, v1}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
move-result-wide v0
const-string/jumbo v2, "y\":\""
const-string/jumbo v3, "\""
invoke-static {p1, v2, v3}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
move-result-wide v2
cmpl-double v4, v0, v7
if-eqz v4, :cond_6c
cmpl-double v4, v2, v7
if-eqz v4, :cond_6c
iget-object v4, p0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v4, v4, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D
move-result-object v0
aget-wide v1, v0, v9
cmpl-double v1, v1, v5
if-gtz v1, :cond_54
aget-wide v1, v0, v10
cmpl-double v1, v1, v5
if-lez v1, :cond_6c
:cond_54
const-string/jumbo v1, "x\":\""
const-string/jumbo v2, "\""
aget-wide v3, v0, v9
invoke-static {p1, v1, v2, v3, v4}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "y\":\""
const-string/jumbo v3, "\""
aget-wide v4, v0, v10
invoke-static {v1, v2, v3, v4, v5}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;
move-result-object p1
:cond_6c
const/16 v0, 0x15
const-string/jumbo v1, "locStr"
invoke-direct {p0, v0, v1, p1}, Lcom/baidu/location/a$a;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_8
.end method