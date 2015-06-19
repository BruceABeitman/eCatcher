.class Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$1;
.super Ljava/lang/Object;
.source "OptionsAlbum.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$1;->this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
