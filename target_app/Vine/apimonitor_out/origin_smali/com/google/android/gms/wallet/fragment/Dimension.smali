.class public Lcom/google/android/gms/wallet/fragment/Dimension;
.super Ljava/lang/Object;


# static fields
.field public static final MATCH_PARENT:I = -0x1

.field public static final UNIT_DIP:I = 0x1

.field public static final UNIT_IN:I = 0x4

.field public static final UNIT_MM:I = 0x5

.field public static final UNIT_PT:I = 0x3

.field public static final UNIT_PX:I = 0x0

.field public static final UNIT_SP:I = 0x2

.field public static final WRAP_CONTENT:I = -0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLandroid/util/DisplayMetrics;)I
    .registers 7

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    long-to-int v1, p0

    sparse-switch v0, :sswitch_data_42

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected unit or type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_22
    move v0, v1

    :goto_23
    return v0

    :sswitch_24
    invoke-static {v1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_23

    :sswitch_29
    const/4 v0, 0x0

    :goto_2a
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_23

    :sswitch_37
    const/4 v0, 0x1

    goto :goto_2a

    :sswitch_39
    const/4 v0, 0x2

    goto :goto_2a

    :sswitch_3b
    const/4 v0, 0x3

    goto :goto_2a

    :sswitch_3d
    const/4 v0, 0x4

    goto :goto_2a

    :sswitch_3f
    const/4 v0, 0x5

    goto :goto_2a

    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_29
        0x1 -> :sswitch_37
        0x2 -> :sswitch_39
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_3d
        0x5 -> :sswitch_3f
        0x80 -> :sswitch_24
        0x81 -> :sswitch_22
    .end sparse-switch
.end method

.method public static a(IF)J
    .registers 5

    packed-switch p0, :pswitch_data_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/wallet/fragment/Dimension;->l(II)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static a(Landroid/util/TypedValue;)J
    .registers 4

    iget v0, p0, Landroid/util/TypedValue;->type:I

    sparse-switch v0, :sswitch_data_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected dimension type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_20
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/Dimension;->dM(I)J

    move-result-wide v0

    :goto_26
    return-wide v0

    :sswitch_27
    const/16 v0, 0x80

    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/Dimension;->l(II)J

    move-result-wide v0

    goto :goto_26

    :sswitch_data_30
    .sparse-switch
        0x5 -> :sswitch_27
        0x10 -> :sswitch_20
    .end sparse-switch
.end method

.method public static dM(I)J
    .registers 4

    if-gez p0, :cond_28

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    const/4 v0, -0x2

    if-ne p0, v0, :cond_f

    :cond_8
    const/16 v0, 0x81

    invoke-static {v0, p0}, Lcom/google/android/gms/wallet/fragment/Dimension;->l(II)J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected dimension value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/4 v0, 0x0

    int-to-float v1, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/Dimension;->a(IF)J

    move-result-wide v0

    goto :goto_e
.end method

.method private static l(II)J
    .registers 8

    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method
