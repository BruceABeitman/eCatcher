.class public Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final TRACK_RESOLVER_URI:Ljava/lang/String; = "hm://track-resolver/v1?uri="
.field private mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
.method private constructor <init>(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;-><init>(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)V
iput-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
return-void
.end method
.method public static create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;-><init>(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)V
return-object v0
.end method
.method public static createFromContextUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
.registers 3
const-string v0, "^spotify:(album|artist):[A-Za-z0-9]+$"
invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v0
const-string v1, "^spotify:user:[^:]+:(playlist:[A-Za-z0-9]+|starred)$"
invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v1
if-nez v0, :cond_18
if-nez v1, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "This version of the player does not support createFromContextUri with this type of URI"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
if-eqz v1, :cond_33
move-object v0, p0
:goto_1b
sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PLAY:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
invoke-static {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->contextUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->nextPageUrl(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->tracks(Ljava/util/List;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
return-object v0
:cond_33
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "hm://track-resolver/v1?uri="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1b
.end method
.method public build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->action:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cannot create PlayerState with null action"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->index:Ljava/lang/Integer;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->index:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-gez v0, :cond_26
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cannot create PlayerState with negative index"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->action:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PLAY:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
if-ne v0, v1, :cond_60
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->origin:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->origin:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;->source:Ljava/lang/String;
if-nez v0, :cond_44
:cond_3c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cannot create PlayerState with null view URI"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_44
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->contextUri:Ljava/lang/String;
if-nez v0, :cond_52
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cannot create PlayerState with null context URI"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_52
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->tracks:Ljava/util/List;
if-nez v0, :cond_60
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cannot create PlayerState with null track list"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_60
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
return-object v0
.end method
.method public contextUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iput-object p1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->contextUri:Ljava/lang/String;
return-object p0
.end method
.method public index(I)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iput-object v1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->index:Ljava/lang/Integer;
return-object p0
.end method
.method public nextPageUrl(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iput-object p1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->nextPageUrl:Ljava/lang/String;
return-object p0
.end method
.method public shuffle(Z)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->options:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
if-nez v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
new-instance v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
invoke-direct {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;-><init>()V
iput-object v1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->options:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
:cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->options:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
iput-boolean p1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;->shuffle:Z
return-object p0
.end method
.method public tracks(Ljava/util/List;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iput-object p1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->tracks:Ljava/util/List;
return-object p0
.end method
.method public viewUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->origin:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;
if-nez v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
new-instance v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;
invoke-direct {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;-><init>()V
iput-object v1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->origin:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;
:cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->mState:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->origin:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;
iput-object p1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;->source:Ljava/lang/String;
return-object p0
.end method