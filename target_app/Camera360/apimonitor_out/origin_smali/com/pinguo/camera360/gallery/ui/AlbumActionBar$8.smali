.class Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$8;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$8;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$8;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPopupMenu:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$13(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->show()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$8;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPopupMenu:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$13(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->dismiss()V

    goto :goto_b
.end method
