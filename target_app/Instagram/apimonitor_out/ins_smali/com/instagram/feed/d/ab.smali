.class public final Lcom/instagram/feed/d/ab;
.super Ljava/lang/Object;
.source "SeenDirectShareRequestManager.java"
.field private static a:Ljava/util/HashMap;
.field private static b:Lcom/instagram/feed/d/ab;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/instagram/feed/d/ab;->a:Ljava/util/HashMap;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/instagram/feed/d/ab;
.registers 1
sget-object v0, Lcom/instagram/feed/d/ab;->b:Lcom/instagram/feed/d/ab;
if-nez v0, :cond_7
invoke-static {}, Lcom/instagram/feed/d/ab;->b()V
:cond_7
sget-object v0, Lcom/instagram/feed/d/ab;->b:Lcom/instagram/feed/d/ab;
return-object v0
.end method
.method private static a(Lcom/instagram/feed/d/l;)V
.registers 3
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->am()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/instagram/feed/d/l;->b(J)V
invoke-static {}, Lcom/instagram/feed/d/ab;->c()V
return-void
.end method
.method private static declared-synchronized b()V
.registers 2
const-class v1, Lcom/instagram/feed/d/ab;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/feed/d/ab;->b:Lcom/instagram/feed/d/ab;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_11
if-eqz v0, :cond_9
:goto_7
monitor-exit v1
return-void
:try_start_9
:cond_9
new-instance v0, Lcom/instagram/feed/d/ab;
invoke-direct {v0}, Lcom/instagram/feed/d/ab;-><init>()V
sput-object v0, Lcom/instagram/feed/d/ab;->b:Lcom/instagram/feed/d/ab;
:try_end_10
.catchall {:try_start_9 .. :try_end_10} :catchall_11
goto :goto_7
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static c()V
.registers 1
const-string v0, "InboxFragment.UPDATE_INBOX"
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z
return-void
.end method
.method private declared-synchronized c(Lcom/instagram/feed/d/aa;)V
.registers 4
monitor-enter p0
:try_start_1
sget-object v0, Lcom/instagram/feed/d/ab;->a:Ljava/util/HashMap;
invoke-virtual {p1}, Lcom/instagram/feed/d/aa;->g()Lcom/instagram/feed/d/l;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/aa;
if-ne v0, p1, :cond_20
sget-object v0, Lcom/instagram/feed/d/ab;->a:Ljava/util/HashMap;
invoke-virtual {p1}, Lcom/instagram/feed/d/aa;->g()Lcom/instagram/feed/d/l;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_20
:try_end_20
.catchall {:try_start_1 .. :try_end_20} :catchall_22
monitor-exit p0
return-void
:catchall_22
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V
.registers 8
monitor-enter p0
:try_start_1
invoke-virtual {p3}, Lcom/instagram/feed/d/l;->al()J
move-result-wide v0
invoke-virtual {p3}, Lcom/instagram/feed/d/l;->am()J
move-result-wide v2
cmp-long v0, v0, v2
if-gez v0, :cond_21
new-instance v0, Lcom/instagram/feed/d/aa;
invoke-direct {v0, p1, p2, p3}, Lcom/instagram/feed/d/aa;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V
sget-object v1, Lcom/instagram/feed/d/ab;->a:Ljava/util/HashMap;
invoke-virtual {p3}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p3}, Lcom/instagram/feed/d/ab;->a(Lcom/instagram/feed/d/l;)V
invoke-virtual {v0}, Lcom/instagram/feed/d/aa;->h()V
:cond_21
:try_end_21
.catchall {:try_start_1 .. :try_end_21} :catchall_23
monitor-exit p0
return-void
:catchall_23
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Lcom/instagram/feed/d/aa;)V
.registers 7
monitor-enter p0
:try_start_1
invoke-direct {p0, p1}, Lcom/instagram/feed/d/ab;->c(Lcom/instagram/feed/d/aa;)V
invoke-virtual {p1}, Lcom/instagram/feed/d/aa;->g()Lcom/instagram/feed/d/l;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/feed/d/aa;->n()J
move-result-wide v1
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->an()J
move-result-wide v3
cmp-long v1, v1, v3
if-lez v1, :cond_1b
invoke-virtual {p1}, Lcom/instagram/feed/d/aa;->n()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/d/l;->c(J)V
:cond_1b
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_1d
monitor-exit p0
return-void
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method final declared-synchronized a(Lcom/instagram/feed/d/l;J)V
.registers 6
monitor-enter p0
:try_start_1
sget-object v0, Lcom/instagram/feed/d/ab;->a:Ljava/util/HashMap;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
invoke-virtual {p1, p2, p3}, Lcom/instagram/feed/d/l;->b(J)V
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
:cond_10
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized b(Lcom/instagram/feed/d/aa;)V
.registers 5
monitor-enter p0
:try_start_1
invoke-direct {p0, p1}, Lcom/instagram/feed/d/ab;->c(Lcom/instagram/feed/d/aa;)V
invoke-virtual {p1}, Lcom/instagram/feed/d/aa;->g()Lcom/instagram/feed/d/l;
move-result-object v0
sget-object v1, Lcom/instagram/feed/d/ab;->a:Ljava/util/HashMap;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1e
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->an()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/d/l;->b(J)V
invoke-static {}, Lcom/instagram/feed/d/ab;->c()V
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_20
:cond_1e
monitor-exit p0
return-void
:catchall_20
move-exception v0
monitor-exit p0
throw v0
.end method