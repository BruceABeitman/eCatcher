.class public Lcom/umeng/analytics/onlineconfig/a$b;
.super Lcom/umeng/common/net/r;
.source "OnlineConfigAgent.java"
.implements Ljava/lang/Runnable;
.field  a:Landroid/content/Context;
.field final synthetic b:Lcom/umeng/analytics/onlineconfig/a;
.method public constructor <init>(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)V
.registers 4
iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;
invoke-direct {p0}, Lcom/umeng/common/net/r;-><init>()V
invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;
return-void
.end method
.method private a()V
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;
iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;
invoke-static {v0, v1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)Lorg/json/JSONObject;
move-result-object v0
new-instance v3, Lcom/umeng/analytics/onlineconfig/a$a;
iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;
invoke-direct {v3, v1, v0}, Lcom/umeng/analytics/onlineconfig/a$a;-><init>(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V
sget-object v4, Lcom/umeng/analytics/f;->s:[Ljava/lang/String;
const/4 v0, 0x0
move v1, v0
move-object v0, v2
:goto_15
array-length v5, v4
if-lt v1, v5, :cond_20
:cond_18
if-nez v0, :cond_32
iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;
invoke-static {v0, v2}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V
:goto_1f
return-void
:cond_20
aget-object v0, v4, v1
invoke-virtual {v3, v0}, Lcom/umeng/analytics/onlineconfig/a$a;->a(Ljava/lang/String;)V
const-class v0, Lcom/umeng/analytics/onlineconfig/b;
invoke-virtual {p0, v3, v0}, Lcom/umeng/analytics/onlineconfig/a$b;->execute(Lcom/umeng/common/net/s;Ljava/lang/Class;)Lcom/umeng/common/net/t;
move-result-object v0
check-cast v0, Lcom/umeng/analytics/onlineconfig/b;
if-nez v0, :cond_18
add-int/lit8 v1, v1, 0x1
goto :goto_15
:cond_32
const-string/jumbo v1, "MobclickAgent"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "response : "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v4, v0, Lcom/umeng/analytics/onlineconfig/b;->b:Z
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v1, v0, Lcom/umeng/analytics/onlineconfig/b;->b:Z
if-eqz v1, :cond_7a
iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;
invoke-static {v1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;)Lcom/umeng/analytics/onlineconfig/c;
move-result-object v1
if-eqz v1, :cond_64
iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;
invoke-static {v1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;)Lcom/umeng/analytics/onlineconfig/c;
move-result-object v1
iget v2, v0, Lcom/umeng/analytics/onlineconfig/b;->c:I
iget v3, v0, Lcom/umeng/analytics/onlineconfig/b;->d:I
int-to-long v3, v3
invoke-interface {v1, v2, v3, v4}, Lcom/umeng/analytics/onlineconfig/c;->a(IJ)V
:cond_64
iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;
iget-object v2, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;
iget-object v2, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/onlineconfig/a;->b(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;
iget-object v0, v0, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;
invoke-static {v1, v0}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V
goto :goto_1f
:cond_7a
iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;
invoke-static {v0, v2}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V
goto :goto_1f
.end method
.method public run()V
.registers 4
:try_start_0
invoke-direct {p0}, Lcom/umeng/analytics/onlineconfig/a$b;->a()V
:goto_3
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V
const-string/jumbo v1, "MobclickAgent"
const-string/jumbo v2, "reques update error"
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_3
.end method
.method public shouldCompressData()Z
.registers 2
const/4 v0, 0x0
return v0
.end method