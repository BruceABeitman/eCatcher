.class public Lcom/spotify/mobile/android/spotlets/user/InvitationCodeListModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;


# direct methods
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;)V
    .registers 2
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "invitation_codes"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeListModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;

    return-void
.end method


# virtual methods
.method public getInvitationCodes()[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "invitation_codes"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeListModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;

    return-object v0
.end method
