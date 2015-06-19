.class final Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BinaryProperties"
.end annotation


# instance fields
.field column:I

.field mask:J


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;->column:I

    iput-wide p2, p0, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;->mask:J

    return-void
.end method
