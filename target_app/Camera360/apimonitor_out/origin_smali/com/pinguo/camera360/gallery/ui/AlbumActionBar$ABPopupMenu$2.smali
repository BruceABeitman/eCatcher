.class Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$2;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$2;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$2;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$8(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$2;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$8(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1e
    return-void
.end method
