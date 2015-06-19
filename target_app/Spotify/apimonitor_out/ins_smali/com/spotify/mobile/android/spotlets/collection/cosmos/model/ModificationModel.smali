.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mError:Ljava/lang/String;
.field private final mSuccess:Z
.method public constructor <init>(Ljava/lang/String;Z)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;->mError:Ljava/lang/String;
iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;->mSuccess:Z
return-void
.end method
.method public getError()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;->mError:Ljava/lang/String;
return-object v0
.end method
.method public isSuccess()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;->mSuccess:Z
return v0
.end method