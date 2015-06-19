.class Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;
.super Ljava/lang/Object;
.source "DragDropGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemPosition"
.end annotation


# instance fields
.field public itemIndex:I

.field public pageIndex:I

.field final synthetic this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;II)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->pageIndex:I

    iput p3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->itemIndex:I

    return-void
.end method
