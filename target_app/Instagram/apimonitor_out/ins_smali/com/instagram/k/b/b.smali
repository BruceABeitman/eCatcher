.class public final Lcom/instagram/k/b/b;
.super Ljava/lang/Object;
.source "UserSharedPreference.java"
.implements Landroid/content/SharedPreferences;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.field private static d:Ljava/util/WeakHashMap;
.field private a:Landroid/content/SharedPreferences;
.field private b:Landroid/content/SharedPreferences;
.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
.field private final e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
sput-object v0, Lcom/instagram/k/b/b;->d:Ljava/util/WeakHashMap;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/k/b/b;->e:Ljava/lang/String;
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/k/b/b;->c:Ljava/util/concurrent/CopyOnWriteArrayList;
return-void
.end method
.method static synthetic a(Lcom/instagram/k/b/b;)Landroid/content/SharedPreferences;
.registers 2
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
return-object v0
.end method
.method public static a(Ljava/lang/String;)Lcom/instagram/k/b/b;
.registers 4
sget-object v1, Lcom/instagram/k/b/b;->d:Ljava/util/WeakHashMap;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/k/b/b;->d:Ljava/util/WeakHashMap;
invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_15
sget-object v0, Lcom/instagram/k/b/b;->d:Ljava/util/WeakHashMap;
new-instance v2, Lcom/instagram/k/b/b;
invoke-direct {v2, p0}, Lcom/instagram/k/b/b;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_15
sget-object v0, Lcom/instagram/k/b/b;->d:Ljava/util/WeakHashMap;
invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/k/b/b;
monitor-exit v1
:try_end_1e
.catchall {:try_start_3 .. :try_end_1e} :catchall_1f
return-object v0
:catchall_1f
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic b(Lcom/instagram/k/b/b;)Landroid/content/SharedPreferences;
.registers 2
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
return-object v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
:cond_9
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/instagram/k/b/b;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
if-eqz v1, :cond_22
iget-object v1, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
:cond_22
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-nez v0, :cond_52
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
iget-object v1, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-static {v0, v1}, Lcom/instagram/k/b/a/a;->a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_52
return-void
.end method
.method public final contains(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
goto :goto_d
.end method
.method public final edit()Landroid/content/SharedPreferences$Editor;
.registers 2
new-instance v0, Lcom/instagram/k/b/c;
invoke-direct {v0, p0}, Lcom/instagram/k/b/c;-><init>(Lcom/instagram/k/b/b;)V
return-object v0
.end method
.method public final getAll()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-eqz v0, :cond_17
:cond_10
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
:goto_16
return-object v0
:cond_17
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
goto :goto_16
.end method
.method public final getBoolean(Ljava/lang/String;Z)Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_13
:cond_c
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
:goto_12
return v0
:cond_13
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
goto :goto_12
.end method
.method public final getFloat(Ljava/lang/String;F)F
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_13
:cond_c
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
move-result v0
:goto_12
return v0
:cond_13
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
move-result v0
goto :goto_12
.end method
.method public final getInt(Ljava/lang/String;I)I
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_13
:cond_c
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
:goto_12
return v0
:cond_13
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
goto :goto_12
.end method
.method public final getLong(Ljava/lang/String;J)J
.registers 6
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_13
:cond_c
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
:goto_12
return-wide v0
:cond_13
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
goto :goto_12
.end method
.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_13
:cond_c
iget-object v0, p0, Lcom/instagram/k/b/b;->a:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lcom/instagram/k/b/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_12
.end method
.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/instagram/k/b/b;->c:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
goto :goto_6
:cond_16
return-void
.end method
.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
.registers 3
iget-object v0, p0, Lcom/instagram/k/b/b;->c:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
.registers 3
iget-object v0, p0, Lcom/instagram/k/b/b;->c:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
return-void
.end method