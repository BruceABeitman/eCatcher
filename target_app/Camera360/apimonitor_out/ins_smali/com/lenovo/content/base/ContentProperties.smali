.class public final Lcom/lenovo/content/base/ContentProperties;
.super Ljava/lang/Object;
.source "ContentProperties.java"
.field private a:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
return-void
.end method
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public get(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
iget-object v1, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_9
:goto_8
return-object v0
:cond_9
move-object v0, p2
goto :goto_8
.end method
.method public getBoolean(Ljava/lang/String;Z)Z
.registers 5
iget-object v1, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_e
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result p2
:cond_e
return p2
.end method
.method public getFloat(Ljava/lang/String;F)F
.registers 5
iget-object v1, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_e
check-cast v0, Ljava/lang/Float;
invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
move-result p2
:cond_e
return p2
.end method
.method public getInt(Ljava/lang/String;I)I
.registers 5
iget-object v1, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_e
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result p2
:cond_e
return p2
.end method
.method public getLong(Ljava/lang/String;J)J
.registers 6
iget-object v1, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_e
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide p2
:cond_e
return-wide p2
.end method
.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
iget-object v1, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_9
:goto_8
return-object v0
:cond_9
move-object v0, p2
goto :goto_8
.end method
.method public getString(Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v1, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_d
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
:goto_c
return-object v1
:cond_d
const/4 v1, 0x0
goto :goto_c
.end method
.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
iget-object v1, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_c
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object p2
:cond_c
return-object p2
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/lenovo/content/base/ContentProperties;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
return v0
.end method