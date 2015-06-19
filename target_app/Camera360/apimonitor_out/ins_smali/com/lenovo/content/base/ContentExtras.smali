.class public abstract Lcom/lenovo/content/base/ContentExtras;
.super Ljava/lang/Object;
.source "ContentExtras.java"
.field private a:Ljava/util/Map;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
if-nez p2, :cond_6
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/lenovo/content/base/ContentExtras;->a:Ljava/util/Map;
if-nez v0, :cond_12
new-instance v0, Ljava/util/HashMap;
const/4 v1, 0x2
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/lenovo/content/base/ContentExtras;->a:Ljava/util/Map;
:cond_12
iget-object v0, p0, Lcom/lenovo/content/base/ContentExtras;->a:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_5
.end method
.method public getBooleanExtra(Ljava/lang/String;Z)Z
.registers 9
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {p0, p1, v2}, Lcom/lenovo/content/base/ContentExtras;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:try_start_8
check-cast v1, Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_d
.catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_d} :catch_f
move-result p2
:goto_e
return p2
:catch_f
move-exception v0
const-string/jumbo v2, "%s\'s content extras is not %s type."
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
const-string/jumbo v5, "boolean"
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
goto :goto_e
.end method
.method public getByteExtra(Ljava/lang/String;B)B
.registers 9
invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v2
invoke-virtual {p0, p1, v2}, Lcom/lenovo/content/base/ContentExtras;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:try_start_8
check-cast v1, Ljava/lang/Byte;
invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B
:try_end_d
.catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_d} :catch_f
move-result p2
:goto_e
return p2
:catch_f
move-exception v0
const-string/jumbo v2, "%s\'s content extras is not %s type."
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
const-string/jumbo v5, "byte"
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
goto :goto_e
.end method
.method public getCharExtra(Ljava/lang/String;C)C
.registers 9
invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v2
invoke-virtual {p0, p1, v2}, Lcom/lenovo/content/base/ContentExtras;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:try_start_8
check-cast v1, Ljava/lang/Character;
invoke-virtual {v1}, Ljava/lang/Character;->charValue()C
:try_end_d
.catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_d} :catch_f
move-result p2
:goto_e
return p2
:catch_f
move-exception v0
const-string/jumbo v2, "%s\'s content extras is not %s type."
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
const-string/jumbo v5, "char"
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
goto :goto_e
.end method
.method public getDoubleExtra(Ljava/lang/String;D)D
.registers 10
invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
invoke-virtual {p0, p1, v2}, Lcom/lenovo/content/base/ContentExtras;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:try_start_8
check-cast v1, Ljava/lang/Double;
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
:try_end_d
.catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_d} :catch_f
move-result-wide p2
:goto_e
return-wide p2
:catch_f
move-exception v0
const-string/jumbo v2, "%s\'s content extras is not %s type."
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
const-string/jumbo v5, "double"
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
goto :goto_e
.end method
.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/lenovo/content/base/ContentExtras;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
iget-object v1, p0, Lcom/lenovo/content/base/ContentExtras;->a:Ljava/util/Map;
if-nez v1, :cond_8
move-object v0, p2
:goto_5
if-eqz v0, :cond_f
:goto_7
return-object v0
:cond_8
iget-object v1, p0, Lcom/lenovo/content/base/ContentExtras;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_5
:cond_f
move-object v0, p2
goto :goto_7
.end method
.method public getFloatExtra(Ljava/lang/String;F)F
.registers 9
invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {p0, p1, v2}, Lcom/lenovo/content/base/ContentExtras;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:try_start_8
check-cast v1, Ljava/lang/Float;
invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
:try_end_d
.catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_d} :catch_f
move-result p2
:goto_e
return p2
:catch_f
move-exception v0
const-string/jumbo v2, "%s\'s content extras is not %s type."
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
const-string/jumbo v5, "float"
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
goto :goto_e
.end method
.method public getIntExtra(Ljava/lang/String;I)I
.registers 9
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {p0, p1, v2}, Lcom/lenovo/content/base/ContentExtras;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:try_start_8
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
:try_end_d
.catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_d} :catch_f
move-result p2
:goto_e
return p2
:catch_f
move-exception v0
const-string/jumbo v2, "%s\'s content extras is not %s type."
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
const-string/jumbo v5, "int"
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
goto :goto_e
.end method
.method public getLongExtra(Ljava/lang/String;J)J
.registers 10
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {p0, p1, v2}, Lcom/lenovo/content/base/ContentExtras;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:try_start_8
check-cast v1, Ljava/lang/Long;
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
:try_end_d
.catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_d} :catch_f
move-result-wide p2
:goto_e
return-wide p2
:catch_f
move-exception v0
const-string/jumbo v2, "%s\'s content extras is not %s type."
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
const-string/jumbo v5, "long"
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
goto :goto_e
.end method
.method public getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/lenovo/content/base/ContentExtras;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getShortExtra(Ljava/lang/String;S)S
.registers 9
invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v2
invoke-virtual {p0, p1, v2}, Lcom/lenovo/content/base/ContentExtras;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:try_start_8
check-cast v1, Ljava/lang/Short;
invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
:try_end_d
.catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_d} :catch_f
move-result p2
:goto_e
return p2
:catch_f
move-exception v0
const-string/jumbo v2, "%s\'s content extras is not %s type."
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
const-string/jumbo v5, "short"
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
goto :goto_e
.end method
.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/4 v2, 0x0
invoke-virtual {p0, p1, v2}, Lcom/lenovo/content/base/ContentExtras;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:try_start_5
check-cast v1, Ljava/lang/String;
:goto_7
:try_end_7
.catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_7} :catch_8
return-object v1
:catch_8
move-exception v0
const-string/jumbo v3, "%s\'s content extras is not %s type."
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p1, v4, v5
const/4 v5, 0x1
const-string/jumbo v6, "String"
aput-object v6, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
move-object v1, v2
goto :goto_7
.end method
.method public hasExtra(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/lenovo/content/base/ContentExtras;->a:Ljava/util/Map;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/lenovo/content/base/ContentExtras;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public putExtra(Ljava/lang/String;B)V
.registers 4
invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/lenovo/content/base/ContentExtras;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public putExtra(Ljava/lang/String;C)V
.registers 4
invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/lenovo/content/base/ContentExtras;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public putExtra(Ljava/lang/String;D)V
.registers 5
invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/lenovo/content/base/ContentExtras;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public putExtra(Ljava/lang/String;F)V
.registers 4
invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/lenovo/content/base/ContentExtras;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public putExtra(Ljava/lang/String;I)V
.registers 4
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/lenovo/content/base/ContentExtras;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public putExtra(Ljava/lang/String;J)V
.registers 5
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/lenovo/content/base/ContentExtras;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/content/base/ContentExtras;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/content/base/ContentExtras;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public putExtra(Ljava/lang/String;S)V
.registers 4
invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/lenovo/content/base/ContentExtras;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public putExtra(Ljava/lang/String;Z)V
.registers 4
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/lenovo/content/base/ContentExtras;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public removeExtra(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/lenovo/content/base/ContentExtras;->a:Ljava/util/Map;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/lenovo/content/base/ContentExtras;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_5
.end method