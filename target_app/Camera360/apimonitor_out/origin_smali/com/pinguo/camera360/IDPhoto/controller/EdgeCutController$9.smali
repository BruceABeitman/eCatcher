.class Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;
.super Ljava/lang/Object;
.source "EdgeCutController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->buildEraserData(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;I)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    iput p2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;->val$index:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->onEraserClick(I)V

    return-void
.end method
