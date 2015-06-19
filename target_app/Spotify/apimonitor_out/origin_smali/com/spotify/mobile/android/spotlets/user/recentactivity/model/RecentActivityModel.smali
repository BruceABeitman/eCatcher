.class public Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/RecentActivityModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private mActivities:[Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;


# direct methods
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;)V
    .registers 3
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "activities"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_8

    const/4 v0, 0x0

    new-array p1, v0, [Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;

    :cond_8
    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/RecentActivityModel;->mActivities:[Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/RecentActivityModel;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/RecentActivityModel;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/RecentActivityModel;->mActivities:[Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/RecentActivityModel;->mActivities:[Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getActivities()[Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/RecentActivityModel;->mActivities:[Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/RecentActivityModel;->mActivities:[Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/RecentActivityModel;->mActivities:[Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setActivities([Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/RecentActivityModel;->mActivities:[Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;

    return-void
.end method
