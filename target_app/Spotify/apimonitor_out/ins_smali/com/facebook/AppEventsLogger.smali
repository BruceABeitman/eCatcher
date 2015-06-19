.class public Lcom/facebook/AppEventsLogger;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private static d:Ljava/util/Map;
.field private static e:Ljava/util/Timer;
.field private static f:Ljava/util/Timer;
.field private static g:Lcom/facebook/AppEventsLogger$FlushBehavior;
.field private static h:Z
.field private static i:Landroid/content/Context;
.field private static j:Ljava/lang/Object;
.field private static k:Ljava/lang/String;
.field private static l:Ljava/util/Map;
.field private static m:Ljava/util/Map;
.field private final b:Landroid/content/Context;
.field private final c:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/AppEventsLogger;
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/AppEventsLogger;->a:Ljava/lang/String;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
sput-object v0, Lcom/facebook/AppEventsLogger;->d:Ljava/util/Map;
sget-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->a:Lcom/facebook/AppEventsLogger$FlushBehavior;
sput-object v0, Lcom/facebook/AppEventsLogger;->g:Lcom/facebook/AppEventsLogger$FlushBehavior;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/AppEventsLogger;->j:Ljava/lang/Object;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/facebook/AppEventsLogger;->l:Ljava/util/Map;
new-instance v0, Lcom/facebook/AppEventsLogger$1;
invoke-direct {v0}, Lcom/facebook/AppEventsLogger$1;-><init>()V
sput-object v0, Lcom/facebook/AppEventsLogger;->m:Ljava/util/Map;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 9
const-wide/16 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "context"
invoke-static {p1, v0}, Lcom/facebook/internal/ak;->a(Ljava/lang/Object;Ljava/lang/String;)V
iput-object p1, p0, Lcom/facebook/AppEventsLogger;->b:Landroid/content/Context;
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_3a
new-instance v1, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
invoke-direct {v1, v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/Session;)V
iput-object v1, p0, Lcom/facebook/AppEventsLogger;->c:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
:goto_19
sget-object v1, Lcom/facebook/AppEventsLogger;->j:Ljava/lang/Object;
monitor-enter v1
:try_start_1c
sget-object v0, Lcom/facebook/AppEventsLogger;->k:Ljava/lang/String;
if-nez v0, :cond_26
invoke-static {p1, p2}, Lcom/facebook/internal/ai;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/AppEventsLogger;->k:Ljava/lang/String;
:cond_26
sget-object v0, Lcom/facebook/AppEventsLogger;->i:Landroid/content/Context;
if-nez v0, :cond_30
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
sput-object v0, Lcom/facebook/AppEventsLogger;->i:Landroid/content/Context;
:cond_30
monitor-exit v1
:try_end_31
.catchall {:try_start_1c .. :try_end_31} :catchall_49
sget-object v1, Lcom/facebook/AppEventsLogger;->j:Ljava/lang/Object;
monitor-enter v1
:try_start_34
sget-object v0, Lcom/facebook/AppEventsLogger;->e:Ljava/util/Timer;
if-eqz v0, :cond_4c
monitor-exit v1
:goto_39
:try_end_39
.catchall {:try_start_34 .. :try_end_39} :catchall_76
return-void
:cond_3a
if-nez p2, :cond_40
invoke-static {p1}, Lcom/facebook/internal/ai;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object p2
:cond_40
new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
const/4 v1, 0x0
invoke-direct {v0, v1, p2}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/facebook/AppEventsLogger;->c:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
goto :goto_19
:catchall_49
move-exception v0
monitor-exit v1
throw v0
:try_start_4c
:cond_4c
new-instance v0, Ljava/util/Timer;
invoke-direct {v0}, Ljava/util/Timer;-><init>()V
sput-object v0, Lcom/facebook/AppEventsLogger;->e:Ljava/util/Timer;
new-instance v0, Ljava/util/Timer;
invoke-direct {v0}, Ljava/util/Timer;-><init>()V
sput-object v0, Lcom/facebook/AppEventsLogger;->f:Ljava/util/Timer;
monitor-exit v1
:try_end_5b
.catchall {:try_start_4c .. :try_end_5b} :catchall_76
sget-object v0, Lcom/facebook/AppEventsLogger;->e:Ljava/util/Timer;
new-instance v1, Lcom/facebook/AppEventsLogger$2;
invoke-direct {v1}, Lcom/facebook/AppEventsLogger$2;-><init>()V
const-wide/32 v4, 0xea60
invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
sget-object v0, Lcom/facebook/AppEventsLogger;->f:Ljava/util/Timer;
new-instance v1, Lcom/facebook/AppEventsLogger$3;
invoke-direct {v1}, Lcom/facebook/AppEventsLogger$3;-><init>()V
const-wide/32 v4, 0x5265c00
invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
goto :goto_39
:catchall_76
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a()Lcom/facebook/AppEventsLogger$FlushBehavior;
.registers 2
sget-object v1, Lcom/facebook/AppEventsLogger;->j:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/AppEventsLogger;->g:Lcom/facebook/AppEventsLogger$FlushBehavior;
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;
.registers 3
new-instance v0, Lcom/facebook/AppEventsLogger;
invoke-direct {v0, p0, p1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V
return-object v0
.end method
.method private static a(Lcom/facebook/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/b;
.registers 16
const/4 v13, 0x1
const/4 v3, 0x0
const/4 v12, 0x0
new-instance v2, Lcom/facebook/b;
invoke-direct {v2, v12}, Lcom/facebook/b;-><init>(B)V
sget-object v0, Lcom/facebook/AppEventsLogger;->i:Landroid/content/Context;
invoke-static {v0}, Lcom/facebook/ah;->a(Landroid/content/Context;)Z
move-result v5
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_17
:goto_17
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7a
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
invoke-static {v0}, Lcom/facebook/AppEventsLogger;->a(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/d;
move-result-object v8
if-eqz v8, :cond_17
invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->b()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v12}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;Z)Lcom/facebook/internal/aj;
move-result-object v9
const-string v4, "%s/activities"
new-array v10, v13, [Ljava/lang/Object;
aput-object v1, v10, v12
invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v3}, Lcom/facebook/Request;->a(Ljava/lang/String;Lcom/facebook/model/GraphObject;)Lcom/facebook/Request;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/Request;->a()Landroid/os/Bundle;
move-result-object v1
if-nez v1, :cond_4a
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
:cond_4a
const-string v10, "access_token"
invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->a()Ljava/lang/String;
move-result-object v11
invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v4, v1}, Lcom/facebook/Request;->a(Landroid/os/Bundle;)V
invoke-virtual {v9}, Lcom/facebook/internal/aj;->b()Z
move-result v1
invoke-virtual {v9}, Lcom/facebook/internal/aj;->a()Z
move-result v9
invoke-virtual {v8, v4, v1, v9, v5}, Lcom/facebook/d;->a(Lcom/facebook/Request;ZZZ)I
move-result v1
if-nez v1, :cond_6b
move-object v0, v3
:goto_65
if-eqz v0, :cond_17
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_17
:cond_6b
iget v9, v2, Lcom/facebook/b;->a:I
add-int/2addr v1, v9
iput v1, v2, Lcom/facebook/b;->a:I
new-instance v1, Lcom/facebook/AppEventsLogger$5;
invoke-direct {v1, v0, v4, v8, v2}, Lcom/facebook/AppEventsLogger$5;-><init>(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/d;Lcom/facebook/b;)V
invoke-virtual {v4, v1}, Lcom/facebook/Request;->a(Lcom/facebook/p;)V
move-object v0, v4
goto :goto_65
:cond_7a
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_ae
sget-object v0, Lcom/facebook/LoggingBehavior;->e:Lcom/facebook/LoggingBehavior;
sget-object v0, Lcom/facebook/AppEventsLogger;->a:Ljava/lang/String;
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
iget v1, v2, Lcom/facebook/b;->a:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v12
invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$FlushReason;->toString()Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v13
invoke-static {}, Lcom/facebook/internal/v;->b()V
invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_ac
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/Request;
invoke-virtual {v0}, Lcom/facebook/Request;->d()Lcom/facebook/aa;
goto :goto_9c
:cond_ac
move-object v0, v2
:goto_ad
return-object v0
:cond_ae
move-object v0, v3
goto :goto_ad
.end method
.method private static a(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/d;
.registers 7
sget-object v1, Lcom/facebook/AppEventsLogger;->j:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/AppEventsLogger;->d:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/d;
if-nez v0, :cond_21
invoke-static {p0}, Lcom/facebook/internal/a;->a(Landroid/content/Context;)Lcom/facebook/internal/a;
move-result-object v2
new-instance v0, Lcom/facebook/d;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/facebook/AppEventsLogger;->k:Ljava/lang/String;
invoke-direct {v0, v2, v3, v4}, Lcom/facebook/d;-><init>(Lcom/facebook/internal/a;Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/facebook/AppEventsLogger;->d:Ljava/util/Map;
invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_21
monitor-exit v1
:try_end_22
.catchall {:try_start_3 .. :try_end_22} :catchall_23
return-object v0
:catchall_23
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static a(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/d;
.registers 3
sget-object v1, Lcom/facebook/AppEventsLogger;->j:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/AppEventsLogger;->d:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/d;
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_d
return-object v0
:catchall_d
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a(Landroid/content/Context;)V
.registers 5
invoke-static {p0}, Lcom/facebook/internal/ai;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
if-eqz p0, :cond_8
if-nez v0, :cond_10
:cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Both context and applicationId must be non-null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-static {p0, v0}, Lcom/facebook/ah;->a(Landroid/content/Context;Ljava/lang/String;)V
new-instance v1, Lcom/facebook/AppEventsLogger;
invoke-direct {v1, p0, v0}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V
const-string v0, "fb_mobile_activate_app"
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {v1, v0, v2, v3}, Lcom/facebook/AppEventsLogger;->a(Ljava/lang/String;Landroid/os/Bundle;Z)V
return-void
.end method
.method static synthetic a(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/aa;Lcom/facebook/d;Lcom/facebook/b;)V
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/facebook/aa;->a()Lcom/facebook/FacebookRequestError;
move-result-object v3
sget-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->a:Lcom/facebook/AppEventsLogger$FlushResult;
if-eqz v3, :cond_13
invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->b()I
move-result v0
const/4 v4, -0x1
if-ne v0, v4, :cond_33
sget-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->c:Lcom/facebook/AppEventsLogger$FlushResult;
:cond_13
:goto_13
sget-object v4, Lcom/facebook/LoggingBehavior;->e:Lcom/facebook/LoggingBehavior;
invoke-static {}, Lcom/facebook/ah;->a()Z
if-eqz v3, :cond_4a
:goto_1a
invoke-virtual {p2, v1}, Lcom/facebook/d;->a(Z)V
sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->c:Lcom/facebook/AppEventsLogger$FlushResult;
if-ne v0, v1, :cond_26
sget-object v1, Lcom/facebook/AppEventsLogger;->i:Landroid/content/Context;
invoke-static {v1, p0, p2}, Lcom/facebook/c;->a(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/d;)V
:cond_26
sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->a:Lcom/facebook/AppEventsLogger$FlushResult;
if-eq v0, v1, :cond_32
iget-object v1, p3, Lcom/facebook/b;->b:Lcom/facebook/AppEventsLogger$FlushResult;
sget-object v2, Lcom/facebook/AppEventsLogger$FlushResult;->c:Lcom/facebook/AppEventsLogger$FlushResult;
if-eq v1, v2, :cond_32
iput-object v0, p3, Lcom/facebook/b;->b:Lcom/facebook/AppEventsLogger$FlushResult;
:cond_32
return-void
:cond_33
const-string v0, "Failed:\n  Response: %s\n  Error %s"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/facebook/aa;->toString()Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v2
invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v1
invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
sget-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->b:Lcom/facebook/AppEventsLogger$FlushResult;
goto :goto_13
:cond_4a
move v1, v2
goto :goto_1a
.end method
.method static synthetic a(Lcom/facebook/AppEventsLogger$FlushReason;)V
.registers 6
sget-object v1, Lcom/facebook/AppEventsLogger;->j:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-boolean v0, Lcom/facebook/AppEventsLogger;->h:Z
if-eqz v0, :cond_9
monitor-exit v1
:goto_8
:cond_8
return-void
:cond_9
const/4 v0, 0x1
sput-boolean v0, Lcom/facebook/AppEventsLogger;->h:Z
new-instance v2, Ljava/util/HashSet;
sget-object v0, Lcom/facebook/AppEventsLogger;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
monitor-exit v1
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_48
invoke-static {}, Lcom/facebook/AppEventsLogger;->h()I
const/4 v0, 0x0
:try_start_1c
invoke-static {p0, v2}, Lcom/facebook/AppEventsLogger;->a(Lcom/facebook/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/b;
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_4b
move-result-object v0
:goto_20
sget-object v1, Lcom/facebook/AppEventsLogger;->j:Ljava/lang/Object;
monitor-enter v1
const/4 v2, 0x0
:try_start_24
sput-boolean v2, Lcom/facebook/AppEventsLogger;->h:Z
monitor-exit v1
:try_end_27
.catchall {:try_start_24 .. :try_end_27} :catchall_65
if-eqz v0, :cond_8
new-instance v1, Landroid/content/Intent;
const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"
iget v3, v0, Lcom/facebook/b;->a:I
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"
iget-object v0, v0, Lcom/facebook/b;->b:Lcom/facebook/AppEventsLogger$FlushResult;
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
sget-object v0, Lcom/facebook/AppEventsLogger;->i:Landroid/content/Context;
invoke-static {v0}, Landroid/support/v4/content/n;->a(Landroid/content/Context;)Landroid/support/v4/content/n;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/support/v4/content/n;->a(Landroid/content/Intent;)Z
goto :goto_8
:catchall_48
move-exception v0
monitor-exit v1
throw v0
:catch_4b
move-exception v1
sget-object v2, Lcom/facebook/AppEventsLogger;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Caught unexpected exception while flushing: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_20
:catchall_65
move-exception v0
monitor-exit v1
throw v0
.end method
.method private a(Ljava/lang/String;Landroid/os/Bundle;Z)V
.registers 14
const/4 v2, 0x0
new-instance v3, Lcom/facebook/AppEventsLogger$AppEvent;
invoke-direct {v3, p1, p2, p3}, Lcom/facebook/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;Z)V
iget-object v4, p0, Lcom/facebook/AppEventsLogger;->b:Landroid/content/Context;
iget-object v5, p0, Lcom/facebook/AppEventsLogger;->c:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
sget-object v0, Lcom/facebook/AppEventsLogger;->m:Ljava/util/Map;
invoke-virtual {v3}, Lcom/facebook/AppEventsLogger$AppEvent;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/a;
if-nez v0, :cond_45
move v0, v2
:goto_19
if-nez v0, :cond_44
invoke-static {v4, v5}, Lcom/facebook/AppEventsLogger;->a(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/d;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/facebook/d;->a(Lcom/facebook/AppEventsLogger$AppEvent;)V
sget-object v1, Lcom/facebook/AppEventsLogger;->j:Ljava/lang/Object;
monitor-enter v1
:try_start_25
invoke-static {}, Lcom/facebook/AppEventsLogger;->a()Lcom/facebook/AppEventsLogger$FlushBehavior;
move-result-object v0
sget-object v2, Lcom/facebook/AppEventsLogger$FlushBehavior;->b:Lcom/facebook/AppEventsLogger$FlushBehavior;
if-eq v0, v2, :cond_43
invoke-static {}, Lcom/facebook/AppEventsLogger;->g()I
move-result v0
const/16 v2, 0x64
if-le v0, v2, :cond_43
sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->e:Lcom/facebook/AppEventsLogger$FlushReason;
invoke-static {}, Lcom/facebook/ah;->b()Ljava/util/concurrent/Executor;
move-result-object v2
new-instance v3, Lcom/facebook/AppEventsLogger$4;
invoke-direct {v3, v0}, Lcom/facebook/AppEventsLogger$4;-><init>(Lcom/facebook/AppEventsLogger$FlushReason;)V
invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
:cond_43
monitor-exit v1
:try_end_44
.catchall {:try_start_25 .. :try_end_44} :catchall_89
:cond_44
return-void
:cond_45
sget-object v1, Lcom/facebook/AppEventsLogger;->l:Ljava/util/Map;
invoke-virtual {v3}, Lcom/facebook/AppEventsLogger$AppEvent;->a()Ljava/lang/String;
move-result-object v6
invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Date;
if-eqz v1, :cond_87
new-instance v6, Ljava/util/Date;
invoke-direct {v6}, Ljava/util/Date;-><init>()V
invoke-virtual {v6}, Ljava/util/Date;->getTime()J
move-result-wide v6
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v8
sub-long/2addr v6, v8
invoke-virtual {v0}, Lcom/facebook/a;->a()I
move-result v1
mul-int/lit16 v1, v1, 0x3e8
int-to-long v8, v1
cmp-long v1, v6, v8
if-gez v1, :cond_87
const/4 v1, 0x1
:goto_6d
if-eqz v1, :cond_77
invoke-virtual {v0}, Lcom/facebook/a;->b()Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
move-result-object v0
sget-object v2, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->b:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
if-ne v0, v2, :cond_85
:cond_77
sget-object v0, Lcom/facebook/AppEventsLogger;->l:Ljava/util/Map;
invoke-virtual {v3}, Lcom/facebook/AppEventsLogger$AppEvent;->a()Ljava/lang/String;
move-result-object v2
new-instance v6, Ljava/util/Date;
invoke-direct {v6}, Ljava/util/Date;-><init>()V
invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_85
move v0, v1
goto :goto_19
:cond_87
move v1, v2
goto :goto_6d
:catchall_89
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static b(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;
.registers 3
new-instance v0, Lcom/facebook/AppEventsLogger;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V
return-object v0
.end method
.method public static b()V
.registers 2
sget-object v0, Lcom/facebook/AppEventsLogger;->i:Landroid/content/Context;
sget-object v1, Lcom/facebook/AppEventsLogger;->d:Ljava/util/Map;
invoke-static {v0, v1}, Lcom/facebook/c;->a(Landroid/content/Context;Ljava/util/Map;)V
return-void
.end method
.method static synthetic d()Ljava/lang/Object;
.registers 1
sget-object v0, Lcom/facebook/AppEventsLogger;->j:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic e()Ljava/util/Map;
.registers 1
sget-object v0, Lcom/facebook/AppEventsLogger;->d:Ljava/util/Map;
return-object v0
.end method
.method static synthetic f()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/facebook/AppEventsLogger;->a:Ljava/lang/String;
return-object v0
.end method
.method private static g()I
.registers 4
sget-object v2, Lcom/facebook/AppEventsLogger;->j:Ljava/lang/Object;
monitor-enter v2
const/4 v0, 0x0
:try_start_4
sget-object v1, Lcom/facebook/AppEventsLogger;->d:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v0
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/d;
invoke-virtual {v0}, Lcom/facebook/d;->a()I
move-result v0
add-int/2addr v0, v1
move v1, v0
goto :goto_f
:cond_22
monitor-exit v2
:try_end_23
.catchall {:try_start_4 .. :try_end_23} :catchall_24
return v1
:catchall_24
move-exception v0
monitor-exit v2
throw v0
.end method
.method private static h()I
.registers 5
sget-object v0, Lcom/facebook/AppEventsLogger;->i:Landroid/content/Context;
invoke-static {v0}, Lcom/facebook/c;->a(Landroid/content/Context;)Lcom/facebook/c;
move-result-object v2
const/4 v0, 0x0
invoke-virtual {v2}, Lcom/facebook/c;->a()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v0
:goto_10
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
sget-object v4, Lcom/facebook/AppEventsLogger;->i:Landroid/content/Context;
invoke-static {v4, v0}, Lcom/facebook/AppEventsLogger;->a(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/d;
move-result-object v4
invoke-virtual {v2, v0}, Lcom/facebook/c;->a(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Ljava/util/List;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/facebook/d;->a(Ljava/util/List;)V
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/2addr v0, v1
move v1, v0
goto :goto_10
:cond_30
return v1
.end method
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/facebook/AppEventsLogger;->a(Ljava/lang/String;Landroid/os/Bundle;Z)V
return-void
.end method
.method public final b(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Lcom/facebook/AppEventsLogger;->a(Ljava/lang/String;Landroid/os/Bundle;Z)V
return-void
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/AppEventsLogger;->c:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->b()Ljava/lang/String;
move-result-object v0
return-object v0
.end method