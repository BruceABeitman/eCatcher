.class public interface abstract Lcom/spotify/mobile/android/spotlets/search/player/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final c:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
invoke-direct {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/player/c;->c:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
return-void
.end method
.method public abstract a()Landroid/database/Observable;
.end method
.method public abstract a(Ljava/util/List;Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;Ljava/lang/String;)V
.end method
.method public abstract b()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
.end method
.method public abstract c()V
.end method