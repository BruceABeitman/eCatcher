.class Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
.super Ljava/lang/Object;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SimpleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternItem"
.end annotation


# instance fields
.field final isNumeric:Z

.field final length:I

.field final type:C


# direct methods
.method constructor <init>(CI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iput p2, p0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    #calls: Lcom/ibm/icu/text/SimpleDateFormat;->isNumeric(CI)Z
    invoke-static {p1, p2}, Lcom/ibm/icu/text/SimpleDateFormat;->access$000(CI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    return-void
.end method
