.class public final Lcom/flurry/sdk/em;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/flurry/sdk/eq;
.field private static a:Lcom/flurry/sdk/em;
.field private final b:Ljava/util/List;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/flurry/sdk/em;->b()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/em;->b:Ljava/util/List;
return-void
.end method
.method public static declared-synchronized a()Lcom/flurry/sdk/em;
.registers 2
const-class v1, Lcom/flurry/sdk/em;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/flurry/sdk/em;->a:Lcom/flurry/sdk/em;
if-nez v0, :cond_e
new-instance v0, Lcom/flurry/sdk/em;
invoke-direct {v0}, Lcom/flurry/sdk/em;-><init>()V
sput-object v0, Lcom/flurry/sdk/em;->a:Lcom/flurry/sdk/em;
:cond_e
sget-object v0, Lcom/flurry/sdk/em;->a:Lcom/flurry/sdk/em;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static b()Ljava/util/List;
.registers 4
const/16 v3, 0xa
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lcom/flurry/sdk/en;
const-string v2, "com.flurry.android.impl.analytics.FlurryAnalyticsModule"
invoke-direct {v1, v2, v3}, Lcom/flurry/sdk/en;-><init>(Ljava/lang/String;I)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/flurry/sdk/en;
const-string v2, "com.flurry.android.impl.ads.FlurryAdModule"
invoke-direct {v1, v2, v3}, Lcom/flurry/sdk/en;-><init>(Ljava/lang/String;I)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/flurry/sdk/dg;)V
.registers 4
iget-object v0, p0, Lcom/flurry/sdk/em;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/eq;
invoke-interface {v0, p1}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/dg;)V
goto :goto_6
:cond_16
return-void
.end method
.method public a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
.registers 5
iget-object v0, p0, Lcom/flurry/sdk/em;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/eq;
invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
goto :goto_6
:cond_16
return-void
.end method
.method public b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
.registers 5
iget-object v0, p0, Lcom/flurry/sdk/em;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/eq;
invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
goto :goto_6
:cond_16
return-void
.end method
.method public c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
.registers 5
iget-object v0, p0, Lcom/flurry/sdk/em;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/eq;
invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
goto :goto_6
:cond_16
return-void
.end method