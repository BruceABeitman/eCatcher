.class public Lcom/umeng/analytics/a/n;
.super Ljava/lang/Object;
.source "Time.java"
.field public g:Ljava/lang/String;
.field public h:Ljava/lang/String;
.field protected final i:Ljava/lang/String;
.field protected final j:Ljava/lang/String;
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "date"
iput-object v0, p0, Lcom/umeng/analytics/a/n;->i:Ljava/lang/String;
const-string/jumbo v0, "time"
iput-object v0, p0, Lcom/umeng/analytics/a/n;->j:Ljava/lang/String;
invoke-static {}, Lcom/umeng/common/util/g;->a()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, " "
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
aget-object v1, v1, v2
iput-object v1, p0, Lcom/umeng/analytics/a/n;->g:Ljava/lang/String;
const-string/jumbo v1, " "
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
aget-object v0, v0, v1
iput-object v0, p0, Lcom/umeng/analytics/a/n;->h:Ljava/lang/String;
return-void
.end method
.method public a(Lorg/json/JSONObject;)V
.registers 3
const-string/jumbo v0, "date"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/analytics/a/n;->g:Ljava/lang/String;
const-string/jumbo v0, "time"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/analytics/a/n;->h:Ljava/lang/String;
return-void
.end method
.method public a()Z
.registers 3
iget-object v0, p0, Lcom/umeng/analytics/a/n;->g:Ljava/lang/String;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/umeng/analytics/a/n;->h:Ljava/lang/String;
if-nez v0, :cond_13
:cond_8
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "Date or Time is not initialized"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_12
return v0
:cond_13
const/4 v0, 0x1
goto :goto_12
.end method
.method public b(Lorg/json/JSONObject;)V
.registers 4
const-string/jumbo v0, "date"
iget-object v1, p0, Lcom/umeng/analytics/a/n;->g:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v0, "time"
iget-object v1, p0, Lcom/umeng/analytics/a/n;->h:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
return-void
.end method