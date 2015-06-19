.class public Lcom/spotify/mobile/android/spotlets/user/ProfilePanelModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mUnclaimedInvitationCodeCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .registers 2
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "unclaimed_invitation_code_count"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelModel;->mUnclaimedInvitationCodeCount:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getUnclaimedInvitationCodeCount()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "unclaimed_invitation_code_count"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelModel;->mUnclaimedInvitationCodeCount:Ljava/lang/Integer;

    return-object v0
.end method
