.class public Lcom/umeng/common/net/o;
.super Lcom/umeng/common/net/t;
.source "ReportResponse.java"
.field public a:Lcom/umeng/common/net/o$a;
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 4
invoke-direct {p0, p1}, Lcom/umeng/common/net/t;-><init>(Lorg/json/JSONObject;)V
const-string/jumbo v0, "ok"
const-string/jumbo v1, "status"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_23
const-string/jumbo v0, "ok"
const-string/jumbo v1, "success"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_28
:cond_23
sget-object v0, Lcom/umeng/common/net/o$a;->a:Lcom/umeng/common/net/o$a;
iput-object v0, p0, Lcom/umeng/common/net/o;->a:Lcom/umeng/common/net/o$a;
:goto_27
return-void
:cond_28
sget-object v0, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;
iput-object v0, p0, Lcom/umeng/common/net/o;->a:Lcom/umeng/common/net/o$a;
goto :goto_27
.end method