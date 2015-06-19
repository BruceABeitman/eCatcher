.class public abstract Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;
.super Lkankan/wheel/widget/adapters/AbstractWheelAdapter;
.source "AbstractWheelTextAdapter.java"


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0xefeff0

.field public static final DEFAULT_TEXT_SIZE:I = 0x18

.field public static final LABEL_COLOR:I = -0x8fff90

.field protected static final NO_RESOURCE:I = 0x0

.field public static final TEXT_VIEW_ITEM_RESOURCE:I = -0x1


# instance fields
.field protected context:Landroid/content/Context;

.field protected emptyItemResourceId:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected itemResourceId:I

.field protected itemTextResourceId:I

.field private textColor:I

.field private textPadding:I

.field private textSelectedColor:I

.field private textSize:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const v0, -0xefeff0

    invoke-direct {p0}, Lkankan/wheel/widget/adapters/AbstractWheelAdapter;-><init>()V

    iput v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textColor:I

    iput v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textSelectedColor:I

    const/16 v0, 0x18

    iput v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textSize:I

    const/4 v0, 0x0

    iput v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textPadding:I

    iput-object p1, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    iput p2, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    iput p3, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .registers 8

    const/4 v2, 0x0

    if-nez p2, :cond_c

    :try_start_3
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    :cond_b
    :goto_b
    return-object v2

    :cond_c
    if-eqz p2, :cond_b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_b

    :catch_15
    move-exception v1

    const-string/jumbo v3, "AbstractWheelAdapter"

    const-string/jumbo v4, "You must supply a resource ID for a TextView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "AbstractWheelAdapter requires the resource ID to be a TextView"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    packed-switch p1, :pswitch_data_16

    iget-object v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :pswitch_b
    const/4 v0, 0x0

    goto :goto_a

    :pswitch_d
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_a

    nop

    :pswitch_data_16
    .packed-switch -0x1
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textPadding:I

    if-eqz v0, :cond_20

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textPadding:I

    iget v1, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textPadding:I

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_20
    return-void
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    if-nez p1, :cond_8

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    invoke-direct {p0, v0, p2}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_8
    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    :cond_17
    return-object p1
.end method

.method public getEmptyItemResource()I
    .registers 2

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return v0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-ltz p1, :cond_2e

    invoke-virtual {p0}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->getItemsCount()I

    move-result v2

    if-ge p1, v2, :cond_2e

    if-nez p2, :cond_10

    iget v2, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    invoke-direct {p0, v2, p3}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_10
    iget v2, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    invoke-direct {p0, p2, v2}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0, p1}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_21

    const-string/jumbo v0, ""

    :cond_21
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    invoke-virtual {p0, v1}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    :cond_2c
    move-object v2, p2

    :goto_2d
    return-object v2

    :cond_2e
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method public getItemResource()I
    .registers 2

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    return v0
.end method

.method protected abstract getItemText(I)Ljava/lang/CharSequence;
.end method

.method public getItemTextResource()I
    .registers 2

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    return v0
.end method

.method public getTextColor()I
    .registers 2

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textColor:I

    return v0
.end method

.method public getTextPadding()I
    .registers 2

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textPadding:I

    return v0
.end method

.method public getTextSelectedColor()I
    .registers 2

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textSelectedColor:I

    return v0
.end method

.method public getTextSize()I
    .registers 2

    iget v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textSize:I

    return v0
.end method

.method public setEmptyItemResource(I)V
    .registers 2

    iput p1, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return-void
.end method

.method public setItemResource(I)V
    .registers 2

    iput p1, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    return-void
.end method

.method public setItemTextResource(I)V
    .registers 2

    iput p1, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    iput p1, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textColor:I

    return-void
.end method

.method public setTextPadding(I)V
    .registers 2

    iput p1, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textPadding:I

    return-void
.end method

.method public setTextSelectedColor(I)V
    .registers 2

    iput p1, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textSelectedColor:I

    return-void
.end method

.method public setTextSize(I)V
    .registers 2

    iput p1, p0, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;->textSize:I

    return-void
.end method
