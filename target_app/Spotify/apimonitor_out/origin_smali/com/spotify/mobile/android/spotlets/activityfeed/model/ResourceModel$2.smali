.class final synthetic Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->values()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$2;->a:[I

    :try_start_9
    sget-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$2;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->d:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
