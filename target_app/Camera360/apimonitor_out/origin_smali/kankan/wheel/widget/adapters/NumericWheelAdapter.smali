.class public Lkankan/wheel/widget/adapters/NumericWheelAdapter;
.super Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;
.source "NumericWheelAdapter.java"


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private format:Ljava/lang/String;

.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, p1, v0, v1}, Lkankan/wheel/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lkankan/wheel/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lkankan/wheel/widget/adapters/NumericWheelAdapter;->minValue:I

    iput p3, p0, Lkankan/wheel/widget/adapters/NumericWheelAdapter;->maxValue:I

    iput-object p4, p0, Lkankan/wheel/widget/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/CharSequence;
    .registers 7

    if-ltz p1, :cond_26

    invoke-virtual {p0}, Lkankan/wheel/widget/adapters/NumericWheelAdapter;->getItemsCount()I

    move-result v1

    if-ge p1, v1, :cond_26

    iget v1, p0, Lkankan/wheel/widget/adapters/NumericWheelAdapter;->minValue:I

    add-int v0, v1, p1

    iget-object v1, p0, Lkankan/wheel/widget/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lkankan/wheel/widget/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_20
    return-object v1

    :cond_21
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_26
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public getItemsCount()I
    .registers 3

    iget v0, p0, Lkankan/wheel/widget/adapters/NumericWheelAdapter;->maxValue:I

    iget v1, p0, Lkankan/wheel/widget/adapters/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
