.class public final Lcom/instagram/feed/c/g;
.super Ljava/lang/Object;
.source "VideoDisplayedTracker.java"
.field private static a:Lcom/instagram/feed/c/g;
.field private b:Landroid/content/SharedPreferences;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "video_view"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/g;->b:Landroid/content/SharedPreferences;
return-void
.end method
.method public static a()Lcom/instagram/feed/c/g;
.registers 1
sget-object v0, Lcom/instagram/feed/c/g;->a:Lcom/instagram/feed/c/g;
if-nez v0, :cond_7
invoke-static {}, Lcom/instagram/feed/c/g;->b()V
:cond_7
sget-object v0, Lcom/instagram/feed/c/g;->a:Lcom/instagram/feed/c/g;
return-object v0
.end method
.method private static a(Landroid/content/SharedPreferences;)V
.registers 6
new-instance v0, Ljava/util/ArrayList;
invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v1
invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
const/16 v1, 0x31
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v3
invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v1
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_28
:goto_28
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_4a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Long;
invoke-virtual {v2, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I
move-result v2
if-gtz v2, :cond_28
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
goto :goto_28
:cond_4a
invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
return-void
.end method
.method private a(Lcom/instagram/feed/d/l;J)V
.registers 7
invoke-static {p1}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0}, Lcom/instagram/feed/c/g;->c()Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
invoke-interface {v2, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
const/16 v2, 0xc8
if-le v0, v2, :cond_22
invoke-static {v1}, Lcom/instagram/feed/c/g;->a(Landroid/content/SharedPreferences;)V
:cond_22
return-void
.end method
.method public static a(Lcom/instagram/feed/d/l;)Z
.registers 2
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->g()Z
move-result v0
return v0
.end method
.method private static b(Lcom/instagram/feed/d/l;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static declared-synchronized b()V
.registers 2
const-class v1, Lcom/instagram/feed/c/g;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/feed/c/g;->a:Lcom/instagram/feed/c/g;
if-nez v0, :cond_e
new-instance v0, Lcom/instagram/feed/c/g;
invoke-direct {v0}, Lcom/instagram/feed/c/g;-><init>()V
sput-object v0, Lcom/instagram/feed/c/g;->a:Lcom/instagram/feed/c/g;
:try_end_e
.catchall {:try_start_3 .. :try_end_e} :catchall_10
:cond_e
monitor-exit v1
return-void
:catchall_10
move-exception v0
monitor-exit v1
throw v0
.end method
.method private c(Lcom/instagram/feed/d/l;)J
.registers 6
invoke-static {p1}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0}, Lcom/instagram/feed/c/g;->c()Landroid/content/SharedPreferences;
move-result-object v1
const-wide/16 v2, 0x0
invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method private c()Landroid/content/SharedPreferences;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/c/g;->b:Landroid/content/SharedPreferences;
return-object v0
.end method
.method private d(Lcom/instagram/feed/d/l;)Z
.registers 4
invoke-static {p1}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0}, Lcom/instagram/feed/c/g;->c()Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final a(Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
.registers 10
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-direct {p0, p1}, Lcom/instagram/feed/c/g;->d(Lcom/instagram/feed/d/l;)Z
move-result v2
if-nez v2, :cond_12
const/4 v2, 0x1
invoke-static {p1, p2, v2, p3}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/feed/d/l;IZLcom/instagram/feed/g/a;)V
invoke-direct {p0, p1, v0, v1}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/feed/d/l;J)V
:goto_11
:cond_11
return-void
:cond_12
invoke-direct {p0, p1}, Lcom/instagram/feed/c/g;->c(Lcom/instagram/feed/d/l;)J
move-result-wide v2
const-wide/32 v4, 0xea60
add-long/2addr v2, v4
cmp-long v2, v0, v2
if-lez v2, :cond_11
const/4 v2, 0x0
invoke-static {p1, p2, v2, p3}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/feed/d/l;IZLcom/instagram/feed/g/a;)V
invoke-direct {p0, p1, v0, v1}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/feed/d/l;J)V
goto :goto_11
.end method