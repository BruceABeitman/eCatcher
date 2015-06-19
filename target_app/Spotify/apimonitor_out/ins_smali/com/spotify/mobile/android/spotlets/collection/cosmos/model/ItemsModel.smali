.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mError:Ljava/lang/String;
.field private final mItems:[Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mLength:I
.field private final mLoadingContents:Z
.field private final mUnfilteredLength:I
.method public constructor <init>([Lcom/spotify/mobile/android/cosmos/JacksonModel;Ljava/lang/String;IIZ)V
.registers 6
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mItems:[Lcom/spotify/mobile/android/cosmos/JacksonModel;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mError:Ljava/lang/String;
iput p3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mUnfilteredLength:I
iput p4, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLength:I
iput-boolean p5, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLoadingContents:Z
return-void
.end method
.method public getError()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mError:Ljava/lang/String;
return-object v0
.end method
.method public getItems()[Lcom/spotify/mobile/android/cosmos/JacksonModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mItems:[Lcom/spotify/mobile/android/cosmos/JacksonModel;
return-object v0
.end method
.method public isEmpty()Z
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mUnfilteredLength:I
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isEmptyWithFilter()Z
.registers 3
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLength:I
if-nez v0, :cond_c
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLength:I
iget v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mUnfilteredLength:I
if-ge v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isLoading()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLoadingContents:Z
if-eqz v0, :cond_a
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLength:I
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method