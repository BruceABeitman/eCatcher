.class Lcom/pinguo/camera360/gallery/RootActivity$2;
.super Ljava/lang/Object;
.source "RootActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/RootActivity;->setEmptyAlbumView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/RootActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/RootActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/RootActivity$2;->this$0:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity$2;->this$0:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->finish()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity$2;->this$0:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-static {v0}, Lcom/pinguo/camera360/PgCameraApplication;->startCameraActivity(Landroid/content/Context;)V

    return-void
.end method
