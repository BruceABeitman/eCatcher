.class public final Lcom/instagram/h/a/a;
.super Ljava/lang/Object;
.source "HashtagAutoCompleteStore.java"
.field private static final a:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/instagram/h/a/a;->a:Ljava/util/Map;
return-void
.end method
.method public static a(Ljava/lang/CharSequence;)Ljava/util/List;
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
if-eqz p0, :cond_50
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v0
if-lez v0, :cond_50
const/4 v0, 0x0
invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v0
sget-object v2, Lcom/instagram/h/a/a;->a:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_50
sget-object v2, Lcom/instagram/h/a/a;->a:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2e
:cond_2e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_50
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_2e
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_2e
:cond_50
return-object v1
.end method
.method public static a()V
.registers 1
invoke-static {}, Lcom/instagram/h/a/a;->c()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
sget-object v0, Lcom/instagram/h/a/a;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method public static a(Ljava/lang/String;)V
.registers 2
invoke-static {}, Lcom/instagram/h/a/a;->c()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-static {p0}, Lcom/instagram/h/a/a;->c(Ljava/lang/String;)V
return-void
.end method
.method public static b()V
.registers 2
invoke-static {}, Lcom/instagram/h/a/a;->c()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_10
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/instagram/h/a/a;->c(Ljava/lang/String;)V
goto :goto_10
:cond_26
return-void
.end method
.method public static b(Ljava/lang/String;)V
.registers 6
const/4 v4, 0x1
invoke-static {p0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8
:goto_7
return-void
:cond_8
invoke-static {p0}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-static {}, Lcom/instagram/h/a/a;->c()Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
:goto_14
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-eqz v2, :cond_2d
invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-static {v2}, Lcom/instagram/h/a/a;->c(Ljava/lang/String;)V
goto :goto_14
:cond_2d
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_7
.end method
.method private static c()Landroid/content/SharedPreferences;
.registers 1
const-string v0, "AutoCompleteHashtagService"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
return-object v0
.end method
.method private static c(Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C
move-result v0
sget-object v1, Lcom/instagram/h/a/a;->a:Ljava/util/Map;
invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_23
sget-object v1, Lcom/instagram/h/a/a;->a:Ljava/util/Map;
invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v2
new-instance v3, Ljava/util/HashSet;
invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_23
sget-object v1, Lcom/instagram/h/a/a;->a:Ljava/util/Map;
invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Set;
invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method