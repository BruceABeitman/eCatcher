.class public Lcom/twidroid/widget/BaseScrollableWidget;
.super Lcom/twidroid/widget/BaseWidget;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "mode_timeline"

.field public static final b:Ljava/lang/String; = "mode_mentions"

.field public static final c:Ljava/lang/String; = "mode_dm"

.field public static final d:Ljava/lang/String; = "action_down"

.field public static final e:Ljava/lang/String; = "action_up"

.field public static final f:Ljava/lang/String; = "action_refresh"

.field public static final g:Ljava/lang/String; = "action_tweet"

.field public static final h:Ljava/lang/String; = "action_search"

.field public static final i:Ljava/lang/String; = "action_menu"

.field public static final j:Ljava/lang/String; = "extra_page"

.field public static final k:Ljava/lang/String; = "extra_row_number"

.field private static z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/twidroid/widget/BaseScrollableWidget;->z:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/widget/BaseWidget;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/twidroid/ui/themes/r;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2, p1}, Lcom/twidroid/ui/themes/r;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_11

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gez v3, :cond_1c

    move v3, v1

    :cond_1c
    if-gez v2, :cond_39

    :goto_1e
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    goto :goto_10

    :cond_39
    move v1, v2

    goto :goto_1e
.end method


# virtual methods
.method protected a()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method protected a(Landroid/content/Context;I)V
    .registers 7

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300a1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twidroid/TwidroidClient;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x800

    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0901fa

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public a(Landroid/content/Context;II)V
    .registers 13

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;I)V

    :goto_11
    return-void

    :cond_12
    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1f5

    const/4 v0, 0x1

    :goto_21
    sput-boolean v0, Lcom/twidroid/widget/BaseScrollableWidget;->z:Z

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f03009f

    invoke-direct {v1, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "mode_timeline"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f0901e9

    const/high16 v4, 0x800

    invoke-static {p1, p2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "mode_mentions"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f0901eb

    const/high16 v4, 0x800

    invoke-static {p1, p2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "mode_dm"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f0901ed

    const/high16 v4, 0x800

    invoke-static {p1, p2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "action_refresh"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v3, 0x7f090249

    const/4 v4, 0x0

    invoke-static {p1, p2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/twidroid/activity/SendTweet;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "action_tweet"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f0901f1

    const/4 v4, 0x0

    invoke-static {p1, p2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "action_search"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v3, 0x7f090214

    const/4 v4, 0x0

    invoke-static {p1, p2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/twidroid/TwidroidClient;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x7f0901e7

    const/4 v4, 0x0

    invoke-static {p1, p2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v0, ""

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/twidroid/widget/o;->b(I)I

    move-result v3

    packed-switch v3, :pswitch_data_308

    :goto_107
    const v3, 0x7f090213

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v0, Lcom/twidroid/d/v;

    invoke-direct {v0, p1}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, p1}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Lcom/twidroid/d/v;Landroid/content/Context;)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    const v3, 0x7f0901f0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/twidroid/d/v;->q(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcom/twidroid/d/v;->p(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1}, Lcom/twidroid/d/v;->m(Landroid/content/Context;)I

    move-result v4

    const v7, 0x7f0901ea

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f0901ec

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f0901ee

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f0901ea

    if-lez v0, :cond_228

    const/4 v0, 0x0

    :goto_15f
    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v7, 0x7f0901ec

    if-lez v3, :cond_22b

    const/4 v0, 0x0

    :goto_168
    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0901ee

    if-lez v4, :cond_22e

    const/4 v0, 0x0

    :goto_171
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f090212

    invoke-direct {p0, p1, v2}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;Lcom/twidroid/ui/themes/r;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v0, 0x7f090238

    invoke-direct {p0, p1, v2}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;Lcom/twidroid/ui/themes/r;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v0, 0x7f0901f1

    const v2, 0x7f02012a

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget-boolean v0, Lcom/twidroid/widget/BaseScrollableWidget;->z:Z

    if-eqz v0, :cond_231

    const v0, 0x7f09023b

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f090239

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0901e8

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twidroid/widget/WidgetScrollService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x7f090248

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f090215

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f090248

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    invoke-static {p1}, Lcom/twidroid/widget/WidgetsContextMenu;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v2, 0x7f090248

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    const v0, 0x7f090248

    invoke-virtual {v6, p2, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    :goto_1f0
    invoke-virtual {v6, p2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_11

    :cond_1f5
    const/4 v0, 0x0

    goto/16 :goto_21

    :pswitch_1f8
    const v0, 0x7f0c033b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TabName"

    const-string v4, "TAB_DIRECT_MESSAGES"

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_107

    :pswitch_208
    const v0, 0x7f0c033c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TabName"

    const-string v4, "TAB_MENTIONS"

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_107

    :pswitch_218
    const v0, 0x7f0c0020

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TabName"

    const-string v4, "TAB_TIMELINE"

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_107

    :cond_228
    const/4 v0, 0x4

    goto/16 :goto_15f

    :cond_22b
    const/4 v0, 0x4

    goto/16 :goto_168

    :cond_22e
    const/4 v0, 0x4

    goto/16 :goto_171

    :cond_231
    const v0, 0x7f090215

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v3, 0x0

    :goto_239
    invoke-virtual {p0}, Lcom/twidroid/widget/BaseScrollableWidget;->a()I

    move-result v0

    if-ge v3, v0, :cond_263

    :try_start_23f
    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/twidroid/widget/o;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/widget/BaseScrollableWidget;->a()I

    move-result v2

    mul-int/2addr v2, p3

    add-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twidroid/model/twitter/CommunicationEntity;

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/widget/RemoteViews;Lcom/twidroid/model/twitter/CommunicationEntity;ILandroid/content/Context;Landroid/os/Bundle;)V
    :try_end_258
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_258} :catch_25b

    :goto_258
    add-int/lit8 v3, v3, 0x1

    goto :goto_239

    :catch_25b
    move-exception v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/widget/RemoteViews;Lcom/twidroid/model/twitter/CommunicationEntity;ILandroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_258

    :cond_263
    const v0, 0x7f090237

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0}, Lcom/twidroid/widget/BaseScrollableWidget;->a()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f3

    const v0, 0x7f09021d

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f090225

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f09022d

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_28a
    :goto_28a
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action_down"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appWidgetId"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_page"

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/twidroid/widget/o;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0}, Lcom/twidroid/widget/BaseScrollableWidget;->a()I

    move-result v5

    mul-int/2addr v4, v5

    if-lt v0, v4, :cond_303

    add-int/lit8 v0, p3, 0x1

    :goto_2b8
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v0, 0x7f09023b

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action_up"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appWidgetId"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_page"

    if-lez p3, :cond_305

    add-int/lit8 v0, p3, -0x1

    :goto_2e1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v0, 0x7f090239

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1f0

    :cond_2f3
    invoke-virtual {p0}, Lcom/twidroid/widget/BaseScrollableWidget;->a()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_28a

    const v0, 0x7f09022d

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_28a

    :cond_303
    move v0, p3

    goto :goto_2b8

    :cond_305
    const/4 v0, 0x0

    goto :goto_2e1

    nop

    :pswitch_data_308
    .packed-switch 0x0
        :pswitch_218
        :pswitch_1f8
        :pswitch_208
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
    .registers 5

    sput-object p1, Lcom/twidroid/widget/BaseScrollableWidget;->u:Landroid/content/Context;

    return-void
.end method

.method public a(Landroid/widget/RemoteViews;Lcom/twidroid/model/twitter/CommunicationEntity;ILandroid/content/Context;Landroid/os/Bundle;)V
    .registers 20

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v13

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_202

    move v8, v2

    move v9, v3

    move v10, v5

    move v11, v6

    move v12, v7

    move v7, v1

    :goto_18
    if-nez p2, :cond_8f

    const/4 v1, 0x4

    invoke-virtual {p1, v12, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1e
    return-void

    :pswitch_1f
    const v7, 0x7f090217

    const v6, 0x7f09021a

    const v5, 0x7f09021c

    const v3, 0x7f09021e

    const v2, 0x7f09021b

    const v4, 0x7f090219

    const v1, 0x7f09021f

    move v8, v2

    move v9, v3

    move v10, v5

    move v11, v6

    move v12, v7

    move v7, v1

    goto :goto_18

    :pswitch_3b
    const v7, 0x7f09021d

    const v6, 0x7f090222

    const v5, 0x7f090224

    const v3, 0x7f090226

    const v2, 0x7f090223

    const v4, 0x7f090221

    const v1, 0x7f090227

    move v8, v2

    move v9, v3

    move v10, v5

    move v11, v6

    move v12, v7

    move v7, v1

    goto :goto_18

    :pswitch_57
    const v7, 0x7f090225

    const v6, 0x7f09022a

    const v5, 0x7f09022c

    const v3, 0x7f09022e

    const v2, 0x7f09022b

    const v4, 0x7f090229

    const v1, 0x7f09022f

    move v8, v2

    move v9, v3

    move v10, v5

    move v11, v6

    move v12, v7

    move v7, v1

    goto :goto_18

    :pswitch_73
    const v7, 0x7f09022d

    const v6, 0x7f090232

    const v5, 0x7f090234

    const v3, 0x7f090235

    const v2, 0x7f090233

    const v4, 0x7f090231

    const v1, 0x7f090236

    move v8, v2

    move v9, v3

    move v10, v5

    move v11, v6

    move v12, v7

    move v7, v1

    goto :goto_18

    :cond_8f
    const/4 v1, 0x0

    invoke-virtual {p1, v12, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;

    invoke-virtual {p1, v10, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v13}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {p1, v10, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string v1, "setLinkTextColor"

    invoke-virtual {v13}, Lcom/twidroid/ui/themes/r;->p()I

    move-result v2

    invoke-virtual {p1, v10, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v11, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v13}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {p1, v11, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v1, :cond_1df

    move-object/from16 v1, p2

    check-cast v1, Lcom/twidroid/model/twitter/Tweet;

    iget-wide v1, v1, Lcom/twidroid/model/twitter/Tweet;->ao:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_1d0

    const/4 v1, 0x0

    :goto_e6
    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object/from16 v1, p2

    check-cast v1, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/Tweet;->u()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    check-cast v2, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->g()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x48

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/twidroid/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;IIZ)V

    move-object/from16 v1, p2

    check-cast v1, Lcom/twidroid/model/twitter/Tweet;

    iget-wide v1, v1, Lcom/twidroid/model/twitter/Tweet;->ao:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_1d3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c016d

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v1, p2

    check-cast v1, Lcom/twidroid/model/twitter/Tweet;

    iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v1, 0x0

    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_13d
    move-object/from16 v0, p2

    iget-wide v1, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J

    invoke-static {v1, v2}, Lcom/ubermedia/b/a/k;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v13}, Lcom/twidroid/ui/themes/r;->E()I

    move-result v1

    invoke-virtual {p1, v11, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {v13}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {p1, v10, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string v1, "setBackgroundColor"

    invoke-virtual {v13}, Lcom/twidroid/ui/themes/r;->s()I

    move-result v2

    invoke-virtual {p1, v12, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {v13}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {p1, v8, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-static/range {p4 .. p4}, Lcom/twidroid/widget/WidgetsContextMenu;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v2, :cond_1a1

    const-string v2, "EXTRA_STATUS_ID"

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "EXTRA_TWEET"

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "widget_context_menu_mode"

    sget-object v3, Lcom/twidroid/widget/m;->a:Lcom/twidroid/widget/m;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1a1
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/twidroid/model/twitter/DirectMessage;

    if-eqz v2, :cond_1b5

    const-string v2, "EXTRA_MESSAGE"

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "widget_context_menu_mode"

    sget-object v3, Lcom/twidroid/widget/m;->b:Lcom/twidroid/widget/m;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1b5
    if-eqz p5, :cond_1bc

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1bc
    const/4 v2, 0x0

    const/high16 v3, 0x800

    move-object/from16 v0, p4

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p1, v11, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1e

    :cond_1d0
    const/4 v1, 0x4

    goto/16 :goto_e6

    :cond_1d3
    const/16 v1, 0x8

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v1, 0x8

    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_13d

    :cond_1df
    const/16 v1, 0x8

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v1, 0x8

    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object/from16 v1, p2

    check-cast v1, Lcom/twidroid/model/twitter/DirectMessage;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/DirectMessage;->u()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    check-cast v2, Lcom/twidroid/model/twitter/DirectMessage;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/DirectMessage;->g()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x48

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/twidroid/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;IIZ)V

    goto/16 :goto_13d

    :pswitch_data_202
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_3b
        :pswitch_57
        :pswitch_73
    .end packed-switch
.end method

.method public b(Landroid/content/Context;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/twidroid/widget/BaseWidget;->b(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;II)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_37

    const-string v2, "mode_timeline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/twidroid/widget/o;->a(II)V

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    iput v3, v0, Lcom/twidroid/widget/o;->d:I

    invoke-virtual {p0, p1, v1, v3}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;II)V

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twidroid/widget/o;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0, p1, v1, v3}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;IZ)V

    :cond_37
    :goto_37
    invoke-super {p0, p1, p2}, Lcom/twidroid/widget/BaseWidget;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_3b
    const-string v2, "mode_mentions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/widget/o;->a(II)V

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    iput v3, v0, Lcom/twidroid/widget/o;->e:I

    invoke-virtual {p0, p1, v1, v3}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;II)V

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twidroid/widget/o;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0, p1, v1, v3}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;IZ)V

    goto :goto_37

    :cond_66
    const-string v2, "mode_dm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/twidroid/widget/o;->a(II)V

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    iput v3, v0, Lcom/twidroid/widget/o;->f:I

    invoke-virtual {p0, p1, v1, v3}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;II)V

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twidroid/widget/o;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0, p1, v1, v3}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;IZ)V

    goto :goto_37

    :cond_90
    const-string v2, "action_down"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v0, "extra_page"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;II)V

    goto :goto_37

    :cond_a2
    const-string v2, "action_up"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    const-string v0, "extra_page"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;II)V

    const-string v0, "extra_page"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0, p1, v1, v4}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;IZ)V

    goto/16 :goto_37

    :cond_c0
    const-string v2, "action_refresh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-virtual {p0, p1, v1, v4}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;IZ)V

    goto/16 :goto_37

    :cond_cd
    const-string v1, "action_search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p1}, Lcom/twidroid/d/a;->a(Landroid/content/Context;)V

    goto/16 :goto_37
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1a

    array-length v0, p3

    :goto_10
    if-ge v1, v0, :cond_2f

    aget v2, p3, v1

    invoke-virtual {p0, p1, v2}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    array-length v2, p3

    move v0, v1

    :goto_1c
    if-ge v0, v2, :cond_2f

    aget v3, p3, v0

    invoke-virtual {p0, p1, v3, p2, v1}, Lcom/twidroid/widget/BaseScrollableWidget;->a(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Z)V

    invoke-virtual {p0, p1, v3, p2, v1}, Lcom/twidroid/widget/BaseScrollableWidget;->c(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Z)V

    invoke-virtual {p0, p1, v3, p2, v1}, Lcom/twidroid/widget/BaseScrollableWidget;->b(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Z)V

    invoke-virtual {p0, p1, v3}, Lcom/twidroid/widget/BaseScrollableWidget;->b(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2f
    return-void
.end method
