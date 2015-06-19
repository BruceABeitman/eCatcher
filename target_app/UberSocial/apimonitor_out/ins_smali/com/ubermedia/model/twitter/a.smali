.class public Lcom/ubermedia/model/twitter/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:J
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Lcom/ubermedia/model/twitter/b;
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ubermedia/model/twitter/b;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/ubermedia/model/twitter/a;->a:J
iput-object p3, p0, Lcom/ubermedia/model/twitter/a;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/ubermedia/model/twitter/a;->c:Ljava/lang/String;
iput-object p5, p0, Lcom/ubermedia/model/twitter/a;->d:Ljava/lang/String;
iput-object p6, p0, Lcom/ubermedia/model/twitter/a;->e:Lcom/ubermedia/model/twitter/b;
return-void
.end method
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_3
const-string v0, "name"
invoke-static {v0, p1}, Lcom/ubermedia/model/twitter/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/model/twitter/a;->b:Ljava/lang/String;
const-string v0, "id_str"
invoke-static {v0, p1}, Lcom/ubermedia/model/twitter/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/model/twitter/a;->c:Ljava/lang/String;
const-string v0, "id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/ubermedia/model/twitter/a;->a:J
new-instance v0, Lcom/ubermedia/model/twitter/b;
const-string v1, "connections"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-direct {v0, v1}, Lcom/ubermedia/model/twitter/b;-><init>(Lorg/json/JSONArray;)V
iput-object v0, p0, Lcom/ubermedia/model/twitter/a;->e:Lcom/ubermedia/model/twitter/b;
const-string v0, "screen_name"
invoke-static {v0, p1}, Lcom/ubermedia/model/twitter/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/model/twitter/a;->d:Ljava/lang/String;
:try_end_30
.catch Lorg/json/JSONException; {:try_start_3 .. :try_end_30} :catch_31
return-void
:catch_31
move-exception v0
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Json parser failed in FriendshipStatus"
const/4 v2, 0x4
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
.end method
.method protected static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.registers 5
invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v0, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x9
if-ge v0, v2, :cond_1e
new-instance v0, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
goto :goto_d
:cond_1e
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
goto :goto_d
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/model/twitter/a;->b:Ljava/lang/String;
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/model/twitter/a;->c:Ljava/lang/String;
return-object v0
.end method
.method public c()J
.registers 3
iget-wide v0, p0, Lcom/ubermedia/model/twitter/a;->a:J
return-wide v0
.end method
.method public d()Lcom/ubermedia/model/twitter/b;
.registers 2
iget-object v0, p0, Lcom/ubermedia/model/twitter/a;->e:Lcom/ubermedia/model/twitter/b;
return-object v0
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/model/twitter/a;->d:Ljava/lang/String;
return-object v0
.end method