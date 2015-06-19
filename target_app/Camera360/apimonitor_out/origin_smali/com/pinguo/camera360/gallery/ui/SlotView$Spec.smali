.class public Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# instance fields
.field public columsLand:I

.field public columsPort:I

.field public header_bar_height:I

.field public paddingBottom:I

.field public paddingLeft:I

.field public paddingRight:I

.field public paddingTop:I

.field public rooter_bar_height:I

.field public slotGap:I

.field public tagHeight:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->columsLand:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->columsPort:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->tagHeight:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingLeft:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingRight:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingTop:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingBottom:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->header_bar_height:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->rooter_bar_height:I

    return-void
.end method
