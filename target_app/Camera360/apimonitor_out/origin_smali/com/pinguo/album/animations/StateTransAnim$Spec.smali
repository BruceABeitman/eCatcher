.class public Lcom/pinguo/album/animations/StateTransAnim$Spec;
.super Ljava/lang/Object;
.source "StateTransAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/animations/StateTransAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$pinguo$album$animations$StateTransAnim$Transition:[I

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

.field public static final OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

.field public static final PHOTO_INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;


# instance fields
.field public backgroundAlphaFrom:F

.field public backgroundAlphaTo:F

.field public backgroundScaleFrom:F

.field public backgroundScaleTo:F

.field public contentAlphaFrom:F

.field public contentAlphaTo:F

.field public contentScaleFrom:F

.field public contentScaleTo:F

.field public duration:I

.field public interpolator:Landroid/view/animation/Interpolator;

.field public overlayAlphaFrom:F

.field public overlayAlphaTo:F

.field public overlayScaleFrom:F

.field public overlayScaleTo:F


# direct methods
.method static synthetic $SWITCH_TABLE$com$pinguo$album$animations$StateTransAnim$Transition()[I
    .registers 3

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->$SWITCH_TABLE$com$pinguo$album$animations$StateTransAnim$Transition:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/pinguo/album/animations/StateTransAnim$Transition;->values()[Lcom/pinguo/album/animations/StateTransAnim$Transition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/pinguo/album/animations/StateTransAnim$Transition;->Incoming:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    invoke-virtual {v1}, Lcom/pinguo/album/animations/StateTransAnim$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/pinguo/album/animations/StateTransAnim$Transition;->None:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    invoke-virtual {v1}, Lcom/pinguo/album/animations/StateTransAnim$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/pinguo/album/animations/StateTransAnim$Transition;->Outgoing:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    invoke-virtual {v1}, Lcom/pinguo/album/animations/StateTransAnim$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/pinguo/album/animations/StateTransAnim$Transition;->PhotoIncoming:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    invoke-virtual {v1}, Lcom/pinguo/album/animations/StateTransAnim$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->$SWITCH_TABLE$com$pinguo$album$animations$StateTransAnim$Transition:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 5

    const/high16 v4, 0x4040

    const/high16 v3, 0x3f00

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;

    invoke-direct {v0}, Lcom/pinguo/album/animations/StateTransAnim$Spec;-><init>()V

    sput-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v3, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundAlphaFrom:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v1, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundAlphaTo:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v2, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundScaleFrom:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v1, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundScaleTo:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v3, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentAlphaFrom:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v2, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentAlphaTo:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v4, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentScaleFrom:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v2, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentScaleTo:F

    new-instance v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;

    invoke-direct {v0}, Lcom/pinguo/album/animations/StateTransAnim$Spec;-><init>()V

    sput-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v2, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayAlphaFrom:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v1, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayAlphaTo:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v2, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayScaleFrom:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v4, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayScaleTo:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v1, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentAlphaFrom:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v2, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentAlphaTo:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    const/high16 v1, 0x3e80

    iput v1, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentScaleFrom:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iput v2, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentScaleTo:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    sput-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->PHOTO_INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14a

    iput v0, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->duration:I

    iput v1, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundAlphaFrom:F

    iput v1, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundAlphaTo:F

    iput v1, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundScaleFrom:F

    iput v1, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundScaleTo:F

    iput v2, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentAlphaFrom:F

    iput v2, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentAlphaTo:F

    iput v2, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentScaleFrom:F

    iput v2, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentScaleTo:F

    iput v1, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayAlphaFrom:F

    iput v1, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayAlphaTo:F

    iput v1, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayScaleFrom:F

    iput v1, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayScaleTo:F

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/album/animations/StateTransAnim$Transition;)Lcom/pinguo/album/animations/StateTransAnim$Spec;
    .registers 2

    invoke-static {p0}, Lcom/pinguo/album/animations/StateTransAnim$Spec;->specForTransition(Lcom/pinguo/album/animations/StateTransAnim$Transition;)Lcom/pinguo/album/animations/StateTransAnim$Spec;

    move-result-object v0

    return-object v0
.end method

.method private static specForTransition(Lcom/pinguo/album/animations/StateTransAnim$Transition;)Lcom/pinguo/album/animations/StateTransAnim$Spec;
    .registers 3

    invoke-static {}, Lcom/pinguo/album/animations/StateTransAnim$Spec;->$SWITCH_TABLE$com$pinguo$album$animations$StateTransAnim$Transition()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/album/animations/StateTransAnim$Transition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :pswitch_f
    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    goto :goto_e

    :pswitch_12
    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    goto :goto_e

    :pswitch_15
    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->PHOTO_INCOMING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    goto :goto_e

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method
