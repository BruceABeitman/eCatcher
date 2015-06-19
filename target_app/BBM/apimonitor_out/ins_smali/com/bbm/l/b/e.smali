.class public final Lcom/bbm/l/b/e;
.super Ljava/lang/Object;
.source "WebAvatar.java"
.field  a:Ljava/lang/String;
.field  b:Lcom/bbm/l/b/f;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lorg/json/JSONObject;)Lcom/bbm/l/b/e;
.registers 4
const-string v0, "url"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/l/b/e;->a:Ljava/lang/String;
const-string v0, "position"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/l/b/f;->a(Ljava/lang/String;)Lcom/bbm/l/b/f;
move-result-object v0
iput-object v0, p0, Lcom/bbm/l/b/e;->b:Lcom/bbm/l/b/f;
return-object p0
.end method