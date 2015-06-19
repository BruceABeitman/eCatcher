.class public final Lcom/facebook/cj;
.super Ljava/lang/Object;
.source "Settings.java"
.field private static final a:Ljava/util/HashSet;
.field private static volatile b:Ljava/util/concurrent/Executor;
.field private static volatile c:Z
.field private static final d:Ljava/lang/Object;
.field private static final e:Landroid/net/Uri;
.field private static final f:Ljava/util/concurrent/BlockingQueue;
.field private static final g:Ljava/util/concurrent/ThreadFactory;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Ljava/util/HashSet;
const/4 v1, 0x1
new-array v1, v1, [Lcom/facebook/ak;
const/4 v2, 0x0
sget-object v3, Lcom/facebook/ak;->e:Lcom/facebook/ak;
aput-object v3, v1, v2
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/facebook/cj;->a:Ljava/util/HashSet;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/cj;->d:Ljava/lang/Object;
const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/facebook/cj;->e:Landroid/net/Uri;
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
const/16 v1, 0xa
invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V
sput-object v0, Lcom/facebook/cj;->f:Ljava/util/concurrent/BlockingQueue;
new-instance v0, Lcom/facebook/ck;
invoke-direct {v0}, Lcom/facebook/ck;-><init>()V
sput-object v0, Lcom/facebook/cj;->g:Ljava/util/concurrent/ThreadFactory;
return-void
.end method
.method private static a(Landroid/content/ContentResolver;)Ljava/lang/String;
.registers 7
const/4 v3, 0x0
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string v1, "aid"
aput-object v1, v2, v0
sget-object v1, Lcom/facebook/cj;->e:Landroid/net/Uri;
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
.method public static a()Ljava/util/concurrent/Executor;
.registers 9
sget-object v8, Lcom/facebook/cj;->d:Ljava/lang/Object;
monitor-enter v8
:try_start_3
sget-object v0, Lcom/facebook/cj;->b:Ljava/util/concurrent/Executor;
if-nez v0, :cond_1f
invoke-static {}, Lcom/facebook/cj;->c()Ljava/util/concurrent/Executor;
move-result-object v0
if-nez v0, :cond_1d
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x5
const/16 v2, 0x80
const-wide/16 v3, 0x1
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
sget-object v6, Lcom/facebook/cj;->f:Ljava/util/concurrent/BlockingQueue;
sget-object v7, Lcom/facebook/cj;->g:Ljava/util/concurrent/ThreadFactory;
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
:cond_1d
sput-object v0, Lcom/facebook/cj;->b:Ljava/util/concurrent/Executor;
:cond_1f
monitor-exit v8
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_23
sget-object v0, Lcom/facebook/cj;->b:Ljava/util/concurrent/Executor;
return-object v0
:catchall_23
move-exception v0
monitor-exit v8
throw v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
.registers 3
invoke-static {p0, p1}, Lcom/facebook/cj;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/bn;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Lcom/facebook/bn;->a()Lcom/facebook/ac;
move-result-object v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static final a(Lcom/facebook/ak;)Z
.registers 3
sget-object v1, Lcom/facebook/cj;->a:Ljava/util/HashSet;
monitor-enter v1
:try_start_3
invoke-static {}, Lcom/instagram/common/o/a;->b()Z
move-result v0
if-eqz v0, :cond_14
sget-object v0, Lcom/facebook/cj;->a:Ljava/util/HashSet;
invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_12
monitor-exit v1
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_16
return v0
:cond_14
const/4 v0, 0x0
goto :goto_12
:catchall_16
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/bn;
.registers 16
const-wide/16 v12, 0x0
const/4 v1, 0x0
if-eqz p0, :cond_7
if-nez p1, :cond_1f
:try_start_7
:cond_7
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v2, "Both context and applicationId must be non-null"
invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_f
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_f
:catch_f
move-exception v0
move-object v2, v0
invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/lang/Exception;)V
new-instance v0, Lcom/facebook/bn;
new-instance v3, Lcom/facebook/ac;
invoke-direct {v3, v1, v2}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v0, v1, v1, v3}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V
:goto_1e
return-object v0
:try_start_1f
:cond_1f
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {v0}, Lcom/facebook/cj;->a(Landroid/content/ContentResolver;)Ljava/lang/String;
move-result-object v0
const-string v2, "com.facebook.sdk.attributionTracking"
const/4 v3, 0x0
invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "ping"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "json"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const-wide/16 v5, 0x0
invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v5
const/4 v7, 0x0
invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-static {}, Lcom/facebook/h/c;->a()Lcom/facebook/h/b;
move-result-object v8
const-string v9, "%s/activities"
const/4 v10, 0x1
new-array v10, v10, [Ljava/lang/Object;
const/4 v11, 0x0
aput-object p1, v10, v11
invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-static {v9, v8}, Lcom/facebook/bc;->a(Ljava/lang/String;Lcom/facebook/h/b;)Lcom/facebook/bc;
:try_end_72
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_72} :catch_f
move-result-object v8
cmp-long v5, v5, v12
if-eqz v5, :cond_ae
if-eqz v7, :cond_f9
:try_start_79
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/facebook/h/c;->a(Lorg/json/JSONObject;)Lcom/facebook/h/b;
:try_end_81
.catch Lorg/json/JSONException; {:try_start_79 .. :try_end_81} :catch_a1
.catch Ljava/lang/Exception; {:try_start_79 .. :try_end_81} :catch_f
move-result-object v0
:goto_82
move-object v2, v0
:goto_83
if-nez v2, :cond_a4
:try_start_85
const-string v0, "true"
const/4 v2, 0x0
new-instance v3, Lcom/facebook/bl;
const/4 v4, 0x1
new-array v4, v4, [Lcom/facebook/bc;
const/4 v5, 0x0
aput-object v8, v4, v5
invoke-direct {v3, v4}, Lcom/facebook/bl;-><init>([Lcom/facebook/bc;)V
const/4 v4, 0x1
invoke-static {v0, v2, v3, v4}, Lcom/facebook/bn;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;
move-result-object v0
const/4 v2, 0x0
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/bn;
goto/16 :goto_1e
:catch_a1
move-exception v0
move-object v2, v1
goto :goto_83
:cond_a4
new-instance v0, Lcom/facebook/bn;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x1
invoke-direct {v0, v3, v4, v2, v5}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/b;Z)V
goto/16 :goto_1e
:cond_ae
if-nez v0, :cond_b8
new-instance v0, Lcom/facebook/z;
const-string v2, "No attribution id returned from the Facebook application"
invoke-direct {v0, v2}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
throw v0
:cond_b8
invoke-static {p1}, Lcom/facebook/g/t;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_c6
new-instance v0, Lcom/facebook/z;
const-string v2, "Install attribution has been disabled on the server."
invoke-direct {v0, v2}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
throw v0
:cond_c6
invoke-virtual {v8}, Lcom/facebook/bc;->b()Lcom/facebook/bn;
move-result-object v0
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-virtual {v0}, Lcom/facebook/bn;->b()Lcom/facebook/h/b;
move-result-object v3
if-eqz v3, :cond_f4
invoke-virtual {v0}, Lcom/facebook/bn;->b()Lcom/facebook/h/b;
move-result-object v3
invoke-interface {v3}, Lcom/facebook/h/b;->d()Lorg/json/JSONObject;
move-result-object v3
if-eqz v3, :cond_f4
invoke-virtual {v0}, Lcom/facebook/bn;->b()Lcom/facebook/h/b;
move-result-object v3
invoke-interface {v3}, Lcom/facebook/h/b;->d()Lorg/json/JSONObject;
move-result-object v3
invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_f4
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
:try_end_f7
.catch Ljava/lang/Exception; {:try_start_85 .. :try_end_f7} :catch_f
goto/16 :goto_1e
:cond_f9
move-object v0, v1
goto :goto_82
.end method
.method public static b()Z
.registers 1
sget-boolean v0, Lcom/facebook/cj;->c:Z
return v0
.end method
.method private static c()Ljava/util/concurrent/Executor;
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