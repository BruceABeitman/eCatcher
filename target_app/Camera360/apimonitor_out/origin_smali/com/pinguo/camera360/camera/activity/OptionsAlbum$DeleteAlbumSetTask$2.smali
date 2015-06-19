.class Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2;
.super Ljava/lang/Object;
.source "OptionsAlbum.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2;->this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2;->this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->access$2(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;)Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mIsCancelDelPic:Z
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$8(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2;->this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->access$2(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;)Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$9(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/TitleView;

    move-result-object v0

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V

    return-void
.end method
