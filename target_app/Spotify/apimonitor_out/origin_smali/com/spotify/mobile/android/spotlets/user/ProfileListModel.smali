.class public Lcom/spotify/mobile/android/spotlets/user/ProfileListModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mProfiles:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;


# direct methods
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/user/ProfileModel;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)V
    .registers 4
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "profiles"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "most_played_artists"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "facebook_friends"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    :goto_5
    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileListModel;->mProfiles:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    return-void

    :cond_8
    if-eqz p2, :cond_c

    move-object p1, p2

    goto :goto_5

    :cond_c
    move-object p1, p3

    goto :goto_5
.end method


# virtual methods
.method public getProfiles()[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileListModel;->mProfiles:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    return-object v0
.end method
