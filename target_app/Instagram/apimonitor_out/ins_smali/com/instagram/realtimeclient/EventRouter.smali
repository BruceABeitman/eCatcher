.class public Lcom/instagram/realtimeclient/EventRouter;
.super Ljava/lang/Object;
.source "EventRouter.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static fill(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
.registers 9
const/4 v2, 0x0
const-string v0, "/"
invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
array-length v5, v3
move v1, v2
:goto_e
if-ge v1, v5, :cond_35
aget-object v0, v3, v1
const-string v6, ":"
invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_31
const/4 v6, 0x1
invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_28
const-string v0, "/"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_e
:cond_31
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_28
:cond_35
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
.registers 9
const/4 v1, 0x0
const-string v0, "/"
invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
const-string v0, "/"
invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v0, v3
array-length v2, v4
if-gt v0, v2, :cond_22
array-length v0, v3
array-length v2, v4
if-ge v0, v2, :cond_24
array-length v0, v3
add-int/lit8 v0, v0, -0x1
aget-object v0, v3, v0
const-string v2, "*"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_24
:cond_22
move-object v0, v1
:goto_23
return-object v0
:cond_24
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
const/4 v0, 0x0
:goto_2a
array-length v5, v3
if-ge v0, v5, :cond_5c
aget-object v5, v3, v0
const-string v6, "*"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_4d
aget-object v5, v3, v0
const-string v6, ":"
invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_50
aget-object v5, v3, v0
const/4 v6, 0x1
invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
aget-object v6, v4, v0
invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_4d
add-int/lit8 v0, v0, 0x1
goto :goto_2a
:cond_50
aget-object v5, v3, v0
aget-object v6, v4, v0
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_4d
move-object v0, v1
goto :goto_23
:cond_5c
move-object v0, v2
goto :goto_23
.end method