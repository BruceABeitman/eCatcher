.class public final Lcom/instagram/feed/c/a;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"
.field private static a:Landroid/content/SharedPreferences;
.field private static b:Landroid/content/SharedPreferences;
.field private final c:Ljava/util/Map;
.field private final d:Ljava/util/Map;
.field private final e:Lcom/instagram/feed/g/a;
.method public constructor <init>(Lcom/instagram/feed/g/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/feed/c/a;->c:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/feed/c/a;->d:Ljava/util/Map;
iput-object p1, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
return-void
.end method
.method private a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_8
:cond_7
:goto_7
return-object v0
:cond_8
sget-object v1, Lcom/instagram/feed/c/b;->a:Lcom/instagram/feed/c/b;
invoke-virtual {v1, p2}, Lcom/instagram/feed/c/b;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_15
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v0
goto :goto_7
:cond_15
sget-object v1, Lcom/instagram/feed/c/b;->b:Lcom/instagram/feed/c/b;
invoke-virtual {v1, p2}, Lcom/instagram/feed/c/b;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_LAST_VIEWED_IMPRESSION_TIME"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method
.method public static a()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/instagram/feed/c/a;->a:Landroid/content/SharedPreferences;
sput-object v0, Lcom/instagram/feed/c/a;->b:Landroid/content/SharedPreferences;
return-void
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
.method private a(Lcom/instagram/feed/d/l;JILcom/instagram/feed/g/a;)V
.registers 12
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->e(Lcom/instagram/feed/d/l;)Z
move-result v2
if-eqz v2, :cond_12
sub-long v2, v0, p2
const-wide/16 v4, 0x3e8
cmp-long v2, v2, v4
if-gez v2, :cond_13
:cond_12
:goto_12
return-void
:cond_13
sget-object v2, Lcom/instagram/feed/c/b;->b:Lcom/instagram/feed/c/b;
invoke-direct {p0, p1, v2}, Lcom/instagram/feed/c/a;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;)Z
move-result v2
if-nez v2, :cond_26
const-string v2, "viewed_impression"
invoke-static {v2, p1, p4, p5}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
sget-object v2, Lcom/instagram/feed/c/b;->b:Lcom/instagram/feed/c/b;
invoke-direct {p0, p1, v2, v0, v1}, Lcom/instagram/feed/c/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;J)V
goto :goto_12
:cond_26
sget-object v2, Lcom/instagram/feed/c/b;->b:Lcom/instagram/feed/c/b;
invoke-direct {p0, p1, v2}, Lcom/instagram/feed/c/a;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;)J
move-result-wide v2
sub-long v2, v0, v2
const-wide/32 v4, 0xea60
cmp-long v2, v2, v4
if-lez v2, :cond_12
const-string v2, "sub_viewed_impression"
invoke-static {v2, p1, p4, p5}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
sget-object v2, Lcom/instagram/feed/c/b;->b:Lcom/instagram/feed/c/b;
invoke-direct {p0, p1, v2, v0, v1}, Lcom/instagram/feed/c/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;J)V
goto :goto_12
.end method
.method private a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;J)V
.registers 8
invoke-direct {p0, p1, p2}, Lcom/instagram/feed/c/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->d(Lcom/instagram/feed/d/l;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
invoke-interface {v2, v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
const/16 v2, 0xc8
if-le v0, v2, :cond_22
invoke-static {v1}, Lcom/instagram/feed/c/a;->a(Landroid/content/SharedPreferences;)V
:cond_22
return-void
.end method
.method private b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;)J
.registers 7
invoke-direct {p0, p1, p2}, Lcom/instagram/feed/c/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->d(Lcom/instagram/feed/d/l;)Landroid/content/SharedPreferences;
move-result-object v1
const-wide/16 v2, 0x0
invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method private c(Lcom/instagram/feed/d/l;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
invoke-static {p1, v0}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_15
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ag()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
:goto_14
return-object v0
:cond_15
iget-object v0, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
invoke-static {p1, v0}, Lcom/instagram/feed/c/e;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_22
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_22
const/4 v0, 0x0
goto :goto_14
.end method
.method private c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;)Z
.registers 5
invoke-direct {p0, p1, p2}, Lcom/instagram/feed/c/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->d(Lcom/instagram/feed/d/l;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method private d(Lcom/instagram/feed/d/l;)Landroid/content/SharedPreferences;
.registers 3
invoke-static {}, Lcom/instagram/feed/c/a;->e()V
iget-object v0, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
invoke-static {p1, v0}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_e
sget-object v0, Lcom/instagram/feed/c/a;->a:Landroid/content/SharedPreferences;
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
invoke-static {p1, v0}, Lcom/instagram/feed/c/e;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_19
sget-object v0, Lcom/instagram/feed/c/a;->b:Landroid/content/SharedPreferences;
goto :goto_d
:cond_19
const/4 v0, 0x0
goto :goto_d
.end method
.method private static declared-synchronized e()V
.registers 2
const-class v1, Lcom/instagram/feed/c/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/feed/c/a;->a:Landroid/content/SharedPreferences;
if-eqz v0, :cond_d
sget-object v0, Lcom/instagram/feed/c/a;->b:Landroid/content/SharedPreferences;
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_1e
if-eqz v0, :cond_d
:goto_b
monitor-exit v1
return-void
:cond_d
:try_start_d
const-string v0, "starred_view"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
sput-object v0, Lcom/instagram/feed/c/a;->a:Landroid/content/SharedPreferences;
const-string v0, "organic_view"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
sput-object v0, Lcom/instagram/feed/c/a;->b:Landroid/content/SharedPreferences;
:try_end_1d
.catchall {:try_start_d .. :try_end_1d} :catchall_1e
goto :goto_b
:catchall_1e
move-exception v0
monitor-exit v1
throw v0
.end method
.method private e(Lcom/instagram/feed/d/l;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->d(Lcom/instagram/feed/d/l;)Landroid/content/SharedPreferences;
move-result-object v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final a(Lcom/instagram/feed/d/l;)V
.registers 7
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->e(Lcom/instagram/feed/d/l;)Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Lcom/instagram/feed/c/a;->d:Ljava/util/Map;
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/c/i;
if-eqz v0, :cond_6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v3, v0, Lcom/instagram/feed/c/i;->b:Ljava/lang/Long;
invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
move-result-wide v3
sub-long/2addr v1, v3
const-wide/16 v3, 0x1f4
cmp-long v3, v1, v3
if-lez v3, :cond_6
iget-object v3, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
invoke-static {p1, v3}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v3
if-eqz v3, :cond_6
const-string v3, "time_spent"
iget-object v4, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
invoke-static {v3, p1, v4}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Lcom/instagram/feed/c/c;
move-result-object v3
iget v0, v0, Lcom/instagram/feed/c/i;->d:I
invoke-virtual {v3, v0}, Lcom/instagram/feed/c/c;->a(I)Lcom/instagram/feed/c/c;
move-result-object v0
invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/c/c;->a(J)Lcom/instagram/feed/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/c/c;->a()Lcom/instagram/common/analytics/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
invoke-static {v0, p1, v1}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
goto :goto_6
.end method
.method public final a(Lcom/instagram/feed/d/l;I)V
.registers 9
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->e(Lcom/instagram/feed/d/l;)Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-object v2, Lcom/instagram/feed/c/b;->a:Lcom/instagram/feed/c/b;
invoke-direct {p0, p1, v2}, Lcom/instagram/feed/c/a;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;)Z
move-result v2
if-nez v2, :cond_20
const-string v2, "impression"
iget-object v3, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
invoke-static {v2, p1, p2, v3}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
sget-object v2, Lcom/instagram/feed/c/b;->a:Lcom/instagram/feed/c/b;
invoke-direct {p0, p1, v2, v0, v1}, Lcom/instagram/feed/c/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;J)V
goto :goto_6
:cond_20
sget-object v2, Lcom/instagram/feed/c/b;->a:Lcom/instagram/feed/c/b;
invoke-direct {p0, p1, v2}, Lcom/instagram/feed/c/a;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;)J
move-result-wide v2
const-wide/32 v4, 0xea60
add-long/2addr v2, v4
cmp-long v2, v0, v2
if-lez v2, :cond_6
const-string v2, "sub_impression"
iget-object v3, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
invoke-static {v2, p1, p2, v3}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
sget-object v2, Lcom/instagram/feed/c/b;->a:Lcom/instagram/feed/c/b;
invoke-direct {p0, p1, v2, v0, v1}, Lcom/instagram/feed/c/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/b;J)V
goto :goto_6
.end method
.method public final b()V
.registers 10
iget-object v0, p0, Lcom/instagram/feed/c/a;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
:goto_e
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/c/i;
iget-object v1, v0, Lcom/instagram/feed/c/i;->a:Lcom/instagram/feed/d/l;
iget-object v2, v0, Lcom/instagram/feed/c/i;->b:Ljava/lang/Long;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
sub-long v2, v7, v2
iget v4, v0, Lcom/instagram/feed/c/i;->d:I
iget-object v5, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/instagram/feed/c/a;->a(Lcom/instagram/feed/d/l;JILcom/instagram/feed/g/a;)V
goto :goto_e
:cond_33
iget-object v0, p0, Lcom/instagram/feed/c/a;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method public final b(Lcom/instagram/feed/d/l;)V
.registers 9
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->e(Lcom/instagram/feed/d/l;)Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/instagram/feed/c/a;->c:Ljava/util/Map;
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/c/i;
if-nez v0, :cond_27
const-string v0, "ImpressionTracker"
const-string v1, "Viewable info missing for media with key %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_6
:cond_27
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v3, p0, Lcom/instagram/feed/c/a;->d:Ljava/util/Map;
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v4
new-instance v5, Lcom/instagram/feed/c/i;
iget-object v6, v0, Lcom/instagram/feed/c/i;->b:Ljava/lang/Long;
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
iget v2, v0, Lcom/instagram/feed/c/i;->d:I
invoke-direct {v5, p1, v6, v1, v2}, Lcom/instagram/feed/c/i;-><init>(Lcom/instagram/feed/d/l;Ljava/lang/Long;Ljava/lang/Long;I)V
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, v0, Lcom/instagram/feed/c/i;->b:Ljava/lang/Long;
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v2
iget v4, v0, Lcom/instagram/feed/c/i;->d:I
iget-object v5, p0, Lcom/instagram/feed/c/a;->e:Lcom/instagram/feed/g/a;
move-object v0, p0
move-object v1, p1
invoke-direct/range {v0 .. v5}, Lcom/instagram/feed/c/a;->a(Lcom/instagram/feed/d/l;JILcom/instagram/feed/g/a;)V
goto :goto_6
.end method
.method public final b(Lcom/instagram/feed/d/l;I)V
.registers 8
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->e(Lcom/instagram/feed/d/l;)Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/instagram/feed/c/a;->c:Ljava/util/Map;
invoke-direct {p0, p1}, Lcom/instagram/feed/c/a;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/instagram/feed/c/i;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
const/4 v4, 0x0
invoke-direct {v2, p1, v3, v4, p2}, Lcom/instagram/feed/c/i;-><init>(Lcom/instagram/feed/d/l;Ljava/lang/Long;Ljava/lang/Long;I)V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_6
.end method
.method public final c()V
.registers 11
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/instagram/feed/c/a;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_13
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3d
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/c/i;
new-instance v6, Lcom/instagram/feed/c/i;
iget-object v7, v0, Lcom/instagram/feed/c/i;->a:Lcom/instagram/feed/d/l;
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
const/4 v9, 0x0
iget v0, v0, Lcom/instagram/feed/c/i;->d:I
invoke-direct {v6, v7, v8, v9, v0}, Lcom/instagram/feed/c/i;-><init>(Lcom/instagram/feed/d/l;Ljava/lang/Long;Ljava/lang/Long;I)V
invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_13
:cond_3d
iget-object v0, p0, Lcom/instagram/feed/c/a;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
iget-object v0, p0, Lcom/instagram/feed/c/a;->c:Ljava/util/Map;
invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/instagram/feed/c/a;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
iget-object v0, p0, Lcom/instagram/feed/c/a;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method