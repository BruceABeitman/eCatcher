.class public final Lcom/instagram/creation/video/l/m;
.super Ljava/lang/Object;
.source "VideoUtil.java"


# direct methods
.method public static a(Landroid/app/Activity;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    :goto_10
    :pswitch_10
    return v0

    :pswitch_11
    const/16 v0, 0x5a

    goto :goto_10

    :pswitch_14
    const/16 v0, 0xb4

    goto :goto_10

    :pswitch_17
    const/16 v0, 0x10e

    goto :goto_10

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static a(Z)V
    .registers 2

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    return-void
.end method

.method public static a(I)Z
    .registers 3

    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b(I)I
    .registers 4

    if-lez p0, :cond_6

    const/high16 v0, 0x4000

    if-le p0, v0, :cond_1b

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "n is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
