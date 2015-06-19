.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mDefault:Ljava/lang/String;
.field private final mLarge:Ljava/lang/String;
.field private final mSmall:Ljava/lang/String;
.field private final mXlarge:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->mDefault:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->mSmall:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->mLarge:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->mXlarge:Ljava/lang/String;
return-void
.end method
.method public getDefaultUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->mDefault:Ljava/lang/String;
return-object v0
.end method
.method public getLargeUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->mLarge:Ljava/lang/String;
return-object v0
.end method
.method public getSmallUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->mSmall:Ljava/lang/String;
return-object v0
.end method
.method public getXlargeUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->mXlarge:Ljava/lang/String;
return-object v0
.end method