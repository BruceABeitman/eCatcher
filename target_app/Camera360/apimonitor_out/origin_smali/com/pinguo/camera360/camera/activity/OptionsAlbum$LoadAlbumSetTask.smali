.class Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;
.super Landroid/os/AsyncTask;
.source "OptionsAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAlbumSetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "OptionsAlbum"

    const-string/jumbo v1, "doInBackground"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #calls: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->initHideAlbumInfo()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$1(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "OptionsAlbum"

    const-string/jumbo v1, "onPostExecute"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$3(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->cancel()V

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_31

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setHideAlbumList(Ljava/lang/String;)V

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #setter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$4(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    new-instance v1, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Landroid/content/Context;)V

    #setter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$5(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$6(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$7(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_30
.end method

.method protected onPreExecute()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "OptionsAlbum"

    const-string/jumbo v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$2(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOrientation(IZ)V

    return-void
.end method
