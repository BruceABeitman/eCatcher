.class Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$2;
.super Ljava/lang/Object;
.source "PhotoPageControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->onLongPress(Lcom/pinguo/camera360/gallery/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

.field private final synthetic val$picDescriEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$2;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$2;->val$picDescriEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$2;->val$picDescriEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void
.end method
