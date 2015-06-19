.class public final Lcom/instagram/j/d;
.super Ljava/lang/Object;
.source "AppStartPerformanceTracer.java"
.field private static a:Lcom/instagram/j/d;
.field private b:Lcom/instagram/j/f;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/instagram/j/d;
.registers 1
sget-object v0, Lcom/instagram/j/d;->a:Lcom/instagram/j/d;
if-nez v0, :cond_b
new-instance v0, Lcom/instagram/j/d;
invoke-direct {v0}, Lcom/instagram/j/d;-><init>()V
sput-object v0, Lcom/instagram/j/d;->a:Lcom/instagram/j/d;
:cond_b
sget-object v0, Lcom/instagram/j/d;->a:Lcom/instagram/j/d;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/j/d;)Lcom/instagram/j/f;
.registers 2
iget-object v0, p0, Lcom/instagram/j/d;->b:Lcom/instagram/j/f;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/j/f;JJLjava/util/List;)V
.registers 6
invoke-static/range {p0 .. p5}, Lcom/instagram/j/d;->b(Lcom/instagram/j/f;JJLjava/util/List;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/j/d;)Lcom/instagram/j/f;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/j/d;->b:Lcom/instagram/j/f;
return-object v0
.end method
.method private static b(Lcom/instagram/j/f;JJLjava/util/List;)V
.registers 23
const/4 v8, 0x0
const/4 v7, 0x0
const/4 v6, 0x0
const-wide/16 v4, -0x1
const-wide/16 v2, -0x1
invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v10
move v9, v8
move v8, v7
move v7, v6
move-wide v13, v4
move-wide v5, v13
move-wide v15, v2
move-wide v3, v15
:goto_12
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_6e
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/facebook/e/c/g;
const-string v11, "mainActivityResume"
invoke-virtual {v2}, Lcom/facebook/e/c/g;->d()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_35
invoke-virtual {v2}, Lcom/facebook/e/c/g;->f()J
move-result-wide v5
sub-long v5, v5, p3
const-wide/32 v11, 0xf4240
div-long/2addr v5, v11
goto :goto_12
:cond_35
const-string v11, "feedFetchStart"
invoke-virtual {v2}, Lcom/facebook/e/c/g;->d()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_44
const/4 v2, 0x1
move v7, v2
goto :goto_12
:cond_44
const-string v11, "feedFetchEnd"
invoke-virtual {v2}, Lcom/facebook/e/c/g;->d()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_53
const/4 v2, 0x1
move v8, v2
goto :goto_12
:cond_53
const-string v11, "loadFeedFromDiskCache"
invoke-virtual {v2}, Lcom/facebook/e/c/g;->d()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_a7
const/4 v4, 0x1
invoke-virtual {v2}, Lcom/facebook/e/c/g;->f()J
move-result-wide v2
sub-long v2, v2, p3
const-wide/32 v11, 0xf4240
div-long/2addr v2, v11
:goto_6a
move v9, v4
move-wide v13, v2
move-wide v3, v13
goto :goto_12
:cond_6e
new-instance v2, Lcom/instagram/common/analytics/b;
invoke-static/range {p0 .. p0}, Lcom/instagram/j/f;->b(Lcom/instagram/j/f;)Ljava/lang/String;
move-result-object v10
const/4 v11, 0x0
invoke-direct {v2, v10, v11}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v10, "init_to_usable_ms"
move-wide/from16 v0, p1
invoke-virtual {v2, v10, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v10, "init_to_activity_resume_ms"
invoke-virtual {v2, v10, v5, v6}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v5, "did_fetch_feed"
invoke-virtual {v2, v5, v7}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v5, "did_load_feed_from_disk_cache"
invoke-virtual {v2, v5, v9}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v5, "did_load_feed_from_network"
invoke-virtual {v2, v5, v8}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
move-result-object v2
if-eqz v9, :cond_9f
const-string v5, "init_to_load_feed_from_disk_ms"
invoke-virtual {v2, v5, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
:cond_9f
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v3
invoke-interface {v3, v2}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
return-void
:cond_a7
move-wide v13, v3
move-wide v2, v13
move v4, v9
goto :goto_6a
.end method
.method public final a(Lcom/instagram/j/f;)V
.registers 7
iget-object v0, p0, Lcom/instagram/j/d;->b:Lcom/instagram/j/f;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iput-object p1, p0, Lcom/instagram/j/d;->b:Lcom/instagram/j/f;
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
iget-object v2, p0, Lcom/instagram/j/d;->b:Lcom/instagram/j/f;
invoke-static {v2}, Lcom/instagram/j/f;->a(Lcom/instagram/j/f;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/facebook/e/c/a;->a(Ljava/lang/String;)Lcom/facebook/e/c/a;
move-result-object v2
invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;
move-result-object v3
new-instance v4, Lcom/instagram/j/e;
invoke-direct {v4, p0, v2, v0, v1}, Lcom/instagram/j/e;-><init>(Lcom/instagram/j/d;Lcom/facebook/e/c/a;J)V
invoke-virtual {v3, v4}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
goto :goto_4
.end method