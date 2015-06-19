.class public abstract Lcom/bbm/ui/widget/e;
.super Ljava/lang/Object;
.source "ObservableRemoteViewsFactory.java"
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/bbm/j/h;
.field protected a:Lcom/bbm/j/k;
.field private final b:I
.field private final c:I
.field private final d:Landroid/content/Context;
.field private e:Z
.field private f:Lcom/bbm/j/r;
.field private g:Ljava/util/List;
.field private h:Ljava/util/List;
.field private i:Ljava/util/Map;
.field private final j:Landroid/os/Handler;
.field private k:Lcom/bbm/util/cr;
.method public constructor <init>(Landroid/content/Context;I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/widget/e;->e:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/widget/e;->g:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/widget/e;->h:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/widget/e;->i:Ljava/util/Map;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/bbm/ui/widget/e;->j:Landroid/os/Handler;
iput-object p1, p0, Lcom/bbm/ui/widget/e;->d:Landroid/content/Context;
iput p2, p0, Lcom/bbm/ui/widget/e;->b:I
const v0, 0x7f0a0385
iput v0, p0, Lcom/bbm/ui/widget/e;->c:I
iget-object v0, p0, Lcom/bbm/ui/widget/e;->j:Landroid/os/Handler;
new-instance v1, Lcom/bbm/ui/widget/f;
invoke-direct {v1, p0}, Lcom/bbm/ui/widget/f;-><init>(Lcom/bbm/ui/widget/e;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/widget/e;Lcom/bbm/j/r;)Lcom/bbm/j/r;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/widget/e;->f:Lcom/bbm/j/r;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/widget/e;)V
.registers 13
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/widget/e;->b()Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "WIDGET: update suppressed due to pending state"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_e
:goto_e
return-void
:cond_f
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/ui/widget/e;->f:Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v8
move v4, v3
:goto_2b
if-ge v4, v8, :cond_6c
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/widget/e;->d()Landroid/widget/RemoteViews;
move-result-object v2
invoke-virtual {p0, v2, v1}, Lcom/bbm/ui/widget/e;->a(Landroid/widget/RemoteViews;Ljava/lang/Object;)V
invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0, v1}, Lcom/bbm/ui/widget/e;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
iget-object v1, p0, Lcom/bbm/ui/widget/e;->i:Ljava/util/Map;
invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Long;
if-nez v1, :cond_62
invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I
move-result v1
int-to-long v1, v1
:goto_4e
iget-object v10, p0, Lcom/bbm/ui/widget/e;->i:Ljava/util/Map;
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v11
invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_5e
const-wide/16 v10, 0x1
add-long/2addr v1, v10
goto :goto_4e
:cond_5e
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
:cond_62
invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v7, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v4, 0x1
move v4, v1
goto :goto_2b
:cond_6c
monitor-enter p0
:try_start_6d
iput-object v7, p0, Lcom/bbm/ui/widget/e;->i:Ljava/util/Map;
iput-object v6, p0, Lcom/bbm/ui/widget/e;->h:Ljava/util/List;
iget-object v0, p0, Lcom/bbm/ui/widget/e;->g:Ljava/util/List;
invoke-static {v0, v5}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_aa
iput-object v5, p0, Lcom/bbm/ui/widget/e;->g:Ljava/util/List;
const/4 v0, 0x1
move v1, v0
:goto_7d
monitor-exit p0
:try_end_7e
.catchall {:try_start_6d .. :try_end_7e} :catchall_a7
invoke-direct {p0}, Lcom/bbm/ui/widget/e;->e()Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_95
const-string v0, "WIDGET: clearing pending flag"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_95
invoke-direct {p0}, Lcom/bbm/ui/widget/e;->e()Lcom/bbm/util/cr;
move-result-object v0
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
if-eqz v1, :cond_e
invoke-virtual {p0}, Lcom/bbm/ui/widget/e;->a()V
goto/16 :goto_e
:catchall_a7
move-exception v0
monitor-exit p0
throw v0
:cond_aa
move v1, v3
goto :goto_7d
.end method
.method private e()Lcom/bbm/util/cr;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/widget/e;->k:Lcom/bbm/util/cr;
if-nez v0, :cond_10
new-instance v0, Lcom/bbm/ui/widget/h;
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/widget/h;-><init>(Lcom/bbm/ui/widget/e;Ljava/lang/Boolean;)V
iput-object v0, p0, Lcom/bbm/ui/widget/e;->k:Lcom/bbm/util/cr;
:cond_10
iget-object v0, p0, Lcom/bbm/ui/widget/e;->k:Lcom/bbm/util/cr;
return-object v0
.end method
.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method public final a()V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "WIDGET: notifyAppWidgetViewDataChanged "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/bbm/ui/widget/e;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/widget/e;->d:Landroid/content/Context;
invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
move-result-object v0
iget v1, p0, Lcom/bbm/ui/widget/e;->b:I
iget v2, p0, Lcom/bbm/ui/widget/e;->c:I
invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V
return-void
.end method
.method protected abstract a(Landroid/widget/RemoteViews;Ljava/lang/Object;)V
.end method
.method protected b()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected abstract c()Lcom/bbm/j/r;
.end method
.method protected abstract d()Landroid/widget/RemoteViews;
.end method
.method public declared-synchronized getCount()I
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/bbm/ui/widget/e;->g:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result v0
monitor-exit p0
return v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getItemId(I)J
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/bbm/ui/widget/e;->h:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge p1, v0, :cond_17
iget-object v0, p0, Lcom/bbm/ui/widget/e;->h:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_1a
move-result-wide v0
:goto_15
monitor-exit p0
return-wide v0
:cond_17
const-wide/16 v0, -0x1
goto :goto_15
:catchall_1a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized getViewAt(I)Landroid/widget/RemoteViews;
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/bbm/ui/widget/e;->g:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge p1, v0, :cond_13
iget-object v0, p0, Lcom/bbm/ui/widget/e;->g:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/RemoteViews;
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_18
:goto_11
monitor-exit p0
return-object v0
:cond_13
:try_start_13
invoke-virtual {p0}, Lcom/bbm/ui/widget/e;->d()Landroid/widget/RemoteViews;
:try_end_16
.catchall {:try_start_13 .. :try_end_16} :catchall_18
move-result-object v0
goto :goto_11
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public onCreate()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/widget/e;->e:Z
return-void
.end method
.method public onDataSetChanged()V
.registers 1
return-void
.end method
.method public onDestroy()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/widget/e;->e:Z
return-void
.end method