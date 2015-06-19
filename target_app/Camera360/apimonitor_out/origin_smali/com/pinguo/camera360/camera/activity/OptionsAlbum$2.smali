.class Lcom/pinguo/camera360/camera/activity/OptionsAlbum$2;
.super Ljava/lang/Object;
.source "OptionsAlbum.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$2;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$2;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
