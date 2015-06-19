.class public Lco/vine/android/CameraWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CameraWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 3

    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackCameraWidgetRemoved()V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 14

    const/4 v9, 0x0

    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030022

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v0, p3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v4, :cond_30

    aget v2, v0, v1

    const/4 v7, -0x1

    const-string v8, "CameraWidget"

    invoke-static {p1, v7, v8}, Lco/vine/android/AbstractRecordingActivity;->getIntentForGeneric(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v7, "co.vine.android.RECORD"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v9, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const v7, 0x7f0a0076

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p2, v2, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_30
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lco/vine/android/service/ResourceService;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
