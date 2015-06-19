.class public Lcom/instagram/ui/e/a;
.super Ljava/lang/Object;
.source "UIComponentStateTracker.java"
.implements Lcom/instagram/common/l/b/a;
.field private static final a:Ljava/lang/Class;
.field private final b:Lcom/instagram/common/u/b/a;
.field private final c:Ljava/util/WeakHashMap;
.field private final d:Ljava/util/LinkedList;
.field private e:J
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/ui/e/a;
sput-object v0, Lcom/instagram/ui/e/a;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Lcom/instagram/common/u/b/a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/ui/e/a;->b:Lcom/instagram/common/u/b/a;
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/ui/e/a;->c:Ljava/util/WeakHashMap;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/ui/e/a;->d:Ljava/util/LinkedList;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/instagram/ui/e/a;->e:J
return-void
.end method
.method static synthetic a(Lcom/instagram/ui/e/a;)Lcom/instagram/common/u/b/a;
.registers 2
iget-object v0, p0, Lcom/instagram/ui/e/a;->b:Lcom/instagram/common/u/b/a;
return-object v0
.end method
.method private declared-synchronized a(Lcom/instagram/ui/e/c;)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/ui/e/a;->d:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
const/16 v1, 0xa
if-le v0, v1, :cond_10
iget-object v0, p0, Lcom/instagram/ui/e/a;->d:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
:cond_10
invoke-static {p1}, Lcom/instagram/ui/e/c;->c(Lcom/instagram/ui/e/c;)J
move-result-wide v0
const-wide/16 v2, 0xa
cmp-long v0, v0, v2
if-lez v0, :cond_1f
iget-object v0, p0, Lcom/instagram/ui/e/a;->d:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
:try_end_1f
.catchall {:try_start_1 .. :try_end_1f} :catchall_21
:cond_1f
monitor-exit p0
return-void
:catchall_21
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized a(Z)V
.registers 11
const-wide/16 v7, 0x1388
monitor-enter p0
if-eqz p1, :cond_a0
:try_start_5
iget-object v0, p0, Lcom/instagram/ui/e/a;->b:Lcom/instagram/common/u/b/a;
invoke-static {}, Lcom/instagram/common/u/b/a;->c()J
move-result-wide v0
sub-long v2, v0, v7
iget-object v0, p0, Lcom/instagram/ui/e/a;->c:Ljava/util/WeakHashMap;
invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_17
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/e/c;
const/4 v4, 0x0
invoke-static {v0, v4, v2, v3}, Lcom/instagram/ui/e/c;->a(Lcom/instagram/ui/e/c;ZJ)V
:try_end_27
.catchall {:try_start_5 .. :try_end_27} :catchall_28
goto :goto_17
:catchall_28
move-exception v0
monitor-exit p0
throw v0
:try_start_2b
:cond_2b
const-string v1, ""
:try_start_2d
:try_end_2d
.catchall {:try_start_2b .. :try_end_2d} :catchall_28
new-instance v4, Ljava/io/StringWriter;
invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V
sget-object v0, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;
move-result-object v5
invoke-virtual {v5}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V
iget-object v0, p0, Lcom/instagram/ui/e/a;->c:Ljava/util/WeakHashMap;
invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_45
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7a
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/e/c;
invoke-static {v0, v5}, Lcom/instagram/ui/e/c;->a(Lcom/instagram/ui/e/c;Lcom/fasterxml/jackson/a/h;)V
:try_end_54
.catchall {:try_start_2d .. :try_end_54} :catchall_28
.catch Ljava/io/IOException; {:try_start_2d .. :try_end_54} :catch_55
goto :goto_45
:catch_55
move-exception v0
:try_start_56
sget-object v0, Lcom/instagram/ui/e/a;->a:Ljava/lang/Class;
move-object v0, v1
:goto_59
iget-wide v4, p0, Lcom/instagram/ui/e/a;->e:J
sub-long v1, v2, v4
cmp-long v3, v1, v7
if-lez v3, :cond_78
new-instance v3, Lcom/instagram/common/analytics/b;
const-string v4, "content_unavailable_event"
const/4 v5, 0x0
invoke-direct {v3, v4, v5}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v4, "view_stats"
invoke-virtual {v3, v4, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v3, "in_app_duration_ms"
invoke-virtual {v0, v3, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
:cond_78
:goto_78
:try_end_78
.catchall {:try_start_56 .. :try_end_78} :catchall_28
monitor-exit p0
return-void
:cond_7a
:try_start_7a
iget-object v0, p0, Lcom/instagram/ui/e/a;->d:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_80
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_90
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/e/c;
invoke-static {v0, v5}, Lcom/instagram/ui/e/c;->a(Lcom/instagram/ui/e/c;Lcom/fasterxml/jackson/a/h;)V
goto :goto_80
:cond_90
iget-object v0, p0, Lcom/instagram/ui/e/a;->d:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
invoke-virtual {v5}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V
invoke-virtual {v5}, Lcom/fasterxml/jackson/a/h;->close()V
invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
:try_end_9e
.catchall {:try_start_7a .. :try_end_9e} :catchall_28
.catch Ljava/io/IOException; {:try_start_7a .. :try_end_9e} :catch_55
move-result-object v0
goto :goto_59
:try_start_a0
:cond_a0
iget-object v0, p0, Lcom/instagram/ui/e/a;->b:Lcom/instagram/common/u/b/a;
invoke-static {}, Lcom/instagram/common/u/b/a;->c()J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/ui/e/a;->e:J
invoke-virtual {p0}, Lcom/instagram/ui/e/a;->c()V
:try_end_ab
.catchall {:try_start_a0 .. :try_end_ab} :catchall_28
goto :goto_78
.end method
.method private static b(Landroid/view/View;)Z
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eqz v0, :cond_b
move v0, v1
:goto_9
return v0
:cond_a
move-object p0, v0
:cond_b
invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
instance-of v0, v0, Landroid/view/ViewGroup;
if-eqz v0, :cond_29
invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;
move-result-object v3
if-ne v3, v0, :cond_21
move v0, v2
goto :goto_9
:cond_21
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v3
if-eqz v3, :cond_a
move v0, v1
goto :goto_9
:cond_29
invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_31
move v0, v2
goto :goto_9
:cond_31
move v0, v1
goto :goto_9
.end method
.method public final a()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/instagram/ui/e/a;->a(Z)V
return-void
.end method
.method public final declared-synchronized a(Landroid/view/View;)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/ui/e/a;->c:Ljava/util/WeakHashMap;
invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/e/c;
if-eqz v0, :cond_26
sget v1, Lcom/instagram/ui/e/b;->a:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/e/c;->a(I)V
sget-object v1, Lcom/instagram/ui/e/a;->a:Ljava/lang/Class;
invoke-static {v0}, Lcom/instagram/ui/e/c;->b(Lcom/instagram/ui/e/c;)Ljava/lang/String;
invoke-static {v0}, Lcom/instagram/ui/e/c;->c(Lcom/instagram/ui/e/c;)J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
iget-object v1, p0, Lcom/instagram/ui/e/a;->c:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0, v0}, Lcom/instagram/ui/e/a;->a(Lcom/instagram/ui/e/c;)V
:goto_24
:try_end_24
.catchall {:try_start_1 .. :try_end_24} :catchall_29
monitor-exit p0
return-void
:cond_26
:try_start_26
sget-object v0, Lcom/instagram/ui/e/a;->a:Ljava/lang/Class;
:try_end_28
.catchall {:try_start_26 .. :try_end_28} :catchall_29
goto :goto_24
:catchall_29
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Landroid/view/View;I)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/ui/e/a;->c:Ljava/util/WeakHashMap;
invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/e/c;
if-eqz v0, :cond_10
invoke-virtual {v0, p2}, Lcom/instagram/ui/e/c;->a(I)V
:goto_e
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_13
monitor-exit p0
return-void
:cond_10
:try_start_10
sget-object v0, Lcom/instagram/ui/e/a;->a:Ljava/lang/Class;
:try_end_12
.catchall {:try_start_10 .. :try_end_12} :catchall_13
goto :goto_e
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Landroid/view/View;Ljava/lang/String;)V
.registers 5
monitor-enter p0
if-eqz p2, :cond_d
:try_start_3
iget-object v0, p0, Lcom/instagram/ui/e/a;->c:Ljava/util/WeakHashMap;
invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_28
move-result v0
const/16 v1, 0xf
if-lt v0, v1, :cond_f
:cond_d
:goto_d
monitor-exit p0
return-void
:cond_f
:try_start_f
iget-object v0, p0, Lcom/instagram/ui/e/a;->c:Ljava/util/WeakHashMap;
invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/e/c;
if-nez v0, :cond_24
new-instance v0, Lcom/instagram/ui/e/c;
const/4 v1, 0x0
invoke-direct {v0, p0, p2, v1}, Lcom/instagram/ui/e/c;-><init>(Lcom/instagram/ui/e/a;Ljava/lang/String;B)V
iget-object v1, p0, Lcom/instagram/ui/e/a;->c:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_24
invoke-static {v0}, Lcom/instagram/ui/e/c;->a(Lcom/instagram/ui/e/c;)V
:try_end_27
.catchall {:try_start_f .. :try_end_27} :catchall_28
goto :goto_d
:catchall_28
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final b()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/ui/e/a;->a(Z)V
return-void
.end method
.method public final declared-synchronized c()V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/ui/e/a;->c:Ljava/util/WeakHashMap;
invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_34
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/ui/e/c;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-static {v0}, Lcom/instagram/ui/e/a;->b(Landroid/view/View;)Z
move-result v0
iget-object v3, p0, Lcom/instagram/ui/e/a;->b:Lcom/instagram/common/u/b/a;
invoke-static {}, Lcom/instagram/common/u/b/a;->c()J
move-result-wide v3
invoke-static {v1, v0, v3, v4}, Lcom/instagram/ui/e/c;->a(Lcom/instagram/ui/e/c;ZJ)V
:try_end_30
.catchall {:try_start_1 .. :try_end_30} :catchall_31
goto :goto_b
:catchall_31
move-exception v0
monitor-exit p0
throw v0
:cond_34
monitor-exit p0
return-void
.end method
.method public final d()V
.registers 2
invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/a;)V
return-void
.end method