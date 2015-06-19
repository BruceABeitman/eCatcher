.class public Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;
.super Ljava/lang/Object;
.source "BSAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/ui/dialog/BSAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RichText"
.end annotation


# instance fields
.field mRichColor:I

.field mRichTextColorEndIndex:I

.field mRichTextColorStartIndex:I

.field mRichTextSize:I

.field mRichTextSizeEndIndex:I

.field mRichTextSizeStartIndex:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;->mRichColor:I

    iput p2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;->mRichTextSize:I

    iput p3, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;->mRichTextSizeStartIndex:I

    iput p4, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;->mRichTextSizeEndIndex:I

    iput p5, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;->mRichTextColorStartIndex:I

    iput p6, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;->mRichTextColorEndIndex:I

    return-void
.end method
