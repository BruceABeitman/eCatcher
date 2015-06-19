.class public Lcom/twidroid/widget/FullScreenWidget;
.super Lcom/twidroid/widget/BaseWidget;
.source "SourceFile"
.field static final A:I = 0x2
.field static B:I = 0x0
.field static C:Z = false
.field static final D:I = 0x7f0300a2
.field static final E:I = 0x7f0300a3
.field static F:Landroid/widget/RemoteViews; = null
.field static G:Landroid/net/Uri; = null
.field static H:Landroid/content/SharedPreferences; = null
.field private static final I:Ljava/lang/String; = "FullScreenWidget"
.field static a:I = 0x0
.field static b:I = 0x0
.field static c:I = 0x0
.field static d:I = 0x0
.field static e:I = 0x0
.field static f:I = 0x0
.field static g:I = 0x0
.field static h:I = 0x0
.field static i:I = 0x0
.field static j:I = 0x0
.field static final k:I = 0x0
.field static final z:I = 0x1
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x4
sput v0, Lcom/twidroid/widget/FullScreenWidget;->b:I
sput v1, Lcom/twidroid/widget/FullScreenWidget;->c:I
const/4 v0, 0x1
sput v0, Lcom/twidroid/widget/FullScreenWidget;->d:I
const/4 v0, 0x2
sput v0, Lcom/twidroid/widget/FullScreenWidget;->e:I
const/4 v0, 0x3
sput v0, Lcom/twidroid/widget/FullScreenWidget;->f:I
const/4 v0, 0x6
sput v0, Lcom/twidroid/widget/FullScreenWidget;->g:I
const/16 v0, 0x9
sput v0, Lcom/twidroid/widget/FullScreenWidget;->h:I
const/16 v0, 0xa
sput v0, Lcom/twidroid/widget/FullScreenWidget;->i:I
const/16 v0, 0xb
sput v0, Lcom/twidroid/widget/FullScreenWidget;->j:I
sput v1, Lcom/twidroid/widget/FullScreenWidget;->B:I
sput-boolean v1, Lcom/twidroid/widget/FullScreenWidget;->C:Z
const/4 v0, 0x0
sput-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/widget/BaseWidget;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget v1, Lcom/twidroid/widget/FullScreenWidget;->e:I
invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
invoke-static {v1, v2}, Lcom/ubermedia/b/a/k;->b(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const v1, 0x7f0c02fa
invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget v1, Lcom/twidroid/widget/FullScreenWidget;->h:I
invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
.registers 17
new-instance v7, Landroid/text/style/ForegroundColorSpan;
const v0, -0xa1371d
invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
new-instance v8, Landroid/text/style/StyleSpan;
const/4 v0, 0x1
invoke-direct {v8, v0}, Landroid/text/style/StyleSpan;-><init>(I)V
const/4 v0, 0x0
sput-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v0, 0x7f0c0340
:try_start_14
invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/twidroid/widget/FullScreenWidget;->b:I
:try_end_22
.catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_22} :catch_f0
:goto_22
const/4 v0, 0x1
sput-boolean v0, Lcom/twidroid/widget/FullScreenWidget;->C:Z
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
sput-object v0, Lcom/twidroid/widget/FullScreenWidget;->H:Landroid/content/SharedPreferences;
const/4 v0, 0x0
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->H:Landroid/content/SharedPreferences;
const-string v2, "setup.ok"
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
if-nez v1, :cond_f9
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
if-nez v1, :cond_b3
new-instance v0, Landroid/widget/RemoteViews;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const v2, 0x7f0300a3
invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901fc
const v2, 0x7f0c02cf
invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/TwidroidClient;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v2, 0x7f0901f7
const/4 v3, 0x0
const/4 v4, 0x0
invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
invoke-static {p0}, Lcom/twidroid/widget/FullScreenWidget;->c(Landroid/content/Context;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_b3
const-string v1, "sender_id"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
sput v1, Lcom/twidroid/widget/FullScreenWidget;->c:I
const-string v1, "message"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
sput v1, Lcom/twidroid/widget/FullScreenWidget;->d:I
const-string v1, "created_at"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
sput v1, Lcom/twidroid/widget/FullScreenWidget;->e:I
const-string v1, "user_screenname"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
sput v1, Lcom/twidroid/widget/FullScreenWidget;->f:I
const-string v1, "user_avatar"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
sput v1, Lcom/twidroid/widget/FullScreenWidget;->g:I
const-string v1, "tsource"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
sput v1, Lcom/twidroid/widget/FullScreenWidget;->h:I
const-string v1, "target_user_id"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
sput v1, Lcom/twidroid/widget/FullScreenWidget;->i:I
const-string v1, "retweeted_status_id"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
sput v1, Lcom/twidroid/widget/FullScreenWidget;->j:I
:cond_b3
:goto_b3
:try_start_b3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
if-eqz v0, :cond_bc
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_bc
new-instance v0, Landroid/content/ComponentName;
const-class v3, Lcom/twidroid/widget/FullScreenWidget;
invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
sget-object v3, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
invoke-virtual {p1, v0, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
const-string v0, "HomeScreen"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "android.appwidget.AppWidgetManager.updateAppWidget "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
sub-long v1, v4, v1
invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "ms"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_ec
.catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_ec} :catch_56b
:goto_ec
const/4 v0, 0x0
sput-boolean v0, Lcom/twidroid/widget/FullScreenWidget;->C:Z
return-void
:catch_f0
move-exception v0
const/4 v1, 0x4
sput v1, Lcom/twidroid/widget/FullScreenWidget;->b:I
invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
goto/16 :goto_22
:cond_f9
invoke-static {p0}, Lcom/twidroid/widget/FullScreenWidget;->c(Landroid/content/Context;)Landroid/database/Cursor;
move-result-object v6
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
if-nez v0, :cond_2a0
new-instance v0, Landroid/widget/RemoteViews;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const v2, 0x7f0300a2
invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/TwidroidClient;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "TabName"
const-string v2, "TAB_TIMELINE"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/twidroid/TwidroidClient;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "TabName"
const-string v3, "TAB_DIRECT_MESSAGES"
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
new-instance v2, Landroid/content/Intent;
const-class v3, Lcom/twidroid/TwidroidClient;
invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "foobar://"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v2
const-string v3, "TabName"
const-string v4, "TAB_SEARCH"
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
new-instance v3, Landroid/content/Intent;
const-class v4, Lcom/twidroid/TwidroidClient;
invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v4, "TabName"
const-string v5, "TAB_MENTIONS"
invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v3
sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v5, "HTC"
invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_326
sget-object v4, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v5, 0x7f0901f8
const/4 v9, 0x0
new-instance v10, Landroid/content/Intent;
const-class v11, Lcom/twidroid/TwidroidClient;
invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v11, "twidroid.open_tweet_box"
const/4 v12, 0x1
invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
move-result-object v10
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string v12, "foobar://"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v12
invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v11
invoke-virtual {v10, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v10
const/4 v11, 0x0
invoke-static {p0, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v9
invoke-virtual {v4, v5, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
:goto_1af
sget-object v4, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
invoke-static {v4, p0, v0, v3, v1}, Lcom/twidroid/widget/FullScreenWidget;->a(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V
sget-object v4, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v5, 0x7f0901f7
const/4 v9, 0x4
const/high16 v10, 0x800
invoke-static {p0, v9, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v4, 0x7f09024d
const/4 v5, 0x0
const/high16 v9, 0x800
invoke-static {p0, v5, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v3
invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v3, 0x7f09024c
const/4 v4, 0x1
const/high16 v5, 0x800
invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v1
invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f090049
const/4 v3, 0x3
const/high16 v4, 0x800
invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "twidroid.widget.SCROLLDOWN"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
const/high16 v2, 0x800
invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v2, 0x7f09024e
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "twidroid.widget.SCROLLUP"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
const/high16 v2, 0x800
invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v2, 0x7f09024b
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "twidroid.widget.MODE_TWEETS"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
const/high16 v2, 0x800
invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v2, 0x7f090251
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "twidroid.widget.MODE_MENTIONS"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
const/high16 v2, 0x800
invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v2, 0x7f09024d
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "twidroid.widget.MODE_DIRECTS"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
const/high16 v2, 0x800
invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v2, 0x7f09024c
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
if-eqz v6, :cond_2a0
const-string v0, "sender_id"
invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/twidroid/widget/FullScreenWidget;->c:I
const-string v0, "message"
invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/twidroid/widget/FullScreenWidget;->d:I
const-string v0, "created_at"
invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/twidroid/widget/FullScreenWidget;->e:I
const-string v0, "user_screenname"
invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/twidroid/widget/FullScreenWidget;->f:I
const-string v0, "user_avatar"
invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/twidroid/widget/FullScreenWidget;->g:I
const-string v0, "tsource"
invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/twidroid/widget/FullScreenWidget;->h:I
const-string v0, "target_user_id"
invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/twidroid/widget/FullScreenWidget;->i:I
const-string v0, "retweeted_status_id"
invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/twidroid/widget/FullScreenWidget;->j:I
:cond_2a0
if-nez v6, :cond_33d
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901db
const v2, 0x7f020208
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901dd
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901dc
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901df
const v2, 0x7f020208
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e1
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e0
const v2, 0x7f0c015d
invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e3
const v2, 0x7f020208
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e5
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e4
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901f3
const v2, 0x7f020208
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901f5
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901f4
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
move-object v0, v6
goto/16 :goto_b3
:cond_326
sget-object v4, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v5, 0x7f0901f8
const/4 v9, 0x0
new-instance v10, Landroid/content/Intent;
const-class v11, Lcom/twidroid/activity/SendTweet;
invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/4 v11, 0x0
invoke-static {p0, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v9
invoke-virtual {v4, v5, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
goto/16 :goto_1af
:cond_33d
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_4e7
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901db
sget v2, Lcom/twidroid/widget/FullScreenWidget;->f:I
invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
sget v3, Lcom/twidroid/widget/FullScreenWidget;->c:I
invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
sget v5, Lcom/twidroid/widget/FullScreenWidget;->g:I
invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static/range {v0 .. v5}, Lcom/twidroid/widget/FullScreenWidget;->a(Landroid/widget/RemoteViews;ILjava/lang/String;JLjava/lang/String;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->G:Landroid/net/Uri;
if-eqz v0, :cond_36b
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901db
sget-object v2, Lcom/twidroid/widget/FullScreenWidget;->G:Landroid/net/Uri;
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V
:cond_36b
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901dd
invoke-static {p0, v6}, Lcom/twidroid/widget/FullScreenWidget;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
new-instance v0, Landroid/text/SpannableStringBuilder;
invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
sget v1, Lcom/twidroid/widget/FullScreenWidget;->f:I
invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
move-result v1
const-string v2, " "
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
sget v2, Lcom/twidroid/widget/FullScreenWidget;->d:I
invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
const/4 v2, 0x0
const/16 v3, 0x21
invoke-virtual {v0, v8, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
const/4 v2, 0x0
const/16 v3, 0x21
invoke-virtual {v0, v7, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v2, 0x7f0901dc
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
:goto_3ab
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_508
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901df
sget v2, Lcom/twidroid/widget/FullScreenWidget;->f:I
invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
sget v3, Lcom/twidroid/widget/FullScreenWidget;->c:I
invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
sget v5, Lcom/twidroid/widget/FullScreenWidget;->g:I
invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static/range {v0 .. v5}, Lcom/twidroid/widget/FullScreenWidget;->a(Landroid/widget/RemoteViews;ILjava/lang/String;JLjava/lang/String;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->G:Landroid/net/Uri;
if-eqz v0, :cond_3d9
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901df
sget-object v2, Lcom/twidroid/widget/FullScreenWidget;->G:Landroid/net/Uri;
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V
:cond_3d9
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e1
invoke-static {p0, v6}, Lcom/twidroid/widget/FullScreenWidget;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
new-instance v0, Landroid/text/SpannableStringBuilder;
invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
sget v1, Lcom/twidroid/widget/FullScreenWidget;->f:I
invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3fb
sget v1, Lcom/twidroid/widget/FullScreenWidget;->f:I
invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_3fb
invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
move-result v1
const-string v2, " "
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
sget v2, Lcom/twidroid/widget/FullScreenWidget;->d:I
invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
const/4 v2, 0x0
const/16 v3, 0x21
invoke-virtual {v0, v8, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
const/4 v2, 0x0
const/16 v3, 0x21
invoke-virtual {v0, v7, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v2, 0x7f0901e0
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
:goto_421
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_529
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e3
sget v2, Lcom/twidroid/widget/FullScreenWidget;->f:I
invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
sget v3, Lcom/twidroid/widget/FullScreenWidget;->c:I
invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
sget v5, Lcom/twidroid/widget/FullScreenWidget;->g:I
invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static/range {v0 .. v5}, Lcom/twidroid/widget/FullScreenWidget;->a(Landroid/widget/RemoteViews;ILjava/lang/String;JLjava/lang/String;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e5
invoke-static {p0, v6}, Lcom/twidroid/widget/FullScreenWidget;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
new-instance v0, Landroid/text/SpannableStringBuilder;
invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
sget v1, Lcom/twidroid/widget/FullScreenWidget;->f:I
invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
move-result v1
const-string v2, " "
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
sget v2, Lcom/twidroid/widget/FullScreenWidget;->d:I
invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
const/4 v2, 0x0
const/16 v3, 0x21
invoke-virtual {v0, v7, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
const/4 v2, 0x0
const/16 v3, 0x21
invoke-virtual {v0, v8, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v2, 0x7f0901e4
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
:goto_481
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_54a
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901f3
sget v2, Lcom/twidroid/widget/FullScreenWidget;->f:I
invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
sget v3, Lcom/twidroid/widget/FullScreenWidget;->c:I
invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
sget v5, Lcom/twidroid/widget/FullScreenWidget;->g:I
invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static/range {v0 .. v5}, Lcom/twidroid/widget/FullScreenWidget;->a(Landroid/widget/RemoteViews;ILjava/lang/String;JLjava/lang/String;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901f5
invoke-static {p0, v6}, Lcom/twidroid/widget/FullScreenWidget;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
new-instance v0, Landroid/text/SpannableStringBuilder;
invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
sget v1, Lcom/twidroid/widget/FullScreenWidget;->f:I
invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
move-result v1
const-string v2, " "
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
sget v2, Lcom/twidroid/widget/FullScreenWidget;->d:I
invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
const/4 v2, 0x0
const/16 v3, 0x21
invoke-virtual {v0, v7, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
const/4 v2, 0x0
const/16 v3, 0x21
invoke-virtual {v0, v8, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
sget-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v2, 0x7f0901f4
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
:goto_4e1
invoke-interface {v6}, Landroid/database/Cursor;->close()V
move-object v0, v6
goto/16 :goto_b3
:cond_4e7
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901db
const v2, 0x7f020208
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901dd
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901dc
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
goto/16 :goto_3ab
:cond_508
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901df
const v2, 0x7f020208
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e1
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e0
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
goto/16 :goto_421
:cond_529
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e3
const v2, 0x7f020208
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e5
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901e4
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
goto/16 :goto_481
:cond_54a
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901f3
const v2, 0x7f020208
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901f5
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
const v1, 0x7f0901f4
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
goto/16 :goto_4e1
:catch_56b
move-exception v0
const/4 v1, 0x0
sput-boolean v1, Lcom/twidroid/widget/FullScreenWidget;->C:Z
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_ec
.end method
.method static a(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V
.registers 11
const v5, 0x7f090252
const v4, 0x7f0901fa
const/high16 v3, 0x800
const/4 v2, 0x4
const/4 v1, 0x0
invoke-virtual {p0, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
const v0, 0x7f090253
invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
const v0, 0x7f090254
invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
sget v0, Lcom/twidroid/widget/FullScreenWidget;->B:I
packed-switch v0, :pswitch_data_48
:goto_1e
return-void
:pswitch_1f
invoke-virtual {p0, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
invoke-static {p1, v2, p2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
invoke-virtual {p0, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
goto :goto_1e
:pswitch_2a
const v0, 0x7f090253
invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
invoke-static {p1, v1, p3, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
invoke-virtual {p0, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
goto :goto_1e
:pswitch_38
const v0, 0x7f090254
invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
const/4 v0, 0x1
invoke-static {p1, v0, p4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
invoke-virtual {p0, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
goto :goto_1e
nop
:pswitch_data_48
.packed-switch 0x0
:pswitch_1f
:pswitch_2a
:pswitch_38
.end packed-switch
.end method
.method static b(Landroid/content/Context;)Landroid/database/Cursor;
.registers 10
const/4 v6, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget v1, Lcom/twidroid/widget/FullScreenWidget;->B:I
packed-switch v1, :pswitch_data_90
move-object v0, v6
:goto_b
move-object v6, v0
:goto_c
return-object v6
:pswitch_d
const-string v1, "content://com.twidroid.ubersocial.provider.Tweet/tweets"
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
sget-object v1, Lcom/twidroid/provider/TweetProvider;->d:Landroid/net/Uri;
const/4 v2, 0x0
const-string v3, "deleted=0 and is_public=1"
const/4 v4, 0x0
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "created_at desc LIMIT 10 OFFSET "
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
sget v7, Lcom/twidroid/widget/FullScreenWidget;->a:I
sget v8, Lcom/twidroid/widget/FullScreenWidget;->b:I
mul-int/2addr v7, v8
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
goto :goto_b
:pswitch_35
const-string v1, "content://com.twidroid.ubersocial.provider.Mentions/tweets"
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
sget-object v1, Lcom/twidroid/provider/MentionsProvider;->b:Landroid/net/Uri;
const/4 v2, 0x0
const-string v3, "deleted=0 and is_public=1"
const/4 v4, 0x0
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "created_at desc LIMIT 10 OFFSET "
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
sget v7, Lcom/twidroid/widget/FullScreenWidget;->a:I
sget v8, Lcom/twidroid/widget/FullScreenWidget;->b:I
mul-int/2addr v7, v8
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
goto :goto_b
:pswitch_5d
const-string v1, "content://com.twidroid.ubersocial.provider.DirectMessage/directs"
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
sget-object v1, Lcom/twidroid/provider/DirectMessageProvider;->b:Landroid/net/Uri;
const/4 v2, 0x0
const-string v3, "is_outbox=0 and deleted=0"
const/4 v4, 0x0
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "created_at desc LIMIT 10 OFFSET "
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
sget v7, Lcom/twidroid/widget/FullScreenWidget;->a:I
sget v8, Lcom/twidroid/widget/FullScreenWidget;->b:I
mul-int/2addr v7, v8
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_83
.catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_83} :catch_85
.catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_83} :catch_8a
move-result-object v0
goto :goto_b
:catch_85
move-exception v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V
goto :goto_c
:catch_8a
move-exception v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
goto/16 :goto_c
:pswitch_data_90
.packed-switch 0x0
:pswitch_d
:pswitch_35
:pswitch_5d
.end packed-switch
.end method
.method static c(Landroid/content/Context;)Landroid/database/Cursor;
.registers 6
const/4 v1, 0x0
const/4 v4, 0x0
:try_start_2
invoke-static {p0}, Lcom/twidroid/widget/FullScreenWidget;->b(Landroid/content/Context;)Landroid/database/Cursor;
:try_end_5
.catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_5} :catch_22
move-result-object v0
if-eqz v0, :cond_e
:try_start_8
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v2
if-nez v2, :cond_12
:cond_e
const/4 v2, 0x0
sput-boolean v2, Lcom/twidroid/widget/FullScreenWidget;->C:Z
:try_end_11
.catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_11} :catch_13
.catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_8 .. :try_end_11} :catch_22
move-object v0, v1
:cond_12
:goto_12
return-object v0
:catch_13
move-exception v2
:try_start_14
const-string v2, "Twidroyd Database error: SQLiteFullException: Disk is full. Please clear the cache or uninstall not needed applications."
const/4 v3, 0x1
invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Toast;->show()V
const/4 v2, 0x0
sput-boolean v2, Lcom/twidroid/widget/FullScreenWidget;->C:Z
:try_end_21
.catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_14 .. :try_end_21} :catch_22
goto :goto_12
:catch_22
move-exception v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
sput-boolean v4, Lcom/twidroid/widget/FullScreenWidget;->C:Z
move-object v0, v1
goto :goto_12
.end method
.method public onDeleted(Landroid/content/Context;[I)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/widget/BaseWidget;->onDeleted(Landroid/content/Context;[I)V
const-string v0, "FullScreenWidget"
const-string v1, "onDeleted"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
array-length v1, p2
const/4 v0, 0x0
:goto_c
if-ge v0, v1, :cond_11
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_11
return-void
.end method
.method public onDisabled(Landroid/content/Context;)V
.registers 6
const/4 v0, 0x0
sput-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
new-instance v1, Landroid/content/ComponentName;
const-string v2, "com.twidroid"
const-string v3, ".widget.FullScreenWidget"
invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x2
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
return-void
.end method
.method public onEnabled(Landroid/content/Context;)V
.registers 7
const/4 v4, 0x1
const-string v0, "FullScreenWidget"
const-string v1, "::onEnabled"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
sput-boolean v0, Lcom/twidroid/widget/FullScreenWidget;->C:Z
const/4 v0, 0x0
sput-object v0, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
new-instance v1, Landroid/content/ComponentName;
const-string v2, "com.twidroid"
const-string v3, ".widget.FullScreenWidget"
invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const/4 v2, 0x0
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.intent.action.CONFIGURATION_CHANGED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_10
const/4 v1, 0x0
sput-object v1, Lcom/twidroid/widget/FullScreenWidget;->F:Landroid/widget/RemoteViews;
:cond_10
const-string v1, "android.appwidget.action.APPWIDGET_DELETED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2d
invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "appWidgetId"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
if-eqz v0, :cond_2c
const/4 v1, 0x1
new-array v1, v1, [I
aput v0, v1, v2
invoke-virtual {p0, p1, v1}, Lcom/twidroid/widget/FullScreenWidget;->onDeleted(Landroid/content/Context;[I)V
:cond_2c
:goto_2c
return-void
:cond_2d
invoke-super {p0, p1, p2}, Lcom/twidroid/widget/BaseWidget;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
goto :goto_2c
.end method
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.registers 5
const/4 v0, 0x0
sput v0, Lcom/twidroid/widget/FullScreenWidget;->a:I
invoke-static {p1, p2, v0}, Lcom/twidroid/widget/FullScreenWidget;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
return-void
.end method