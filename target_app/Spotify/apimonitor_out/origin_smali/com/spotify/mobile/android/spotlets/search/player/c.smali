.class public interface abstract Lcom/spotify/mobile/android/spotlets/search/player/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    invoke-direct {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/player/c;->c:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/database/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/database/Observable",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/player/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
.end method

.method public abstract c()V
.end method
