.class public final Lcom/ibm/icu/lang/UCharacterDirection;
.super Ljava/lang/Object;
.source "UCharacterDirection.java"

# interfaces
.implements Lcom/ibm/icu/lang/UCharacterEnums$ECharacterDirection;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_40

    const-string v0, "Unassigned"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "Left-to-Right"

    goto :goto_5

    :pswitch_9
    const-string v0, "Right-to-Left"

    goto :goto_5

    :pswitch_c
    const-string v0, "European Number"

    goto :goto_5

    :pswitch_f
    const-string v0, "European Number Separator"

    goto :goto_5

    :pswitch_12
    const-string v0, "European Number Terminator"

    goto :goto_5

    :pswitch_15
    const-string v0, "Arabic Number"

    goto :goto_5

    :pswitch_18
    const-string v0, "Common Number Separator"

    goto :goto_5

    :pswitch_1b
    const-string v0, "Paragraph Separator"

    goto :goto_5

    :pswitch_1e
    const-string v0, "Segment Separator"

    goto :goto_5

    :pswitch_21
    const-string v0, "Whitespace"

    goto :goto_5

    :pswitch_24
    const-string v0, "Other Neutrals"

    goto :goto_5

    :pswitch_27
    const-string v0, "Left-to-Right Embedding"

    goto :goto_5

    :pswitch_2a
    const-string v0, "Left-to-Right Override"

    goto :goto_5

    :pswitch_2d
    const-string v0, "Right-to-Left Arabic"

    goto :goto_5

    :pswitch_30
    const-string v0, "Right-to-Left Embedding"

    goto :goto_5

    :pswitch_33
    const-string v0, "Right-to-Left Override"

    goto :goto_5

    :pswitch_36
    const-string v0, "Pop Directional Format"

    goto :goto_5

    :pswitch_39
    const-string v0, "Non-Spacing Mark"

    goto :goto_5

    :pswitch_3c
    const-string v0, "Boundary Neutral"

    goto :goto_5

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
    .end packed-switch
.end method
