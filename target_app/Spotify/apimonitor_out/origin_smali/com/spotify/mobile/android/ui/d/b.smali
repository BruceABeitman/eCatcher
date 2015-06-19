.class public final Lcom/spotify/mobile/android/ui/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/d/a;


# static fields
.field private static final a:[I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/spotify/mobile/android/ui/d/b;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/spotify/mobile/android/ui/d/b;->b:[I

    return-void

    :array_10
    .array-data 0x4
        0xd4t 0x1t 0x2t 0x7ft
        0xd5t 0x1t 0x2t 0x7ft
    .end array-data

    :array_18
    .array-data 0x4
        0xd7t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;IZ)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/music/spotlets/widget/SpotifyWidget;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_suggested_track"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 3

    const-string v0, "com.spotify.mobile.android.service.action.request.update.WIDGET"

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19

    const-string v1, "track_uri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p1}, Lcom/spotify/mobile/android/ui/d/b;->a(Landroid/content/Context;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    const-string v1, "track_uri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "track_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "artist_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "album_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_199

    :goto_30
    if-eqz v2, :cond_1b5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1b5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u2014 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_50
    const-string v1, "paused"

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string v1, "cover"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const-string v3, "is_prev_enabled"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v3, "is_next_enabled"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string v3, "is_ad_playing"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v3, "is_suggested_track"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    new-instance v12, Landroid/content/ComponentName;

    const-class v3, Lcom/spotify/music/spotlets/widget/SpotifyWidget;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0300da

    invoke-direct {v14, v3, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f0a03a8

    const/16 v6, 0x8

    invoke-virtual {v14, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a03a6

    const/16 v6, 0x8

    invoke-virtual {v14, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a03aa

    const/16 v6, 0x8

    invoke-virtual {v14, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a03a7

    const/4 v6, 0x0

    invoke-virtual {v14, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a03a5

    const/4 v6, 0x0

    invoke-virtual {v14, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a03a9

    const/4 v6, 0x0

    invoke-virtual {v14, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a03a7

    if-eqz v7, :cond_19d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_19d

    if-nez v5, :cond_19d

    const/4 v5, 0x1

    move v6, v5

    :goto_dc
    if-eqz v6, :cond_112

    const v3, 0x7f0a03a8

    const v5, 0x7f0a03a7

    const/16 v15, 0x8

    invoke-virtual {v14, v5, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v5, 0x7f0a03a8

    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v9, :cond_101

    const v5, 0x7f0a03a5

    const/16 v9, 0x8

    invoke-virtual {v14, v5, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v5, 0x7f0a03a6

    const/4 v9, 0x0

    invoke-virtual {v14, v5, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_101
    if-eqz v10, :cond_112

    const v5, 0x7f0a03a9

    const/16 v9, 0x8

    invoke-virtual {v14, v5, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v5, 0x7f0a03aa

    const/4 v9, 0x0

    invoke-virtual {v14, v5, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_112
    move v5, v3

    if-eqz v6, :cond_1a1

    const/4 v3, 0x1

    :goto_116
    if-eqz v8, :cond_1a4

    sget-object v6, Lcom/spotify/mobile/android/ui/d/b;->b:[I

    aget v3, v6, v3

    :goto_11c
    invoke-virtual {v14, v5, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v5, 0x7f0a01fc

    if-eqz v4, :cond_1aa

    move-object v3, v4

    :goto_125
    invoke-virtual {v14, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0a0258

    invoke-virtual {v14, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "com.spotify.mobile.android.ui.widget.PREVIOUS"

    const v3, 0x7f0a03a6

    move-object/from16 v0, p1

    invoke-static {v0, v14, v2, v3, v11}, Lcom/spotify/mobile/android/ui/d/b;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;IZ)V

    const-string v2, "com.spotify.mobile.android.ui.widget.PLAY"

    const v3, 0x7f0a03a8

    move-object/from16 v0, p1

    invoke-static {v0, v14, v2, v3, v11}, Lcom/spotify/mobile/android/ui/d/b;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;IZ)V

    const-string v2, "com.spotify.mobile.android.ui.widget.NEXT"

    const v3, 0x7f0a03aa

    move-object/from16 v0, p1

    invoke-static {v0, v14, v2, v3, v11}, Lcom/spotify/mobile/android/ui/d/b;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;IZ)V

    if-nez v1, :cond_1ae

    const v1, 0x7f0a0329

    const v2, 0x7f0201d6

    invoke-virtual {v14, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_157
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/spotify/music/MainActivity;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v7, :cond_16c

    const-string v2, "com.spotify.mobile.android.ui.action.player.SHOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_16c
    const/4 v2, 0x2

    const/high16 v3, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0a0329

    invoke-virtual {v14, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v2, 0x7f0a01fc

    invoke-virtual {v14, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v2, 0x7f0a0258

    invoke-virtual {v14, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-eqz v13, :cond_d

    :try_start_189
    invoke-virtual {v13, v12, v14}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_18c
    .catch Ljava/lang/RuntimeException; {:try_start_189 .. :try_end_18c} :catch_18e

    goto/16 :goto_d

    :catch_18e
    move-exception v1

    const-string v2, "failing to update widget"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_199
    const-string v1, ""

    goto/16 :goto_30

    :cond_19d
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_dc

    :cond_1a1
    const/4 v3, 0x0

    goto/16 :goto_116

    :cond_1a4
    sget-object v6, Lcom/spotify/mobile/android/ui/d/b;->a:[I

    aget v3, v6, v3

    goto/16 :goto_11c

    :cond_1aa
    const-string v3, ""

    goto/16 :goto_125

    :cond_1ae
    const v2, 0x7f0a0329

    invoke-virtual {v14, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_157

    :cond_1b5
    move-object v2, v1

    goto/16 :goto_50
.end method
