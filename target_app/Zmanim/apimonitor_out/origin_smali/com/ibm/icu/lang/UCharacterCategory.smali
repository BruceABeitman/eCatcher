.class public final Lcom/ibm/icu/lang/UCharacterCategory;
.super Ljava/lang/Object;
.source "UCharacterCategory.java"

# interfaces
.implements Lcom/ibm/icu/lang/UCharacterEnums$ECharacterCategory;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_5e

    const-string v0, "Unassigned"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "Letter, Uppercase"

    goto :goto_5

    :pswitch_9
    const-string v0, "Letter, Lowercase"

    goto :goto_5

    :pswitch_c
    const-string v0, "Letter, Titlecase"

    goto :goto_5

    :pswitch_f
    const-string v0, "Letter, Modifier"

    goto :goto_5

    :pswitch_12
    const-string v0, "Letter, Other"

    goto :goto_5

    :pswitch_15
    const-string v0, "Mark, Non-Spacing"

    goto :goto_5

    :pswitch_18
    const-string v0, "Mark, Enclosing"

    goto :goto_5

    :pswitch_1b
    const-string v0, "Mark, Spacing Combining"

    goto :goto_5

    :pswitch_1e
    const-string v0, "Number, Decimal Digit"

    goto :goto_5

    :pswitch_21
    const-string v0, "Number, Letter"

    goto :goto_5

    :pswitch_24
    const-string v0, "Number, Other"

    goto :goto_5

    :pswitch_27
    const-string v0, "Separator, Space"

    goto :goto_5

    :pswitch_2a
    const-string v0, "Separator, Line"

    goto :goto_5

    :pswitch_2d
    const-string v0, "Separator, Paragraph"

    goto :goto_5

    :pswitch_30
    const-string v0, "Other, Control"

    goto :goto_5

    :pswitch_33
    const-string v0, "Other, Format"

    goto :goto_5

    :pswitch_36
    const-string v0, "Other, Private Use"

    goto :goto_5

    :pswitch_39
    const-string v0, "Other, Surrogate"

    goto :goto_5

    :pswitch_3c
    const-string v0, "Punctuation, Dash"

    goto :goto_5

    :pswitch_3f
    const-string v0, "Punctuation, Open"

    goto :goto_5

    :pswitch_42
    const-string v0, "Punctuation, Close"

    goto :goto_5

    :pswitch_45
    const-string v0, "Punctuation, Connector"

    goto :goto_5

    :pswitch_48
    const-string v0, "Punctuation, Other"

    goto :goto_5

    :pswitch_4b
    const-string v0, "Symbol, Math"

    goto :goto_5

    :pswitch_4e
    const-string v0, "Symbol, Currency"

    goto :goto_5

    :pswitch_51
    const-string v0, "Symbol, Modifier"

    goto :goto_5

    :pswitch_54
    const-string v0, "Symbol, Other"

    goto :goto_5

    :pswitch_57
    const-string v0, "Punctuation, Initial quote"

    goto :goto_5

    :pswitch_5a
    const-string v0, "Punctuation, Final quote"

    goto :goto_5

    nop

    :pswitch_data_5e
    .packed-switch 0x1
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
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
    .end packed-switch
.end method
