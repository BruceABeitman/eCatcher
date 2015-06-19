.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private mHeaderPolicy:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/HeaderPolicy;
.field private mListPolicy:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public setHeaderPolicy(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/HeaderPolicy;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;->mHeaderPolicy:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/HeaderPolicy;
return-void
.end method
.method public setListPolicy(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;->mListPolicy:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;
return-void
.end method