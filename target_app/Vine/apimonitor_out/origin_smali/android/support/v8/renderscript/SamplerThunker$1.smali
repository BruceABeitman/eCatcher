.class synthetic Landroid/support/v8/renderscript/SamplerThunker$1;
.super Ljava/lang/Object;
.source "SamplerThunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/SamplerThunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$support$v8$renderscript$Sampler$Value:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroid/support/v8/renderscript/Sampler$Value;->values()[Landroid/support/v8/renderscript/Sampler$Value;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v8/renderscript/SamplerThunker$1;->$SwitchMap$android$support$v8$renderscript$Sampler$Value:[I

    :try_start_9
    sget-object v0, Landroid/support/v8/renderscript/SamplerThunker$1;->$SwitchMap$android$support$v8$renderscript$Sampler$Value:[I

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_63

    :goto_14
    :try_start_14
    sget-object v0, Landroid/support/v8/renderscript/SamplerThunker$1;->$SwitchMap$android$support$v8$renderscript$Sampler$Value:[I

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_61

    :goto_1f
    :try_start_1f
    sget-object v0, Landroid/support/v8/renderscript/SamplerThunker$1;->$SwitchMap$android$support$v8$renderscript$Sampler$Value:[I

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_5f

    :goto_2a
    :try_start_2a
    sget-object v0, Landroid/support/v8/renderscript/SamplerThunker$1;->$SwitchMap$android$support$v8$renderscript$Sampler$Value:[I

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_5d

    :goto_35
    :try_start_35
    sget-object v0, Landroid/support/v8/renderscript/SamplerThunker$1;->$SwitchMap$android$support$v8$renderscript$Sampler$Value:[I

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_5b

    :goto_40
    :try_start_40
    sget-object v0, Landroid/support/v8/renderscript/SamplerThunker$1;->$SwitchMap$android$support$v8$renderscript$Sampler$Value:[I

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_59

    :goto_4b
    :try_start_4b
    sget-object v0, Landroid/support/v8/renderscript/SamplerThunker$1;->$SwitchMap$android$support$v8$renderscript$Sampler$Value:[I

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_57

    :goto_56
    return-void

    :catch_57
    move-exception v0

    goto :goto_56

    :catch_59
    move-exception v0

    goto :goto_4b

    :catch_5b
    move-exception v0

    goto :goto_40

    :catch_5d
    move-exception v0

    goto :goto_35

    :catch_5f
    move-exception v0

    goto :goto_2a

    :catch_61
    move-exception v0

    goto :goto_1f

    :catch_63
    move-exception v0

    goto :goto_14
.end method
