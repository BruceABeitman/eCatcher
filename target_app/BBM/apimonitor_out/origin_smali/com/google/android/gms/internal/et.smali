.class public final Lcom/google/android/gms/internal/et;
.super Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/et;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b(III)I
    .registers 7

    packed-switch p1, :pswitch_data_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown color scheme: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    move p2, p3

    :pswitch_19
    return p2

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method private b(Landroid/content/res/Resources;II)V
    .registers 7

    packed-switch p2, :pswitch_data_3c

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown button size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    sget v0, Lcom/google/android/gms/R$drawable;->common_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/R$drawable;->common_signin_btn_text_light:I

    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/internal/et;->b(III)I

    move-result v0

    :goto_20
    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find background resource!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2b
    sget v0, Lcom/google/android/gms/R$drawable;->common_signin_btn_icon_dark:I

    sget v1, Lcom/google/android/gms/R$drawable;->common_signin_btn_icon_light:I

    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/internal/et;->b(III)I

    move-result v0

    goto :goto_20

    :cond_34
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/et;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_2b
    .end packed-switch
.end method

.method private c(Landroid/content/res/Resources;)V
    .registers 6

    const/high16 v3, 0x4240

    const/high16 v2, 0x3f00

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/et;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x4160

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/et;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v0, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/et;->setMinHeight(I)V

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/et;->setMinWidth(I)V

    return-void
.end method

.method private c(Landroid/content/res/Resources;II)V
    .registers 7

    sget v0, Lcom/google/android/gms/R$color;->common_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/R$color;->common_signin_btn_text_light:I

    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/internal/et;->b(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/et;->setTextColor(Landroid/content/res/ColorStateList;)V

    packed-switch p2, :pswitch_data_40

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown button size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/et;->setText(Ljava/lang/CharSequence;)V

    :goto_30
    return-void

    :pswitch_31
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text_long:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/et;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    :pswitch_3b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/et;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_27
        :pswitch_31
        :pswitch_3b
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/res/Resources;II)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p2, :cond_3b

    const/4 v0, 0x3

    if-ge p2, v0, :cond_3b

    move v0, v1

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown button size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    if-ltz p3, :cond_3d

    const/4 v0, 0x2

    if-ge p3, v0, :cond_3d

    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown color scheme "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/et;->c(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/et;->b(Landroid/content/res/Resources;II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/et;->c(Landroid/content/res/Resources;II)V

    return-void

    :cond_3b
    move v0, v2

    goto :goto_8

    :cond_3d
    move v1, v2

    goto :goto_1f
.end method
