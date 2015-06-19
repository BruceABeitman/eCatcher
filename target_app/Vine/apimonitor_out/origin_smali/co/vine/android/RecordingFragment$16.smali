.class synthetic Lco/vine/android/RecordingFragment$16;
.super Ljava/lang/Object;
.source "RecordingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/RecordingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lco/vine/android/RecordingFragment$SecretModes;->values()[Lco/vine/android/RecordingFragment$SecretModes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I

    :try_start_9
    sget-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I

    sget-object v1, Lco/vine/android/RecordingFragment$SecretModes;->STOP_MOTION:Lco/vine/android/RecordingFragment$SecretModes;

    invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_7f

    :goto_14
    :try_start_14
    sget-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I

    sget-object v1, Lco/vine/android/RecordingFragment$SecretModes;->WHITE_BALANCE:Lco/vine/android/RecordingFragment$SecretModes;

    invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_7d

    :goto_1f
    :try_start_1f
    sget-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I

    sget-object v1, Lco/vine/android/RecordingFragment$SecretModes;->EXPOSURE:Lco/vine/android/RecordingFragment$SecretModes;

    invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_7b

    :goto_2a
    :try_start_2a
    sget-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I

    sget-object v1, Lco/vine/android/RecordingFragment$SecretModes;->FLASH:Lco/vine/android/RecordingFragment$SecretModes;

    invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_79

    :goto_35
    :try_start_35
    sget-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I

    sget-object v1, Lco/vine/android/RecordingFragment$SecretModes;->TIME_LAPSE:Lco/vine/android/RecordingFragment$SecretModes;

    invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_77

    :goto_40
    :try_start_40
    sget-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I

    sget-object v1, Lco/vine/android/RecordingFragment$SecretModes;->SCENE_MODE:Lco/vine/android/RecordingFragment$SecretModes;

    invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_75

    :goto_4b
    :try_start_4b
    sget-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I

    sget-object v1, Lco/vine/android/RecordingFragment$SecretModes;->COLOR_EFFECTS:Lco/vine/android/RecordingFragment$SecretModes;

    invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_73

    :goto_56
    :try_start_56
    sget-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I

    sget-object v1, Lco/vine/android/RecordingFragment$SecretModes;->ANTI_BANDING:Lco/vine/android/RecordingFragment$SecretModes;

    invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_71

    :goto_62
    :try_start_62
    sget-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I

    sget-object v1, Lco/vine/android/RecordingFragment$SecretModes;->IMAGE_STAB:Lco/vine/android/RecordingFragment$SecretModes;

    invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    :goto_6e
    return-void

    :catch_6f
    move-exception v0

    goto :goto_6e

    :catch_71
    move-exception v0

    goto :goto_62

    :catch_73
    move-exception v0

    goto :goto_56

    :catch_75
    move-exception v0

    goto :goto_4b

    :catch_77
    move-exception v0

    goto :goto_40

    :catch_79
    move-exception v0

    goto :goto_35

    :catch_7b
    move-exception v0

    goto :goto_2a

    :catch_7d
    move-exception v0

    goto :goto_1f

    :catch_7f
    move-exception v0

    goto :goto_14
.end method
