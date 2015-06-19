.class Lcom/pinguo/camera360/gallery/AlbumPage$3;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/AlbumPage;->onSingleTapUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumPage;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/AlbumPage$3;)Lcom/pinguo/camera360/gallery/AlbumPage;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/gallery/AlbumPage$3$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/AlbumPage$3$1;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage$3;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumPage$3$1;->start()V

    return-void
.end method
