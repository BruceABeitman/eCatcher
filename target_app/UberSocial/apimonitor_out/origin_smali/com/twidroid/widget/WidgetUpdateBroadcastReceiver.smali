.class public Lcom/twidroid/widget/WidgetUpdateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "EXTRA_COUNTERS"

.field public static final b:Ljava/lang/String; = "EXTRA_UPDATE_COUNTERS_BY_REFRESHING"

.field public static final c:Ljava/lang/String; = "EXTRA_ACCOUNT"

.field public static final d:Ljava/lang/String; = "EXTRA_INCREMENT_TWEETS"

.field public static final e:Ljava/lang/String; = "EXTRA_INCREMENT_MENTIONS"

.field public static final f:Ljava/lang/String; = "EXTRA_INCREMENT_DMS"

.field public static final g:Ljava/lang/String; = "EXTRA_SET_TWEETS"

.field public static final h:Ljava/lang/String; = "EXTRA_SET_MENTIONS"

.field public static final i:Ljava/lang/String; = "EXTRA_SET_DMS"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/widget/WidgetUpdateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/twidroid/widget/Widget4X4;

    invoke-direct {v0, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/twidroid/widget/Widget4X3;

    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    new-instance v0, Landroid/content/ComponentName;

    const-class v5, Lcom/twidroid/widget/Widget4X2;

    invoke-direct {v0, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    new-instance v0, Landroid/content/ComponentName;

    const-class v6, Lcom/twidroid/widget/Widget3X1;

    invoke-direct {v0, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/twidroid/TwidroidClient;->k:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Twidroyd.Tabswitch"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    :cond_57
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16a

    :try_start_5f
    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    const-string v7, "account"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/widget/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9c

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/widget/o;->d()Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget v0, v0, Lcom/twidroid/model/twitter/Tweet;->aB:I

    const-string v7, "account"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eq v0, v7, :cond_9c

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/widget/o;->b()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_9c} :catch_15e

    :cond_9c
    :goto_9c
    array-length v0, v3

    if-lez v0, :cond_a7

    new-instance v0, Lcom/twidroid/widget/Widget4X4;

    invoke-direct {v0}, Lcom/twidroid/widget/Widget4X4;-><init>()V

    invoke-virtual {v0, p1, v2, v3}, Lcom/twidroid/widget/Widget4X4;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :cond_a7
    array-length v0, v4

    if-lez v0, :cond_b2

    new-instance v0, Lcom/twidroid/widget/Widget4X3;

    invoke-direct {v0}, Lcom/twidroid/widget/Widget4X3;-><init>()V

    invoke-virtual {v0, p1, v2, v4}, Lcom/twidroid/widget/Widget4X3;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :cond_b2
    array-length v0, v5

    if-lez v0, :cond_bd

    new-instance v0, Lcom/twidroid/widget/Widget4X2;

    invoke-direct {v0}, Lcom/twidroid/widget/Widget4X2;-><init>()V

    invoke-virtual {v0, p1, v2, v5}, Lcom/twidroid/widget/Widget4X2;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :cond_bd
    array-length v0, v6

    if-lez v0, :cond_c8

    new-instance v0, Lcom/twidroid/widget/Widget3X1;

    invoke-direct {v0}, Lcom/twidroid/widget/Widget3X1;-><init>()V

    invoke-virtual {v0, p1, v2, v6}, Lcom/twidroid/widget/Widget3X1;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :cond_c8
    const-string v0, "EXTRA_COUNTERS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_209

    const-string v0, "EXTRA_INCREMENT_TWEETS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    iget v2, v0, Lcom/twidroid/widget/o;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/twidroid/widget/o;->d:I

    :cond_e2
    const-string v0, "EXTRA_INCREMENT_MENTIONS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f4

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    iget v2, v0, Lcom/twidroid/widget/o;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/twidroid/widget/o;->e:I

    :cond_f4
    const-string v0, "EXTRA_INCREMENT_DMS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    iget v2, v0, Lcom/twidroid/widget/o;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/twidroid/widget/o;->f:I

    :cond_106
    const-string v0, "EXTRA_SET_TWEETS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11a

    const-string v0, "EXTRA_SET_TWEETS"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v2

    iput v0, v2, Lcom/twidroid/widget/o;->d:I

    :cond_11a
    const-string v0, "EXTRA_SET_MENTIONS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12e

    const-string v0, "EXTRA_SET_MENTIONS"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v2

    iput v0, v2, Lcom/twidroid/widget/o;->e:I

    :cond_12e
    const-string v0, "EXTRA_SET_DMS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_142

    const-string v0, "EXTRA_SET_DMS"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v2

    iput v0, v2, Lcom/twidroid/widget/o;->f:I

    :cond_142
    array-length v0, v3

    if-lez v0, :cond_1b6

    const-string v0, "EXTRA_UPDATE_COUNTERS_BY_REFRESHING"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    array-length v2, v3

    move v0, v1

    :goto_14f
    if-ge v0, v2, :cond_1b6

    aget v7, v3, v0

    new-instance v8, Lcom/twidroid/widget/Widget4X4;

    invoke-direct {v8}, Lcom/twidroid/widget/Widget4X4;-><init>()V

    invoke-virtual {v8, p1, v7, v1}, Lcom/twidroid/widget/Widget4X4;->a(Landroid/content/Context;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14f

    :catch_15e
    move-exception v0

    const-string v7, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9c

    :cond_16a
    array-length v2, v3

    move v0, v1

    :goto_16c
    if-ge v0, v2, :cond_17b

    aget v7, v3, v0

    new-instance v8, Lcom/twidroid/widget/Widget4X4;

    invoke-direct {v8}, Lcom/twidroid/widget/Widget4X4;-><init>()V

    invoke-virtual {v8, p1, v7}, Lcom/twidroid/widget/Widget4X4;->b(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16c

    :cond_17b
    array-length v2, v4

    move v0, v1

    :goto_17d
    if-ge v0, v2, :cond_18c

    aget v7, v4, v0

    new-instance v8, Lcom/twidroid/widget/Widget4X3;

    invoke-direct {v8}, Lcom/twidroid/widget/Widget4X3;-><init>()V

    invoke-virtual {v8, p1, v7}, Lcom/twidroid/widget/Widget4X3;->b(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17d

    :cond_18c
    array-length v2, v5

    move v0, v1

    :goto_18e
    if-ge v0, v2, :cond_19d

    aget v7, v5, v0

    new-instance v8, Lcom/twidroid/widget/Widget4X2;

    invoke-direct {v8}, Lcom/twidroid/widget/Widget4X2;-><init>()V

    invoke-virtual {v8, p1, v7}, Lcom/twidroid/widget/Widget4X2;->b(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18e

    :cond_19d
    array-length v2, v6

    move v0, v1

    :goto_19f
    if-ge v0, v2, :cond_c8

    aget v7, v6, v0

    new-instance v8, Lcom/twidroid/widget/Widget3X1;

    invoke-direct {v8}, Lcom/twidroid/widget/Widget3X1;-><init>()V

    invoke-virtual {v8, p1, v7}, Lcom/twidroid/widget/Widget3X1;->b(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19f

    :cond_1ae
    new-instance v0, Lcom/twidroid/widget/Widget4X4;

    invoke-direct {v0}, Lcom/twidroid/widget/Widget4X4;-><init>()V

    invoke-virtual {v0, p1, v3}, Lcom/twidroid/widget/Widget4X4;->a(Landroid/content/Context;[I)V

    :cond_1b6
    array-length v0, v4

    if-lez v0, :cond_1da

    const-string v0, "EXTRA_UPDATE_COUNTERS_BY_REFRESHING"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    array-length v2, v4

    move v0, v1

    :goto_1c3
    if-ge v0, v2, :cond_1da

    aget v3, v4, v0

    new-instance v7, Lcom/twidroid/widget/Widget4X3;

    invoke-direct {v7}, Lcom/twidroid/widget/Widget4X3;-><init>()V

    invoke-virtual {v7, p1, v3, v1}, Lcom/twidroid/widget/Widget4X3;->a(Landroid/content/Context;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c3

    :cond_1d2
    new-instance v0, Lcom/twidroid/widget/Widget4X3;

    invoke-direct {v0}, Lcom/twidroid/widget/Widget4X3;-><init>()V

    invoke-virtual {v0, p1, v4}, Lcom/twidroid/widget/Widget4X3;->a(Landroid/content/Context;[I)V

    :cond_1da
    array-length v0, v5

    if-lez v0, :cond_1fe

    const-string v0, "EXTRA_UPDATE_COUNTERS_BY_REFRESHING"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f6

    array-length v2, v5

    move v0, v1

    :goto_1e7
    if-ge v0, v2, :cond_1fe

    aget v3, v5, v0

    new-instance v4, Lcom/twidroid/widget/Widget4X2;

    invoke-direct {v4}, Lcom/twidroid/widget/Widget4X2;-><init>()V

    invoke-virtual {v4, p1, v3, v1}, Lcom/twidroid/widget/Widget4X2;->a(Landroid/content/Context;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e7

    :cond_1f6
    new-instance v0, Lcom/twidroid/widget/Widget4X2;

    invoke-direct {v0}, Lcom/twidroid/widget/Widget4X2;-><init>()V

    invoke-virtual {v0, p1, v5}, Lcom/twidroid/widget/Widget4X2;->a(Landroid/content/Context;[I)V

    :cond_1fe
    array-length v0, v6

    if-lez v0, :cond_209

    new-instance v0, Lcom/twidroid/widget/Widget3X1;

    invoke-direct {v0}, Lcom/twidroid/widget/Widget3X1;-><init>()V

    invoke-virtual {v0, p1, v6}, Lcom/twidroid/widget/Widget3X1;->a(Landroid/content/Context;[I)V

    :cond_209
    return-void
.end method
