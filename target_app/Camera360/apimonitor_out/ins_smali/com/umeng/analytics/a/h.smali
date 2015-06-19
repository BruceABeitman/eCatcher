.class public Lcom/umeng/analytics/a/h;
.super Lcom/umeng/analytics/a/l;
.source "Launch.java"
.implements Lcom/umeng/analytics/a/g;
.field  a:Lcom/umeng/analytics/a/o;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V
iput-object p2, p0, Lcom/umeng/analytics/a/h;->e:Ljava/lang/String;
invoke-static {p1}, Lcom/umeng/analytics/a/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/o;
move-result-object v0
iput-object v0, p0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/o;
return-void
.end method
.method public a(Lcom/umeng/analytics/a/o;)V
.registers 2
iput-object p1, p0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/o;
return-void
.end method
.method public a(Lorg/json/JSONObject;)V
.registers 3
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
:try_start_3
invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->a(Lorg/json/JSONObject;)V
invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/h;->d(Lorg/json/JSONObject;)V
:try_end_9
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a
goto :goto_2
:catch_a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_2
.end method
.method public a()Z
.registers 3
iget-object v0, p0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/o;
if-nez v0, :cond_11
sget-boolean v0, Lcom/umeng/analytics/f;->i:Z
if-eqz v0, :cond_11
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "missing location info in Launch"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_11
invoke-super {p0}, Lcom/umeng/analytics/a/l;->a()Z
move-result v0
return v0
.end method
.method public b()Lorg/json/JSONObject;
.registers 4
const/4 v1, 0x0
:try_start_1
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_6
:try_end_6
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_a
invoke-virtual {p0, v0}, Lcom/umeng/analytics/a/h;->b(Lorg/json/JSONObject;)V
:try_end_9
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_12
:goto_9
return-object v0
:catch_a
move-exception v0
move-object v2, v0
move-object v0, v1
move-object v1, v2
:goto_e
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_9
:catch_12
move-exception v1
goto :goto_e
.end method
.method public b(Lorg/json/JSONObject;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/h;->c(Lorg/json/JSONObject;)V
invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->b(Lorg/json/JSONObject;)V
return-void
.end method
.method public c(Lorg/json/JSONObject;)V
.registers 3
iget-object v0, p0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/o;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/o;
invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/o;->b(Lorg/json/JSONObject;)V
:cond_9
return-void
.end method
.method public d(Lorg/json/JSONObject;)V
.registers 4
new-instance v0, Lcom/umeng/analytics/a/o;
invoke-direct {v0}, Lcom/umeng/analytics/a/o;-><init>()V
invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/o;->a(Lorg/json/JSONObject;)V
invoke-virtual {v0}, Lcom/umeng/analytics/a/o;->a()Z
move-result v1
if-eqz v1, :cond_10
iput-object v0, p0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/o;
:cond_10
return-void
.end method