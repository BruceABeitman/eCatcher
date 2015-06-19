.class public Lcom/spotify/music/spotlets/situationalcontent/loggers/activityrecognition/ActivityRecognitionIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "ActivityRecognitionIntentService.ACTIVITY_RECOGNITION_INTENT_SERVICE"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 11

    const/16 v8, 0x4b

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-static {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v2

    const-string v4, "Activity Recognized: %s, %s"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_c4

    :pswitch_1e
    const-string v0, "Could not recognize activity type."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "unknown"

    :goto_27
    aput-object v0, v5, v7

    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_da

    :pswitch_3e
    invoke-virtual {v2}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v0

    if-ge v0, v8, :cond_c2

    move-object v0, v1

    :goto_45
    if-eqz v0, :cond_73

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ActivityRecognitionIntentService.HERE_COME_TYPE"

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ActivityRecognitionIntentService.HERE_COME_TIME"

    invoke-virtual {v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "ActivityRecognitionIntentService.ACTIVITY_RECOGNITION_INTENT_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/situationalcontent/loggers/activityrecognition/ActivityRecognitionIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/n;->a(Landroid/content/Context;)Landroid/support/v4/content/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/n;->a(Landroid/content/Intent;)Z

    :cond_73
    :goto_73
    return-void

    :pswitch_74
    const-string v0, "in_vehicle"

    goto :goto_27

    :pswitch_77
    const-string v0, "on_bicycle"

    goto :goto_27

    :pswitch_7a
    const-string v0, "on_foot"

    goto :goto_27

    :pswitch_7d
    const-string v0, "running"

    goto :goto_27

    :pswitch_80
    const-string v0, "still"

    goto :goto_27

    :pswitch_83
    const-string v0, "tilting"

    goto :goto_27

    :pswitch_86
    const-string v0, "unknown"

    goto :goto_27

    :pswitch_89
    const-string v0, "walking"

    goto :goto_27

    :pswitch_8c
    move-object v0, v1

    goto :goto_45

    :pswitch_8e
    invoke-virtual {v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b1

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_96

    :cond_b1
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v4

    if-lt v4, v8, :cond_96

    goto :goto_45

    :cond_b8
    move-object v0, v1

    goto :goto_45

    :cond_ba
    const-string v0, "Received an update that was not a ActivityRecognitionResult."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_73

    :cond_c2
    move-object v0, v2

    goto :goto_45

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_74
        :pswitch_77
        :pswitch_7a
        :pswitch_80
        :pswitch_86
        :pswitch_83
        :pswitch_1e
        :pswitch_89
        :pswitch_7d
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x2
        :pswitch_8e
        :pswitch_3e
        :pswitch_3e
        :pswitch_8c
    .end packed-switch
.end method
