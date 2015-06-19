.class public Lcom/umeng/common/util/h;
.super Ljava/lang/Object;
.source "NetUtil.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
.registers 7
if-eqz p0, :cond_8
invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return-object p1
:cond_9
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
const-string/jumbo v2, "?"
invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_21
const-string/jumbo v2, "?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_21
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_25
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_39
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
goto :goto_8
:cond_39
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
if-nez v4, :cond_73
const-string/jumbo v0, ""
:goto_5c
invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "&"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_25
:cond_73
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5c
.end method