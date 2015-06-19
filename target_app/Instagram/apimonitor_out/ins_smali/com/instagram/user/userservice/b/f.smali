.class public final Lcom/instagram/user/userservice/b/f;
.super Lcom/instagram/user/userservice/a;
.source "SuggestionsUserServiceHelper.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/user/userservice/a;-><init>()V
return-void
.end method
.method public static b(J)V
.registers 4
const-string v0, "audiencePickerSuggestions"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "EXPIRES_DATE"
invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public static e()J
.registers 4
const-string v0, "audiencePickerSuggestions"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "EXPIRES_DATE"
const-wide/16 v2, -0x1
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method private static f()Lcom/instagram/user/userservice/b/a;
.registers 1
new-instance v0, Lcom/instagram/user/userservice/b/a;
invoke-direct {v0}, Lcom/instagram/user/userservice/b/a;-><init>()V
return-object v0
.end method
.method protected final a(Lcom/instagram/user/c/a;)V
.registers 3
invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/f/d/a;->c(Lcom/instagram/user/c/a;)V
return-void
.end method
.method protected final a(Ljava/util/Collection;)V
.registers 8
invoke-virtual {p0}, Lcom/instagram/user/userservice/b/f;->c()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
const/4 v0, 0x0
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v0
:goto_e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
:try_start_1a
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v4
invoke-static {v0}, Lcom/instagram/user/b/b;->a(Lcom/instagram/user/c/a;)Ljava/lang/String;
move-result-object v5
invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-virtual {p0, v0}, Lcom/instagram/user/userservice/b/f;->a(Lcom/instagram/user/c/a;)V
:goto_28
:try_end_28
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_30
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_e
:cond_2c
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
:catch_30
move-exception v0
goto :goto_28
.end method
.method public final a(Z)V
.registers 3
if-eqz p1, :cond_11
invoke-virtual {p0}, Lcom/instagram/user/userservice/b/f;->c()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_11
invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/f/d/a;->g()V
return-void
.end method
.method protected final b()V
.registers 6
invoke-virtual {p0}, Lcom/instagram/user/userservice/b/f;->c()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
new-instance v2, Ljava/util/TreeMap;
invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_15
:goto_15
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_47
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v4, "EXPIRES_DATE"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_15
:try_start_2f
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/instagram/user/b/b;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;
move-result-object v0
invoke-interface {v2, v1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_44
.catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_44} :catch_45
goto :goto_15
:catch_45
move-exception v0
goto :goto_15
:cond_47
invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
invoke-virtual {p0, v0}, Lcom/instagram/user/userservice/b/f;->a(Lcom/instagram/user/c/a;)V
goto :goto_4f
:cond_5f
return-void
.end method
.method protected final c()Landroid/content/SharedPreferences;
.registers 2
const-string v0, "audiencePickerSuggestions"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
return-object v0
.end method
.method protected final synthetic d()Lcom/instagram/api/k/a/a;
.registers 2
invoke-static {}, Lcom/instagram/user/userservice/b/f;->f()Lcom/instagram/user/userservice/b/a;
move-result-object v0
return-object v0
.end method