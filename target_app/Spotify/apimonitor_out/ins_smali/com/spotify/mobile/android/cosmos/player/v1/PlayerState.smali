.class public Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public final action:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.field public contextUri:Ljava/lang/String;
.field public durationInMs:D
.field public index:Ljava/lang/Integer;
.field public loading:Z
.field public nextPageUrl:Ljava/lang/String;
.field public options:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
.field public origin:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;
.field public playing:Z
.field public positionInMs:D
.field public trackUri:Ljava/lang/String;
.field public tracks:Ljava/util/List;
.method public constructor <init>()V
.registers 2
sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->UNKNOWN:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;-><init>(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)V
return-void
.end method
.method public constructor <init>(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->action:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
return-void
.end method