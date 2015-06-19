.class public Lcom/spotify/mobile/android/spotlets/user/InvitationCodeListModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;)V
.registers 2
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeListModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
return-void
.end method
.method public getInvitationCodes()[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeListModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
return-object v0
.end method