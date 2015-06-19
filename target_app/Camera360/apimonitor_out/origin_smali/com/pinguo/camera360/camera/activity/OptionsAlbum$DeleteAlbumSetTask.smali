.class Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;
.super Landroid/os/AsyncTask;
.source "OptionsAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteAlbumSetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;)Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    const-string/jumbo v0, "OptionsAlbum"

    const-string/jumbo v1, "DeleteAlbumSetTask doInBackground"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->deleteHideAlbum()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4

    const-string/jumbo v0, "OptionsAlbum"

    const-string/jumbo v1, "DeleteAlbumSetTask onPostExecute"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$3(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->cancel()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2e

    :cond_28
    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #calls: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->showEmptyHideAlbumUI()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$11(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$7(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->notifyDataSetChanged()V

    goto :goto_2d
.end method

.method protected onPreExecute()V
    .registers 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "OptionsAlbum"

    const-string/jumbo v1, "DeleteAlbumSetTask onPreExecute"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$1;

    invoke-direct {v6, p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$1;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;)V

    new-instance v3, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;)V

    iget-object v10, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
    invoke-static {v5}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$10(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)I

    move-result v7

    move-object v5, v4

    move v8, v2

    move v9, v2

    invoke-static/range {v0 .. v9}, Lcom/pinguo/camera360/gallery/temps/GalleryUtil;->showProcessPhotosDialog(Landroid/content/Context;IZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnKeyListener;III)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    #setter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    invoke-static {v10, v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$2(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    return-void
.end method
