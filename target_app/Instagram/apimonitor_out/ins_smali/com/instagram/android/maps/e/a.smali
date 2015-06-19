.class public final Lcom/instagram/android/maps/e/a;
.super Ljava/lang/Object;
.source "PhotoMapsEditManager.java"
.field private static a:Lcom/instagram/android/maps/e/a;
.field private b:Landroid/content/SharedPreferences;
.field private c:Landroid/content/SharedPreferences;
.field private d:Ljava/util/List;
.field private e:Lcom/instagram/android/maps/e/d;
.field private f:Lcom/instagram/android/maps/e/e;
.field private g:Z
.field private h:Ljava/util/List;
.field private i:Ljava/util/List;
.field private j:Ljava/lang/String;
.field private k:Ljava/util/List;
.method private constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v2, p0, Lcom/instagram/android/maps/e/a;->g:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/maps/e/a;->h:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/maps/e/a;->i:Ljava/util/List;
const-string v0, "PhotoMapsEditManagerItemMap"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
const-string v0, "PhotoMapsEditManagerGeneralPrefs"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/e/a;->c:Landroid/content/SharedPreferences;
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->c:Landroid/content/SharedPreferences;
const-string v1, "MapsPrefOnOff"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/android/maps/e/a;->g:Z
new-instance v0, Lcom/instagram/android/maps/e/b;
invoke-direct {v0, p0}, Lcom/instagram/android/maps/e/b;-><init>(Lcom/instagram/android/maps/e/a;)V
iput-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
new-instance v0, Lcom/instagram/android/maps/e/c;
invoke-direct {v0, p0}, Lcom/instagram/android/maps/e/c;-><init>(Lcom/instagram/android/maps/e/a;)V
iput-object v0, p0, Lcom/instagram/android/maps/e/a;->f:Lcom/instagram/android/maps/e/e;
return-void
.end method
.method public static a()Lcom/instagram/android/maps/e/a;
.registers 1
sget-object v0, Lcom/instagram/android/maps/e/a;->a:Lcom/instagram/android/maps/e/a;
if-nez v0, :cond_b
new-instance v0, Lcom/instagram/android/maps/e/a;
invoke-direct {v0}, Lcom/instagram/android/maps/e/a;-><init>()V
sput-object v0, Lcom/instagram/android/maps/e/a;->a:Lcom/instagram/android/maps/e/a;
:cond_b
sget-object v0, Lcom/instagram/android/maps/e/a;->a:Lcom/instagram/android/maps/e/a;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/maps/e/a;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->h:Ljava/util/List;
return-object v0
.end method
.method private a(Ljava/util/Collection;Z)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
invoke-virtual {v0}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
goto :goto_a
:cond_1e
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
invoke-interface {v0}, Lcom/instagram/android/maps/e/d;->a()V
:cond_2a
return-void
.end method
.method static synthetic b(Lcom/instagram/android/maps/e/a;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->i:Ljava/util/List;
return-object v0
.end method
.method private b(Lcom/instagram/android/h/b;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
invoke-interface {v0}, Lcom/instagram/android/maps/e/d;->a()V
:cond_1b
return-void
.end method
.method private b(Z)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_14
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
goto :goto_14
:cond_24
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
invoke-interface {v0}, Lcom/instagram/android/maps/e/d;->a()V
:cond_30
return-void
.end method
.method private c(Lcom/instagram/android/h/b;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
invoke-interface {v0}, Lcom/instagram/android/maps/e/d;->a()V
:cond_1b
return-void
.end method
.method private e(Ljava/util/Collection;)Ljava/util/List;
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_9
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
iget-object v3, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-virtual {v0}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x1
invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
if-nez v3, :cond_9
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_26
return-object v1
.end method
.method public final a(Lcom/instagram/android/h/b;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/feed/d/z;)Z
move-result v0
if-eqz v0, :cond_a
invoke-direct {p0, p1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/h/b;)V
:goto_9
return-void
:cond_a
invoke-direct {p0, p1}, Lcom/instagram/android/maps/e/a;->c(Lcom/instagram/android/h/b;)V
goto :goto_9
.end method
.method public final a(Lcom/instagram/android/maps/e/d;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->h:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Lcom/instagram/android/maps/e/e;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->i:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/e/a;->j:Ljava/lang/String;
return-void
.end method
.method public final a(Ljava/util/Collection;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/android/maps/e/a;->a(Ljava/util/Collection;Z)V
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iput-object p1, p0, Lcom/instagram/android/maps/e/a;->d:Ljava/util/List;
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_19
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
invoke-virtual {v0}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v0
const/4 v3, 0x1
invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
goto :goto_19
:cond_2e
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final a(Z)V
.registers 4
iput-boolean p1, p0, Lcom/instagram/android/maps/e/a;->g:Z
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->c:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "MapsPrefOnOff"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-boolean v0, p0, Lcom/instagram/android/maps/e/a;->g:Z
if-nez v0, :cond_22
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_22
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
invoke-interface {v0}, Lcom/instagram/android/maps/e/d;->a()V
:cond_2b
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->f:Lcom/instagram/android/maps/e/e;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->f:Lcom/instagram/android/maps/e/e;
invoke-interface {v0, p1}, Lcom/instagram/android/maps/e/e;->a(Z)V
:cond_34
return-void
.end method
.method public final a(Lcom/instagram/feed/d/z;)Z
.registers 5
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {p1}, Lcom/instagram/feed/d/z;->f()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final b(Lcom/instagram/android/maps/e/d;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->h:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final b(Lcom/instagram/android/maps/e/e;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->i:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final b(Ljava/util/Collection;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/instagram/android/maps/e/a;->a(Ljava/util/Collection;Z)V
return-void
.end method
.method public final b()Z
.registers 3
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/e/a;->j:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
iget-boolean v0, p0, Lcom/instagram/android/maps/e/a;->g:Z
if-eqz v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method public final b(Ljava/util/List;)Z
.registers 6
const/4 v1, 0x1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
iget-object v3, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-virtual {v0}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_a
move v0, v1
:goto_23
return v0
:cond_24
const/4 v0, 0x0
goto :goto_23
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->j:Ljava/lang/String;
return-object v0
.end method
.method public final c(Ljava/util/Collection;)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
invoke-virtual {v0}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v0
const/4 v3, 0x1
invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
goto :goto_a
:cond_1f
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->e:Lcom/instagram/android/maps/e/d;
invoke-interface {v0}, Lcom/instagram/android/maps/e/d;->a()V
:cond_2b
return-void
.end method
.method public final d(Ljava/util/Collection;)Ljava/util/List;
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_9
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
iget-object v3, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-virtual {v0}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x1
invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
if-eqz v3, :cond_9
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_26
return-object v1
.end method
.method public final d()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/android/maps/e/a;->b(Z)V
return-void
.end method
.method public final e()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/instagram/android/maps/e/a;->b(Z)V
return-void
.end method
.method public final f()Z
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
return v0
.end method
.method public final g()I
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v1
invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_10
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_27
add-int/lit8 v0, v1, 0x1
:goto_24
move v1, v0
goto :goto_10
:cond_26
return v1
:cond_27
move v0, v1
goto :goto_24
.end method
.method public final h()I
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/android/maps/e/a;->b:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v1
invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_10
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_27
add-int/lit8 v0, v1, 0x1
:goto_24
move v1, v0
goto :goto_10
:cond_26
return v1
:cond_27
move v0, v1
goto :goto_24
.end method
.method public final i()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->d:Ljava/util/List;
invoke-virtual {p0, v0}, Lcom/instagram/android/maps/e/a;->d(Ljava/util/Collection;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/e/a;->k:Ljava/util/List;
return-void
.end method
.method public final j()Ljava/util/List;
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->k:Ljava/util/List;
const/4 v1, 0x0
iput-object v1, p0, Lcom/instagram/android/maps/e/a;->k:Ljava/util/List;
return-object v0
.end method
.method public final k()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/e/a;->d:Ljava/util/List;
invoke-direct {p0, v0}, Lcom/instagram/android/maps/e/a;->e(Ljava/util/Collection;)Ljava/util/List;
move-result-object v0
return-object v0
.end method