.class public final Lcom/instagram/cliffjumper/util/d;
.super Ljava/lang/Object;
.source "RotateUtil.java"


# direct methods
.method public static a(IIIZIII)Landroid/graphics/Rect;
    .registers 9

    const/4 v1, 0x0

    if-eqz p3, :cond_12

    sparse-switch p2, :sswitch_data_22

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, v1, p0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_b
    return-object v0

    :sswitch_c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, p6, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    :cond_12
    sparse-switch p2, :sswitch_data_2c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    :sswitch_1b
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, p6, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    nop

    :sswitch_data_22
    .sparse-switch
        0xb4 -> :sswitch_c
        0x10e -> :sswitch_c
    .end sparse-switch

    :sswitch_data_2c
    .sparse-switch
        0xb4 -> :sswitch_1b
        0x10e -> :sswitch_1b
    .end sparse-switch
.end method

.method public static b(IIIZIII)Landroid/graphics/Rect;
    .registers 9

    const/4 v1, 0x0

    if-eqz p3, :cond_18

    sparse-switch p2, :sswitch_data_2e

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_b
    return-object v0

    :sswitch_c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, p6, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    :sswitch_12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, v1, p0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    :cond_18
    sparse-switch p2, :sswitch_data_3c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    :sswitch_21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, v1, p0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    :sswitch_27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, p6, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_12
        0x5a -> :sswitch_c
        0x10e -> :sswitch_12
    .end sparse-switch

    :sswitch_data_3c
    .sparse-switch
        0xb4 -> :sswitch_21
        0x10e -> :sswitch_27
    .end sparse-switch
.end method
