.class public Lcom/spotify/mobile/android/spotlets/user/ProfilePanelModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mUnclaimedInvitationCodeCount:Ljava/lang/Integer;
.method public constructor <init>(Ljava/lang/Integer;)V
.registers 2
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelModel;->mUnclaimedInvitationCodeCount:Ljava/lang/Integer;
return-void
.end method
.method public getUnclaimedInvitationCodeCount()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelModel;->mUnclaimedInvitationCodeCount:Ljava/lang/Integer;
return-object v0
.end method