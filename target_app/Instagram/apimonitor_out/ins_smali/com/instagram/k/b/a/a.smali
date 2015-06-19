.class public final Lcom/instagram/k/b/a/a;
.super Ljava/lang/Object;
.source "UserPreferenceUtil.java"
.method public static a(Ljava/lang/String;)Landroid/content/SharedPreferences;
.registers 3
invoke-static {p0}, Lcom/instagram/k/b/b;->a(Ljava/lang/String;)Lcom/instagram/k/b/b;
move-result-object v0
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
invoke-static {}, Lcom/instagram/service/a/a;->d()Z
move-result v1
if-eqz v1, :cond_19
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/service/a/a;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/k/b/b;->b(Ljava/lang/String;)V
:goto_18
return-object v0
:cond_19
invoke-virtual {v0}, Lcom/instagram/k/b/b;->a()V
goto :goto_18
.end method
.method public static a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
.registers 8
invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_10
:goto_10
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_68
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
instance-of v4, v1, Ljava/lang/Boolean;
if-eqz v4, :cond_34
check-cast v1, Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
goto :goto_10
:cond_34
instance-of v4, v1, Ljava/lang/Float;
if-eqz v4, :cond_42
check-cast v1, Ljava/lang/Float;
invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
move-result v1
invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
goto :goto_10
:cond_42
instance-of v4, v1, Ljava/lang/Integer;
if-eqz v4, :cond_50
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
goto :goto_10
:cond_50
instance-of v4, v1, Ljava/lang/Long;
if-eqz v4, :cond_5e
check-cast v1, Ljava/lang/Long;
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v4
invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
goto :goto_10
:cond_5e
instance-of v4, v1, Ljava/lang/String;
if-eqz v4, :cond_10
check-cast v1, Ljava/lang/String;
invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
goto :goto_10
:cond_68
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method