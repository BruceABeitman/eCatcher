.class public final Lcom/bbm/d/a/b;
.super Ljava/lang/Object;
.source "JsonConstructableUtil.java"
.method public static a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lcom/bbm/util/bc;->a(Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-interface {v0, p0}, Lcom/bbm/d/a/a;->a(Lorg/json/JSONObject;)V
invoke-interface {v0}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method