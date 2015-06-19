.class public final Lcom/facebook/Settings;
.super Ljava/lang/Object;
.source "Settings.java"
.field private static final ANALYTICS_EVENT:Ljava/lang/String; = "event"
.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"
.field private static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri; = null
.field private static final ATTRIBUTION_KEY:Ljava/lang/String; = "attribution"
.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"
.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x5
.field private static final DEFAULT_KEEP_ALIVE:I = 0x1
.field private static final DEFAULT_MAXIMUM_POOL_SIZE:I = 0x80
.field private static final DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory; = null
.field private static final DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue; = null
.field private static final LOCK:Ljava/lang/Object; = null
.field private static final MOBILE_INSTALL_EVENT:Ljava/lang/String; = "MOBILE_APP_INSTALL"
.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"
.field private static volatile executor:Ljava/util/concurrent/Executor;
.field private static final loggingBehaviors:Ljava/util/HashSet;
.field private static volatile shouldAutoPublishInstall:Z
.method static constructor <clinit>()V
.registers 4
new-instance v0, Ljava/util/HashSet;
const/4 v1, 0x1
new-array v1, v1, [Lcom/facebook/LoggingBehavior;
const/4 v2, 0x0
sget-object v3, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;
aput-object v3, v1, v2
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;
const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/facebook/Settings;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
const/16 v1, 0xa
invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V
sput-object v0, Lcom/facebook/Settings;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
new-instance v0, Lcom/facebook/Settings$1;
invoke-direct {v0}, Lcom/facebook/Settings$1;-><init>()V
sput-object v0, Lcom/facebook/Settings;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
.registers 3
sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;
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
.method public static final clearLoggingBehaviors()V
.registers 2
sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;
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
.method private static getAsyncTaskExecutor()Ljava/util/concurrent/Executor;
.registers 6
const/4 v3, 0x0
const/4 v1, 0x0
:try_start_2
const-class v4, Landroid/os/AsyncTask;
const-string v5, "THREAD_POOL_EXECUTOR"
invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
:try_end_9
.catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_9} :catch_e
move-result-object v1
if-nez v1, :cond_11
move-object v2, v3
:goto_d
return-object v2
:catch_e
move-exception v0
move-object v2, v3
goto :goto_d
:cond_11
const/4 v2, 0x0
const/4 v4, 0x0
:try_start_13
invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_16
.catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_16} :catch_1b
move-result-object v2
if-nez v2, :cond_1e
move-object v2, v3
goto :goto_d
:catch_1b
move-exception v0
move-object v2, v3
goto :goto_d
:cond_1e
instance-of v4, v2, Ljava/util/concurrent/Executor;
if-nez v4, :cond_24
move-object v2, v3
goto :goto_d
:cond_24
check-cast v2, Ljava/util/concurrent/Executor;
goto :goto_d
.end method
.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
.registers 9
const/4 v3, 0x0
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string v1, "aid"
aput-object v1, v2, v0
sget-object v1, Lcom/facebook/Settings;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;
move-object v0, p0
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v7
if-eqz v7, :cond_1a
invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-nez v0, :cond_1c
:cond_1a
move-object v6, v3
:goto_1b
return-object v6
:cond_1c
const-string v0, "aid"
invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-interface {v7}, Landroid/database/Cursor;->close()V
goto :goto_1b
.end method
.method public static getExecutor()Ljava/util/concurrent/Executor;
.registers 9
sget-object v8, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;
monitor-enter v8
:try_start_3
sget-object v1, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;
if-nez v1, :cond_1f
invoke-static {}, Lcom/facebook/Settings;->getAsyncTaskExecutor()Ljava/util/concurrent/Executor;
move-result-object v0
if-nez v0, :cond_1d
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x5
const/16 v2, 0x80
const-wide/16 v3, 0x1
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
sget-object v6, Lcom/facebook/Settings;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
sget-object v7, Lcom/facebook/Settings;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
:cond_1d
sput-object v0, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;
:cond_1f
monitor-exit v8
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_23
sget-object v1, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;
return-object v1
:catchall_23
move-exception v1
:try_start_24
monitor-exit v8
:try_end_25
.catchall {:try_start_24 .. :try_end_25} :catchall_23
throw v1
.end method
.method public static final getLoggingBehaviors()Ljava/util/Set;
.registers 3
sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;
monitor-enter v1
:try_start_3
new-instance v0, Ljava/util/HashSet;
sget-object v2, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;
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
.method public static getMigrationBundle()Ljava/lang/String;
.registers 1
const-string v0, "fbsdk:20121026"
return-object v0
.end method
.method public static getSdkVersion()Ljava/lang/String;
.registers 1
const-string v0, "3.0.0"
return-object v0
.end method
.method public static getShouldAutoPublishInstall()Z
.registers 1
sget-boolean v0, Lcom/facebook/Settings;->shouldAutoPublishInstall:Z
return v0
.end method
.method public static final isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
.registers 3
sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;
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
.method public static publishInstallAndWait(Landroid/content/Context;Ljava/lang/String;)Z
.registers 4
invoke-static {p0, p1}, Lcom/facebook/Settings;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/Response;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;
move-result-object v1
if-nez v1, :cond_e
const/4 v1, 0x1
:goto_d
return v1
:cond_e
const/4 v1, 0x0
goto :goto_d
.end method
.method public static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/Response;
.registers 25
if-eqz p0, :cond_4
if-nez p1, :cond_29
:try_start_4
:cond_4
new-instance v18, Ljava/lang/IllegalArgumentException;
const-string v19, "Both context and applicationId must be non-null"
invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v18
:catch_c
:try_end_c
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_c
move-exception v5
const-string v18, "Facebook-publish"
move-object/from16 v0, v18
invoke-static {v0, v5}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
new-instance v18, Lcom/facebook/Response;
const/16 v19, 0x0
const/16 v20, 0x0
new-instance v21, Lcom/facebook/FacebookRequestError;
const/16 v22, 0x0
move-object/from16 v0, v21
move-object/from16 v1, v22
invoke-direct {v0, v1, v5}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct/range {v18 .. v21}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
:goto_28
return-object v18
:cond_29
:try_start_29
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v18
invoke-static/range {v18 .. v18}, Lcom/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
move-result-object v4
const-string v18, "com.facebook.sdk.attributionTracking"
const/16 v19, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v18
move/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v13
new-instance v18, Ljava/lang/StringBuilder;
invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v18
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, "ping"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
new-instance v18, Ljava/lang/StringBuilder;
invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v18
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, "json"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
const-wide/16 v18, 0x0
move-wide/from16 v0, v18
invoke-interface {v13, v12, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v9
const/16 v18, 0x0
move-object/from16 v0, v18
invoke-interface {v13, v8, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;
move-result-object v14
const-string v18, "event"
const-string v19, "MOBILE_APP_INSTALL"
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-interface {v14, v0, v1}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
const-string v18, "attribution"
move-object/from16 v0, v18
invoke-interface {v14, v0, v4}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
const-string v18, "%s/activities"
const/16 v19, 0x1
move/from16 v0, v19
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v19, v0
const/16 v20, 0x0
aput-object p1, v19, v20
invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v17
const/16 v18, 0x0
const/16 v19, 0x0
move-object/from16 v0, v18
move-object/from16 v1, v17
move-object/from16 v2, v19
invoke-static {v0, v1, v14, v2}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
:try_end_b2
.catch Ljava/lang/Exception; {:try_start_29 .. :try_end_b2} :catch_c
move-result-object v15
const-wide/16 v18, 0x0
cmp-long v18, v9, v18
if-eqz v18, :cond_103
const/4 v7, 0x0
if-eqz v11, :cond_c7
:try_start_bc
new-instance v18, Lorg/json/JSONObject;
move-object/from16 v0, v18
invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static/range {v18 .. v18}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
:try_end_c6
.catch Lorg/json/JSONException; {:try_start_bc .. :try_end_c6} :catch_152
.catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c6} :catch_c
move-result-object v7
:goto_c7
:cond_c7
if-nez v7, :cond_ee
:try_start_c9
const-string v18, "true"
const/16 v19, 0x0
new-instance v20, Lcom/facebook/RequestBatch;
const/16 v21, 0x1
move/from16 v0, v21
new-array v0, v0, [Lcom/facebook/Request;
move-object/from16 v21, v0
const/16 v22, 0x0
aput-object v15, v21, v22
invoke-direct/range {v20 .. v21}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V
const/16 v21, 0x1
invoke-static/range {v18 .. v21}, Lcom/facebook/Response;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
move-result-object v18
const/16 v19, 0x0
invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v18
check-cast v18, Lcom/facebook/Response;
goto/16 :goto_28
:cond_ee
new-instance v18, Lcom/facebook/Response;
const/16 v19, 0x0
const/16 v20, 0x0
const/16 v21, 0x1
move-object/from16 v0, v18
move-object/from16 v1, v19
move-object/from16 v2, v20
move/from16 v3, v21
invoke-direct {v0, v1, v2, v7, v3}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObject;Z)V
goto/16 :goto_28
:cond_103
if-nez v4, :cond_10d
new-instance v18, Lcom/facebook/FacebookException;
const-string v19, "No attribution id returned from the Facebook application"
invoke-direct/range {v18 .. v19}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v18
:cond_10d
invoke-static/range {p1 .. p1}, Lcom/facebook/internal/Utility;->queryAppAttributionSupportAndWait(Ljava/lang/String;)Z
move-result v18
if-nez v18, :cond_11b
new-instance v18, Lcom/facebook/FacebookException;
const-string v19, "Install attribution has been disabled on the server."
invoke-direct/range {v18 .. v19}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v18
:cond_11b
invoke-virtual {v15}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;
move-result-object v16
invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
invoke-interface {v6, v12, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-virtual/range {v16 .. v16}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;
move-result-object v18
if-eqz v18, :cond_14b
invoke-virtual/range {v16 .. v16}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;
move-result-object v18
invoke-interface/range {v18 .. v18}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
move-result-object v18
if-eqz v18, :cond_14b
invoke-virtual/range {v16 .. v16}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;
move-result-object v18
invoke-interface/range {v18 .. v18}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
invoke-interface {v6, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_14b
invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
:try_end_14e
.catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_14e} :catch_c
move-object/from16 v18, v16
goto/16 :goto_28
:catch_152
move-exception v18
goto/16 :goto_c7
.end method
.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V
return-void
.end method
.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V
.registers 6
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;
move-result-object v1
new-instance v2, Lcom/facebook/Settings$2;
invoke-direct {v2, v0, p1, p2}, Lcom/facebook/Settings$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public static final removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
.registers 3
sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;
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
.method public static setExecutor(Ljava/util/concurrent/Executor;)V
.registers 3
const-string v0, "executor"
invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V
sget-object v1, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;
monitor-enter v1
:try_start_8
sput-object p0, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;
monitor-exit v1
return-void
:catchall_c
move-exception v0
monitor-exit v1
:try_end_e
.catchall {:try_start_8 .. :try_end_e} :catchall_c
throw v0
.end method
.method public static setShouldAutoPublishInstall(Z)V
.registers 1
sput-boolean p0, Lcom/facebook/Settings;->shouldAutoPublishInstall:Z
return-void
.end method