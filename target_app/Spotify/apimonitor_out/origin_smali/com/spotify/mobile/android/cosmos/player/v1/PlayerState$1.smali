.class synthetic Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$spotify$mobile$android$cosmos$player$v1$PlayerState$Action:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->values()[Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$1;->$SwitchMap$com$spotify$mobile$android$cosmos$player$v1$PlayerState$Action:[I

    :try_start_9
    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$1;->$SwitchMap$com$spotify$mobile$android$cosmos$player$v1$PlayerState$Action:[I

    sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PLAY:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_49

    :goto_14
    :try_start_14
    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$1;->$SwitchMap$com$spotify$mobile$android$cosmos$player$v1$PlayerState$Action:[I

    sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->RESUME:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_47

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$1;->$SwitchMap$com$spotify$mobile$android$cosmos$player$v1$PlayerState$Action:[I

    sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PAUSE:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$1;->$SwitchMap$com$spotify$mobile$android$cosmos$player$v1$PlayerState$Action:[I

    sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->SKIP_PREV:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_43

    :goto_35
    :try_start_35
    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$1;->$SwitchMap$com$spotify$mobile$android$cosmos$player$v1$PlayerState$Action:[I

    sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->SKIP_NEXT:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    goto :goto_40

    :catch_43
    move-exception v0

    goto :goto_35

    :catch_45
    move-exception v0

    goto :goto_2a

    :catch_47
    move-exception v0

    goto :goto_1f

    :catch_49
    move-exception v0

    goto :goto_14
.end method
