.class public Lcom/umeng/analytics/onlineconfig/a$a;
.super Lcom/umeng/common/net/s;
.source "OnlineConfigAgent.java"
.field final synthetic a:Lcom/umeng/analytics/onlineconfig/a;
.field private e:Lorg/json/JSONObject;
.method public constructor <init>(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V
.registers 4
iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$a;->a:Lcom/umeng/analytics/onlineconfig/a;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/umeng/common/net/s;-><init>(Ljava/lang/String;)V
iput-object p2, p0, Lcom/umeng/analytics/onlineconfig/a$a;->e:Lorg/json/JSONObject;
return-void
.end method
.method public a()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$a;->e:Lorg/json/JSONObject;
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$a;->d:Ljava/lang/String;
return-object v0
.end method