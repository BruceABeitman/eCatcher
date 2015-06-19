.class public final Lcom/facebook/bm;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/util/HashSet; = null
.field private static volatile b:Ljava/util/concurrent/Executor; = null
.field private static volatile c:Z = false
.field private static final d:I = 0x5
.field private static final e:I = 0x80
.field private static final f:I = 0x1
.field private static final g:Ljava/lang/Object; = null
.field private static final h:Landroid/net/Uri; = null
.field private static final i:Ljava/lang/String; = "aid"
.field private static final j:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"
.field private static final k:Ljava/lang/String; = "%s/activities"
.field private static final l:Ljava/lang/String; = "MOBILE_APP_INSTALL"
.field private static final m:Ljava/lang/String; = "supports_attribution"
.field private static final n:Ljava/lang/String; = "fields"
.field private static final o:Ljava/lang/String; = "event"
.field private static final p:Ljava/lang/String; = "attribution"
.field private static final q:Ljava/util/concurrent/BlockingQueue;
.field private static final r:Ljava/util/concurrent/ThreadFactory;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lcom/facebook/bm;->a:Ljava/util/HashSet;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/bm;->g:Ljava/lang/Object;
const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/facebook/bm;->h:Landroid/net/Uri;
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
const/16 v1, 0xa
invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V
sput-object v0, Lcom/facebook/bm;->q:Ljava/util/concurrent/BlockingQueue;
new-instance v0, Lcom/facebook/bm$1;
invoke-direct {v0}, Lcom/facebook/bm$1;-><init>()V
sput-object v0, Lcom/facebook/bm;->r:Ljava/util/concurrent/ThreadFactory;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/ContentResolver;)Ljava/lang/String;
.registers 7
const/4 v3, 0x0
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string v1, "aid"
aput-object v1, v2, v0
sget-object v1, Lcom/facebook/bm;->h:Landroid/net/Uri;
move-object v0, p0
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_1a
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-nez v1, :cond_1b
:goto_1a
:cond_1a
return-object v3
:cond_1b
const-string v1, "aid"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto :goto_1a
.end method
.method public static final a()Ljava/util/Set;
.registers 3
sget-object v1, Lcom/facebook/bm;->a:Ljava/util/HashSet;
monitor-enter v1
:try_start_3
new-instance v0, Ljava/util/HashSet;
sget-object v2, Lcom/facebook/bm;->a:Ljava/util/HashSet;
invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
monitor-exit v1
return-object v0
:catchall_10
move-exception v0
monitor-exit v1
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_10
throw v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {}, Lcom/facebook/bm;->c()Ljava/util/concurrent/Executor;
move-result-object v1
new-instance v2, Lcom/facebook/bm$2;
invoke-direct {v2, v0, p1}, Lcom/facebook/bm$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public static final a(Lcom/facebook/af;)V
.registers 3
sget-object v1, Lcom/facebook/bm;->a:Ljava/util/HashSet;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/bm;->a:Ljava/util/HashSet;
invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public static a(Ljava/util/concurrent/Executor;)V
.registers 3
const-string v0, "executor"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
sget-object v1, Lcom/facebook/bm;->g:Ljava/lang/Object;
monitor-enter v1
:try_start_8
sput-object p0, Lcom/facebook/bm;->b:Ljava/util/concurrent/Executor;
monitor-exit v1
return-void
:catchall_c
move-exception v0
monitor-exit v1
:try_end_e
.catchall {:try_start_8 .. :try_end_e} :catchall_c
throw v0
.end method
.method public static a(Z)V
.registers 1
sput-boolean p0, Lcom/facebook/bm;->c:Z
return-void
.end method
.method public static final b()V
.registers 2
sget-object v1, Lcom/facebook/bm;->a:Ljava/util/HashSet;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/bm;->a:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public static final b(Lcom/facebook/af;)V
.registers 3
sget-object v1, Lcom/facebook/bm;->a:Ljava/util/HashSet;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/bm;->a:Ljava/util/HashSet;
invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
.registers 14
const-wide/16 v10, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
if-nez p1, :cond_7
:goto_6
return v2
:try_start_7
:cond_7
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {v0}, Lcom/facebook/bm;->a(Landroid/content/ContentResolver;)Ljava/lang/String;
move-result-object v5
const-string v0, "com.facebook.sdk.attributionTracking"
const/4 v3, 0x0
invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "ping"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
const-wide/16 v3, 0x0
invoke-interface {v6, v7, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v3
cmp-long v0, v3, v10
if-nez v0, :cond_b9
if-eqz v5, :cond_b9
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v8, "fields"
const-string v9, "supports_attribution"
invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/4 v8, 0x0
const/4 v9, 0x0
invoke-static {v8, p1, v9}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/aj;)Lcom/facebook/ai;
move-result-object v8
invoke-virtual {v8, v0}, Lcom/facebook/ai;->a(Landroid/os/Bundle;)V
invoke-virtual {v8}, Lcom/facebook/ai;->l()Lcom/facebook/as;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/as;->b()Lcom/facebook/c/c;
move-result-object v0
const-string v8, "supports_attribution"
invoke-interface {v0, v8}, Lcom/facebook/c/c;->f(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
instance-of v8, v0, Ljava/lang/Boolean;
if-nez v8, :cond_7e
new-instance v1, Lorg/json/JSONException;
const-string v3, "%s contains %s instead of a Boolean"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
const-string v6, "supports_attribution"
aput-object v6, v4, v5
const/4 v5, 0x1
aput-object v0, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_73
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_73} :catch_73
:catch_73
move-exception v0
const-string v1, "Facebook-publish"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/facebook/b/p;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:cond_7e
:try_start_7e
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_b9
invoke-static {}, Lcom/facebook/c/d;->a()Lcom/facebook/c/c;
move-result-object v0
const-string v3, "event"
const-string v4, "MOBILE_APP_INSTALL"
invoke-interface {v0, v3, v4}, Lcom/facebook/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v3, "attribution"
invoke-interface {v0, v3, v5}, Lcom/facebook/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v3, "%s/activities"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p1, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static {v4, v3, v0, v5}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/c/c;Lcom/facebook/aj;)Lcom/facebook/ai;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/ai;->l()Lcom/facebook/as;
invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-interface {v0, v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:try_end_b9
.catch Ljava/lang/Exception; {:try_start_7e .. :try_end_b9} :catch_73
:cond_b9
cmp-long v0, v3, v10
if-eqz v0, :cond_c1
move v0, v1
:goto_be
move v2, v0
goto/16 :goto_6
:cond_c1
move v0, v2
goto :goto_be
.end method
.method public static c()Ljava/util/concurrent/Executor;
.registers 9
sget-object v8, Lcom/facebook/bm;->g:Ljava/lang/Object;
monitor-enter v8
:try_start_3
sget-object v0, Lcom/facebook/bm;->b:Ljava/util/concurrent/Executor;
if-nez v0, :cond_1f
invoke-static {}, Lcom/facebook/bm;->e()Ljava/util/concurrent/Executor;
move-result-object v0
if-nez v0, :cond_1d
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x5
const/16 v2, 0x80
const-wide/16 v3, 0x1
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
sget-object v6, Lcom/facebook/bm;->q:Ljava/util/concurrent/BlockingQueue;
sget-object v7, Lcom/facebook/bm;->r:Ljava/util/concurrent/ThreadFactory;
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
:cond_1d
sput-object v0, Lcom/facebook/bm;->b:Ljava/util/concurrent/Executor;
:cond_1f
monitor-exit v8
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_23
sget-object v0, Lcom/facebook/bm;->b:Ljava/util/concurrent/Executor;
return-object v0
:catchall_23
move-exception v0
:try_start_24
monitor-exit v8
:try_end_25
.catchall {:try_start_24 .. :try_end_25} :catchall_23
throw v0
.end method
.method public static final c(Lcom/facebook/af;)Z
.registers 3
sget-object v1, Lcom/facebook/bm;->a:Ljava/util/HashSet;
monitor-enter v1
const/4 v0, 0x0
:try_start_4
monitor-exit v1
return v0
:catchall_6
move-exception v0
monitor-exit v1
:try_end_8
.catchall {:try_start_4 .. :try_end_8} :catchall_6
throw v0
.end method
.method public static d()Z
.registers 1
sget-boolean v0, Lcom/facebook/bm;->c:Z
return v0
.end method
.method private static e()Ljava/util/concurrent/Executor;
.registers 3
const/4 v1, 0x0
:try_start_1
const-class v0, Landroid/os/AsyncTask;
const-string v2, "THREAD_POOL_EXECUTOR"
invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
:try_end_8
.catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_8} :catch_d
move-result-object v0
if-nez v0, :cond_10
move-object v0, v1
:goto_c
return-object v0
:catch_d
move-exception v0
move-object v0, v1
goto :goto_c
:cond_10
const/4 v2, 0x0
:try_start_11
invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_14
.catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_14} :catch_19
move-result-object v0
if-nez v0, :cond_1c
move-object v0, v1
goto :goto_c
:catch_19
move-exception v0
move-object v0, v1
goto :goto_c
:cond_1c
instance-of v2, v0, Ljava/util/concurrent/Executor;
if-nez v2, :cond_22
move-object v0, v1
goto :goto_c
:cond_22
check-cast v0, Ljava/util/concurrent/Executor;
goto :goto_c
.end method