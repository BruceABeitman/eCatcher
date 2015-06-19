.class public Lco/vine/android/views/SquareMatch;
.super Ljava/lang/Object;
.source "SquareMatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/views/SquareMatch$1;,
        Lco/vine/android/views/SquareMatch$SquareMatchRules;,
        Lco/vine/android/views/SquareMatch$SquareMatchView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMatchingLayoutAction(Lco/vine/android/views/SquareMatch$SquareMatchView;)V
    .registers 3

    invoke-interface {p0}, Lco/vine/android/views/SquareMatch$SquareMatchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-interface {p0}, Lco/vine/android/views/SquareMatch$SquareMatchView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {p0}, Lco/vine/android/views/SquareMatch$SquareMatchView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-interface {p0, v0}, Lco/vine/android/views/SquareMatch$SquareMatchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setupSquareMatchView(Lco/vine/android/views/SquareMatch$SquareMatchView;)V
    .registers 6

    invoke-interface {p0}, Lco/vine/android/views/SquareMatch$SquareMatchView;->getMeasuredWidth()I

    move-result v2

    invoke-interface {p0}, Lco/vine/android/views/SquareMatch$SquareMatchView;->getMeasuredHeight()I

    move-result v0

    if-eq v2, v0, :cond_26

    sget-object v3, Lco/vine/android/views/SquareMatch$1;->$SwitchMap$co$vine$android$views$SquareMatch$SquareMatchRules:[I

    invoke-interface {p0}, Lco/vine/android/views/SquareMatch$SquareMatchView;->getMatchSpec()Lco/vine/android/views/SquareMatch$SquareMatchRules;

    move-result-object v4

    invoke-virtual {v4}, Lco/vine/android/views/SquareMatch$SquareMatchRules;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_34

    if-le v2, v0, :cond_31

    move v1, v0

    :goto_1c
    invoke-interface {p0, v1}, Lco/vine/android/views/SquareMatch$SquareMatchView;->setMeasuredDimension(I)V

    invoke-interface {p0}, Lco/vine/android/views/SquareMatch$SquareMatchView;->getMatchLayoutRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {p0, v3}, Lco/vine/android/views/SquareMatch$SquareMatchView;->post(Ljava/lang/Runnable;)Z

    :cond_26
    return-void

    :pswitch_27
    move v1, v2

    goto :goto_1c

    :pswitch_29
    move v1, v0

    goto :goto_1c

    :pswitch_2b
    if-le v2, v0, :cond_2f

    move v1, v2

    :goto_2e
    goto :goto_1c

    :cond_2f
    move v1, v0

    goto :goto_2e

    :cond_31
    move v1, v2

    goto :goto_1c

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_27
        :pswitch_29
        :pswitch_2b
    .end packed-switch
.end method
