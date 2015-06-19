.class public Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network;
.field private mResource:Lcom/spotify/mobile/android/spotlets/share/model/Resource;
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/share/model/Resource;[Lcom/spotify/mobile/android/spotlets/share/model/Network;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mResource:Lcom/spotify/mobile/android/spotlets/share/model/Resource;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network;
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_19
move v0, v1
goto :goto_4
:cond_19
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mResource:Lcom/spotify/mobile/android/spotlets/share/model/Resource;
if-eqz v2, :cond_29
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mResource:Lcom/spotify/mobile/android/spotlets/share/model/Resource;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mResource:Lcom/spotify/mobile/android/spotlets/share/model/Resource;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_27
move v0, v1
goto :goto_4
:cond_29
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mResource:Lcom/spotify/mobile/android/spotlets/share/model/Resource;
if-eqz v2, :cond_4
goto :goto_27
.end method
.method public getNetworks()[Lcom/spotify/mobile/android/spotlets/share/model/Network;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network;
return-object v0
.end method
.method public getResource()Lcom/spotify/mobile/android/spotlets/share/model/Resource;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mResource:Lcom/spotify/mobile/android/spotlets/share/model/Resource;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mResource:Lcom/spotify/mobile/android/spotlets/share/model/Resource;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mResource:Lcom/spotify/mobile/android/spotlets/share/model/Resource;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->hashCode()I
move-result v0
:goto_b
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network;
if-eqz v2, :cond_17
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network;
invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v1
:cond_17
add-int/2addr v0, v1
return v0
:cond_19
move v0, v1
goto :goto_b
.end method