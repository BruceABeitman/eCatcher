.class public final Lcom/facebook/ah;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private static final b:Ljava/util/HashSet;
.field private static volatile c:Ljava/util/concurrent/Executor;
.field private static volatile d:Z
.field private static volatile e:Ljava/lang/String;
.field private static volatile f:Ljava/lang/String;
.field private static volatile g:Ljava/lang/String;
.field private static volatile h:Z
.field private static volatile i:Ljava/lang/String;
.field private static j:Ljava/util/concurrent/atomic/AtomicLong;
.field private static volatile k:Z
.field private static final l:Ljava/lang/Object;
.field private static final m:Landroid/net/Uri;
.field private static final n:Ljava/util/concurrent/BlockingQueue;
.field private static final o:Ljava/util/concurrent/ThreadFactory;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x0
const-class v0, Lcom/facebook/ah;
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/ah;->a:Ljava/lang/String;
new-instance v0, Ljava/util/HashSet;
const/4 v1, 0x1
new-array v1, v1, [Lcom/facebook/LoggingBehavior;
sget-object v2, Lcom/facebook/LoggingBehavior;->f:Lcom/facebook/LoggingBehavior;
aput-object v2, v1, v3
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/facebook/ah;->b:Ljava/util/HashSet;
sput-boolean v3, Lcom/facebook/ah;->h:Z
const-string v0, "facebook.com"
sput-object v0, Lcom/facebook/ah;->i:Ljava/lang/String;
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
const-wide/32 v1, 0x10000
invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V
sput-object v0, Lcom/facebook/ah;->j:Ljava/util/concurrent/atomic/AtomicLong;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/ah;->l:Ljava/lang/Object;
const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/facebook/ah;->m:Landroid/net/Uri;
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
const/16 v1, 0xa
invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V
sput-object v0, Lcom/facebook/ah;->n:Ljava/util/concurrent/BlockingQueue;
new-instance v0, Lcom/facebook/ah$1;
invoke-direct {v0}, Lcom/facebook/ah$1;-><init>()V
sput-object v0, Lcom/facebook/ah;->o:Ljava/util/concurrent/ThreadFactory;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/aa;
.registers 14
if-eqz p0, :cond_4
if-nez p1, :cond_1f
:try_start_4
:cond_4
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Both context and applicationId must be non-null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_c
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_c
:catch_c
move-exception v0
move-object v1, v0
invoke-static {}, Lcom/facebook/internal/ai;->a()V
new-instance v0, Lcom/facebook/aa;
const/4 v2, 0x0
const/4 v3, 0x0
new-instance v4, Lcom/facebook/FacebookRequestError;
const/4 v5, 0x0
invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v0, v2, v3, v4}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
:goto_1e
return-object v0
:try_start_1f
:cond_1f
invoke-static {p0}, Lcom/facebook/internal/a;->a(Landroid/content/Context;)Lcom/facebook/internal/a;
move-result-object v0
const-string v1, "com.facebook.sdk.attributionTracking"
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "ping"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-wide/16 v4, 0x0
invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v4
const/4 v6, 0x0
invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
if-nez p2, :cond_60
const/4 v7, 0x0
sput-boolean v7, Lcom/facebook/ah;->d:Z
:cond_60
invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;
move-result-object v7
const-string v8, "event"
const-string v9, "MOBILE_APP_INSTALL"
invoke-interface {v7, v8, v9}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
invoke-static {p0, p1}, Lcom/facebook/internal/ai;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-static {p0}, Lcom/facebook/ah;->a(Landroid/content/Context;)Z
move-result v9
invoke-static {v7, v0, v8, v9}, Lcom/facebook/internal/ai;->a(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/a;Ljava/lang/String;Z)V
const-string v8, "auto_publish"
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v9
invoke-interface {v7, v8, v9}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
const-string v8, "application_package_name"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v9
invoke-interface {v7, v8, v9}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
const-string v8, "%s/activities"
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
aput-object p1, v9, v10
invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-static {v8, v7}, Lcom/facebook/Request;->a(Ljava/lang/String;Lcom/facebook/model/GraphObject;)Lcom/facebook/Request;
:try_end_97
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_97} :catch_c
move-result-object v7
const-wide/16 v8, 0x0
cmp-long v4, v4, v8
if-eqz v4, :cond_d7
const/4 v0, 0x0
if-eqz v6, :cond_aa
:try_start_a1
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
:try_end_a9
.catch Lorg/json/JSONException; {:try_start_a1 .. :try_end_a9} :catch_c9
.catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a9} :catch_c
move-result-object v0
:cond_aa
move-object v4, v0
:goto_ab
if-nez v4, :cond_cc
:try_start_ad
const-string v0, "true"
const/4 v1, 0x0
new-instance v2, Lcom/facebook/v;
const/4 v3, 0x1
new-array v3, v3, [Lcom/facebook/Request;
const/4 v4, 0x0
aput-object v7, v3, v4
invoke-direct {v2, v3}, Lcom/facebook/v;-><init>([Lcom/facebook/Request;)V
const/4 v3, 0x1
invoke-static {v0, v1, v2, v3}, Lcom/facebook/aa;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/v;Z)Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/aa;
goto/16 :goto_1e
:catch_c9
move-exception v1
move-object v4, v0
goto :goto_ab
:cond_cc
new-instance v0, Lcom/facebook/aa;
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v5, 0x1
invoke-direct/range {v0 .. v5}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V
goto/16 :goto_1e
:cond_d7
invoke-virtual {v0}, Lcom/facebook/internal/a;->b()Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_eb
invoke-virtual {v0}, Lcom/facebook/internal/a;->a()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_eb
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "No attribution id available to send to server."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_eb
const/4 v0, 0x0
invoke-static {p1, v0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;Z)Lcom/facebook/internal/aj;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/internal/aj;->a()Z
move-result v0
if-nez v0, :cond_fe
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Install attribution has been disabled on the server."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_fe
invoke-virtual {v7}, Lcom/facebook/Request;->d()Lcom/facebook/aa;
move-result-object v0
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-virtual {v0}, Lcom/facebook/aa;->b()Lcom/facebook/model/GraphObject;
move-result-object v2
if-eqz v2, :cond_12c
invoke-virtual {v0}, Lcom/facebook/aa;->b()Lcom/facebook/model/GraphObject;
move-result-object v2
invoke-interface {v2}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
move-result-object v2
if-eqz v2, :cond_12c
invoke-virtual {v0}, Lcom/facebook/aa;->b()Lcom/facebook/model/GraphObject;
move-result-object v2
invoke-interface {v2}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_12c
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
:try_end_12f
.catch Ljava/lang/Exception; {:try_start_ad .. :try_end_12f} :catch_c
goto/16 :goto_1e
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {}, Lcom/facebook/ah;->b()Ljava/util/concurrent/Executor;
move-result-object v1
new-instance v2, Lcom/facebook/ah$2;
invoke-direct {v2, v0, p1}, Lcom/facebook/ah$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public static final a()Z
.registers 2
sget-object v0, Lcom/facebook/ah;->b:Ljava/util/HashSet;
monitor-enter v0
const/4 v1, 0x0
monitor-exit v0
return v1
.end method
.method public static a(Landroid/content/Context;)Z
.registers 4
const/4 v2, 0x0
const-string v0, "com.facebook.sdk.appEventPreferences"
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "limitEventUsage"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/aa;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/facebook/ah;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/aa;
move-result-object v0
return-object v0
.end method
.method public static b()Ljava/util/concurrent/Executor;
.registers 9
sget-object v8, Lcom/facebook/ah;->l:Ljava/lang/Object;
monitor-enter v8
:try_start_3
sget-object v0, Lcom/facebook/ah;->c:Ljava/util/concurrent/Executor;
if-nez v0, :cond_1f
invoke-static {}, Lcom/facebook/ah;->j()Ljava/util/concurrent/Executor;
move-result-object v0
if-nez v0, :cond_1d
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x5
const/16 v2, 0x80
const-wide/16 v3, 0x1
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
sget-object v6, Lcom/facebook/ah;->n:Ljava/util/concurrent/BlockingQueue;
sget-object v7, Lcom/facebook/ah;->o:Ljava/util/concurrent/ThreadFactory;
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
:cond_1d
sput-object v0, Lcom/facebook/ah;->c:Ljava/util/concurrent/Executor;
:cond_1f
monitor-exit v8
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_23
sget-object v0, Lcom/facebook/ah;->c:Ljava/util/concurrent/Executor;
return-object v0
:catchall_23
move-exception v0
monitor-exit v8
throw v0
.end method
.method public static b(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x1
sput-boolean v0, Lcom/facebook/ah;->h:Z
if-nez p0, :cond_6
:goto_5
:cond_5
return-void
:try_start_6
:cond_6
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x80
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
:try_end_13
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_13} :catch_37
move-result-object v0
if-eqz v0, :cond_5
iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
if-eqz v1, :cond_5
sget-object v1, Lcom/facebook/ah;->f:Ljava/lang/String;
if-nez v1, :cond_28
iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string v2, "com.facebook.sdk.ApplicationId"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/facebook/ah;->f:Ljava/lang/String;
:cond_28
sget-object v1, Lcom/facebook/ah;->g:Ljava/lang/String;
if-nez v1, :cond_5
iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string v1, "com.facebook.sdk.ClientToken"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/ah;->g:Ljava/lang/String;
goto :goto_5
:catch_37
move-exception v0
goto :goto_5
.end method
.method public static c()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/facebook/ah;->i:Ljava/lang/String;
return-object v0
.end method
.method static c(Landroid/content/Context;)V
.registers 2
sget-boolean v0, Lcom/facebook/ah;->h:Z
if-nez v0, :cond_7
invoke-static {p0}, Lcom/facebook/ah;->b(Landroid/content/Context;)V
:cond_7
return-void
.end method
.method public static d()Z
.registers 1
sget-boolean v0, Lcom/facebook/ah;->d:Z
return v0
.end method
.method public static e()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/facebook/ah;->e:Ljava/lang/String;
return-object v0
.end method
.method public static f()J
.registers 2
sget-object v0, Lcom/facebook/ah;->j:Ljava/util/concurrent/atomic/AtomicLong;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
move-result-wide v0
return-wide v0
.end method
.method public static g()Z
.registers 1
sget-boolean v0, Lcom/facebook/ah;->k:Z
return v0
.end method
.method public static h()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/facebook/ah;->f:Ljava/lang/String;
return-object v0
.end method
.method public static i()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/facebook/ah;->g:Ljava/lang/String;
return-object v0
.end method
.method private static j()Ljava/util/concurrent/Executor;
.registers 3
const/4 v1, 0x0
:try_start_1
const-class v0, Landroid/os/AsyncTask;
const-string v2, "THREAD_POOL_EXECUTOR"
invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
:try_end_8
.catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_8} :catch_12
move-result-object v0
const/4 v2, 0x0
:try_start_a
invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_d
.catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_d} :catch_15
move-result-object v0
if-nez v0, :cond_18
move-object v0, v1
:goto_11
return-object v0
:catch_12
move-exception v0
move-object v0, v1
goto :goto_11
:catch_15
move-exception v0
move-object v0, v1
goto :goto_11
:cond_18
instance-of v2, v0, Ljava/util/concurrent/Executor;
if-nez v2, :cond_1e
move-object v0, v1
goto :goto_11
:cond_1e
check-cast v0, Ljava/util/concurrent/Executor;
goto :goto_11
.end method