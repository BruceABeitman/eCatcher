.class public Lcom/twidroid/widget/BaseWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field protected static final l:Ljava/lang/String; = "BaseWidget"

.field protected static final m:Ljava/lang/String; = "widget_timeline"

.field protected static final n:J = 0x1b7740L

.field protected static final o:I = 0x2

.field protected static final r:I = 0x14

.field protected static s:I = 0x0

.field protected static u:Landroid/content/Context; = null

.field static final v:I = 0x0

.field static final w:I = 0x1

.field static final x:I = 0x2

.field public static final y:Ljava/lang/String; = "echofon.broadcast.update.counters"


# instance fields
.field protected p:Z

.field protected q:Z

.field protected t:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    iput-boolean v0, p0, Lcom/twidroid/widget/BaseWidget;->p:Z

    iput-boolean v0, p0, Lcom/twidroid/widget/BaseWidget;->q:Z

    return-void
.end method

.method static a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v2, 0x2e

    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_36
    return-object v0

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method

.method protected static a(Landroid/widget/RemoteViews;ILjava/lang/String;JLjava/lang/String;)V
    .registers 12

    invoke-static {p2, p3, p4, p5}, Lcom/twidroid/widget/BaseWidget;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p5

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twidroid/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;IIZ)V

    return-void
.end method

.method private a(JZ)Z
    .registers 9

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/32 v3, 0x1b7740

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic a(Lcom/twidroid/widget/BaseWidget;JZ)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/twidroid/widget/BaseWidget;->a(JZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Lcom/twidroid/d/v;Landroid/content/Context;)Lcom/twidroid/model/twitter/c;
    .registers 7

    const/4 v3, -0x1

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v1

    if-nez p1, :cond_c

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "LastUserID"

    invoke-virtual {p1, v0, v2, v3}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_3b

    invoke-virtual {v1, v0}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    if-eqz v0, :cond_57

    const-string v1, "BaseWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restored account from saved selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_3b
    const-string v0, "BaseWidget"

    const-string v1, "restored account from saved selection: -1"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/twidroid/model/twitter/c;

    invoke-direct {v0}, Lcom/twidroid/model/twitter/c;-><init>()V

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/model/twitter/c;->b(J)V

    const v1, 0x7f0c02f7

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->c(Ljava/lang/String;)V

    goto :goto_b

    :cond_57
    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    goto :goto_b
.end method

.method protected a(Lcom/twidroid/model/twitter/c;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;)V
    .registers 5

    if-eqz p1, :cond_15

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "echofon.broadcast.update.counters"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_COUNTERS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_15
    return-void
.end method

.method public a(Landroid/content/Context;II)V
    .registers 4

    return-void
.end method

.method protected a(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Z)V
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-object p1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    new-instance v1, Lcom/twidroid/widget/BaseWidget$1;

    invoke-direct {v1, p0, p2}, Lcom/twidroid/widget/BaseWidget$1;-><init>(Lcom/twidroid/widget/BaseWidget;I)V

    invoke-virtual {v0, v1, v3}, Lcom/twidroid/widget/o;->a(Lcom/twidroid/widget/k;I)V

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/twidroid/widget/o;->c(I)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Lcom/twidroid/widget/f;

    invoke-direct {v0, p0}, Lcom/twidroid/widget/f;-><init>(Lcom/twidroid/widget/BaseWidget;)V

    new-array v1, v4, [Lcom/twidroid/widget/g;

    new-instance v2, Lcom/twidroid/widget/g;

    invoke-direct {v2, p1, p3, p2, p4}, Lcom/twidroid/widget/g;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/twidroid/widget/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/twidroid/widget/o;->a(ZI)V

    :cond_32
    return-void
.end method

.method protected a(Landroid/content/Context;IZ)V
    .registers 6

    const v0, 0x7f0c0341

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sput-object p1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/twidroid/widget/BaseWidget;->a(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Z)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/twidroid/widget/BaseWidget;->c(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Z)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/twidroid/widget/BaseWidget;->b(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Z)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
    .registers 6

    sput-object p1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;

    sget-object v0, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;

    invoke-virtual {p0, v0, p3, p4}, Lcom/twidroid/widget/BaseWidget;->a(Landroid/content/Context;IZ)V

    return-void
.end method

.method public a(Landroid/content/Context;[I)V
    .registers 6

    array-length v1, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_c

    aget v2, p2, v0

    invoke-virtual {p0, p1, v2}, Lcom/twidroid/widget/BaseWidget;->b(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method protected a(Ljava/util/List;Ljava/util/List;)V
    .registers 6

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-boolean v2, v0, Lcom/twidroid/model/twitter/Tweet;->E:Z

    if-nez v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_18
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/content/Context;I)V
    .registers 3

    return-void
.end method

.method protected b(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Z)V
    .registers 10

    const/4 v4, 0x1

    sput-object p1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    new-instance v1, Lcom/twidroid/widget/BaseWidget$2;

    invoke-direct {v1, p0, p2}, Lcom/twidroid/widget/BaseWidget$2;-><init>(Lcom/twidroid/widget/BaseWidget;I)V

    invoke-virtual {v0, v1, v4}, Lcom/twidroid/widget/o;->a(Lcom/twidroid/widget/k;I)V

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/twidroid/widget/o;->c(I)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Lcom/twidroid/widget/d;

    invoke-direct {v0, p0}, Lcom/twidroid/widget/d;-><init>(Lcom/twidroid/widget/BaseWidget;)V

    new-array v1, v4, [Lcom/twidroid/widget/g;

    const/4 v2, 0x0

    new-instance v3, Lcom/twidroid/widget/g;

    invoke-direct {v3, p1, p3, p2, p4}, Lcom/twidroid/widget/g;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/widget/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/twidroid/widget/o;->a(ZI)V

    :cond_32
    return-void
.end method

.method protected b(Ljava/util/List;Ljava/util/List;)V
    .registers 6

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    iget-boolean v2, v0, Lcom/twidroid/model/twitter/DirectMessage;->E:Z

    if-nez v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_18
    return-void
.end method

.method protected c(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Z)V
    .registers 11

    const/4 v5, 0x1

    const/4 v4, 0x2

    sput-object p1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    new-instance v1, Lcom/twidroid/widget/BaseWidget$3;

    invoke-direct {v1, p0, p2}, Lcom/twidroid/widget/BaseWidget$3;-><init>(Lcom/twidroid/widget/BaseWidget;I)V

    invoke-virtual {v0, v1, v4}, Lcom/twidroid/widget/o;->a(Lcom/twidroid/widget/k;I)V

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/twidroid/widget/o;->c(I)Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Lcom/twidroid/widget/e;

    invoke-direct {v0, p0}, Lcom/twidroid/widget/e;-><init>(Lcom/twidroid/widget/BaseWidget;)V

    new-array v1, v5, [Lcom/twidroid/widget/g;

    const/4 v2, 0x0

    new-instance v3, Lcom/twidroid/widget/g;

    invoke-direct {v3, p1, p3, p2, p4}, Lcom/twidroid/widget/g;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/widget/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/twidroid/widget/o;->a(ZI)V

    :cond_33
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 2

    sput-object p1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    return-void
.end method
