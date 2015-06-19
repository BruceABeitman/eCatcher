.class Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1;
.super Ljava/lang/Object;
.source "PhotoPageControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->showVideoInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

.field private final synthetic val$videoInfoDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1;->val$videoInfoDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1;->val$videoInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
