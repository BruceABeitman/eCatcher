.class public Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;
.super Ljava/lang/Object;
.source "UIConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/UIConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetPage"
.end annotation


# static fields
.field private static sInstance:Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;


# instance fields
.field public labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

.field public slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    const v3, 0x7f0b0082

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    const v2, 0x7f0c0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->columsLand:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    const v2, 0x7f0c000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->columsPort:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    const v2, 0x7f0b007d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->slotGap:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->tagHeight:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    const v2, 0x7f0b007e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingLeft:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    const v2, 0x7f0b007f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingTop:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    const v2, 0x7f0b0080

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingRight:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    const v2, 0x7f0b0081

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingBottom:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    const v2, 0x7f0b007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->header_bar_height:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    const v2, 0x7f0b007b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->rooter_bar_height:I

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelHeight:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0b0083

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0b0084

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countOffset:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0b0085

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0b0086

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0b0087

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0b0090

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->tagLineWidth:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0b0091

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->tagYearHeight:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0b0088

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;
    .registers 3

    const-class v1, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->sInstance:Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->sInstance:Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;

    :cond_e
    sget-object v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->sInstance:Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
