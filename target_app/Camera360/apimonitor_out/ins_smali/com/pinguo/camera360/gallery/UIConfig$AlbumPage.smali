.class public Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;
.super Ljava/lang/Object;
.source "UIConfig.java"
.field private static sInstance:Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;
.field public slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
.field public sortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
.method private constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
invoke-direct {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
const v2, 0x7f0c000b
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->columsLand:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
const v2, 0x7f0c000c
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->columsPort:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
const v2, 0x7f0b0089
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->slotGap:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
const v2, 0x7f0b008e
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->tagHeight:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
const v2, 0x7f0b008a
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingLeft:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
const v2, 0x7f0b008b
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingTop:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
const v2, 0x7f0b008c
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingRight:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
const v2, 0x7f0b008d
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingBottom:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
const v2, 0x7f0b007a
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->header_bar_height:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
const v2, 0x7f0b007b
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->rooter_bar_height:I
new-instance v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
invoke-direct {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->sortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->sortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
const v2, 0x7f0b008f
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->dayFontSize:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->sortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
const v2, 0x7f0b0092
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->monthFontSize:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->sortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
const v2, 0x7f0b0093
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->dateFontSize:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->sortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
const v2, 0x7f0b0094
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->dividerHeight:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->sortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
const v2, 0x7f0b0095
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->musicWidth:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->sortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
const v2, 0x7f0b0096
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->videoWidth:I
return-void
.end method
.method public static declared-synchronized get(Landroid/content/Context;)Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;
.registers 3
const-class v1, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->sInstance:Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->sInstance:Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;
:cond_e
sget-object v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->sInstance:Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method