.class public Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/flurry/sdk/eq;
.field private static a:Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
.field private b:Lcom/flurry/sdk/da;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized getInstance()Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
.registers 2
const-class v1, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->a:Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
if-nez v0, :cond_e
new-instance v0, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
invoke-direct {v0}, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;-><init>()V
sput-object v0, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->a:Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
:cond_e
sget-object v0, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->a:Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public a()Lcom/flurry/sdk/da;
.registers 2
iget-object v0, p0, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->b:Lcom/flurry/sdk/da;
return-object v0
.end method
.method public a(Lcom/flurry/sdk/dg;)V
.registers 2
return-void
.end method
.method public a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
.registers 4
iget-object v0, p0, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->b:Lcom/flurry/sdk/da;
if-nez v0, :cond_b
new-instance v0, Lcom/flurry/sdk/da;
invoke-direct {v0}, Lcom/flurry/sdk/da;-><init>()V
iput-object v0, p0, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->b:Lcom/flurry/sdk/da;
:cond_b
return-void
.end method
.method public b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
.registers 3
return-void
.end method
.method public c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
.registers 3
return-void
.end method