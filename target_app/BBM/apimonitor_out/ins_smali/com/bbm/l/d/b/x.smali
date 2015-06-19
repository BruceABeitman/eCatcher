.class public Lcom/bbm/l/d/b/x;
.super Ljava/lang/Object;
.source "Purchase.java"
.implements Lcom/bbm/l/d/c;
.field  h:Ljava/lang/String;
.field  i:Ljava/lang/String;
.field  j:Ljava/lang/String;
.field  k:Ljava/lang/String;
.field  l:J
.field public m:I
.field  n:Ljava/lang/String;
.field  o:Ljava/lang/String;
.field  p:Ljava/lang/String;
.field  q:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/bbm/l/d/b/x;->h:Ljava/lang/String;
iput-object p2, p0, Lcom/bbm/l/d/b/x;->p:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
iget-object v1, p0, Lcom/bbm/l/d/b/x;->p:Ljava/lang/String;
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "orderId"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/l/d/b/x;->i:Ljava/lang/String;
const-string v1, "packageName"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/l/d/b/x;->j:Ljava/lang/String;
const-string v1, "productId"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/l/d/b/x;->k:Ljava/lang/String;
const-string v1, "purchaseTime"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v1
iput-wide v1, p0, Lcom/bbm/l/d/b/x;->l:J
const-string v1, "purchaseState"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v1
iput v1, p0, Lcom/bbm/l/d/b/x;->m:I
const-string v1, "developerPayload"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/l/d/b/x;->n:Ljava/lang/String;
const-string v1, "token"
const-string v2, "purchaseToken"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/l/d/b/x;->o:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/l/d/b/x;->q:Ljava/lang/String;
return-void
.end method
.method public a()Lcom/bbm/l/d/d;
.registers 2
sget-object v0, Lcom/bbm/l/d/d;->b:Lcom/bbm/l/d/d;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "PurchaseInfo(type:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/l/d/b/x;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "):"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/bbm/l/d/b/x;->p:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method