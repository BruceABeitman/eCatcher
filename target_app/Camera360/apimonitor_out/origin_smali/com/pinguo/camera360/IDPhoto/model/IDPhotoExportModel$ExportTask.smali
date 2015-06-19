.class Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;
.super Landroid/os/AsyncTask;
.source "IDPhotoExportModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    aget-object v0, p1, v9

    check-cast v0, Ljava/util/Set;

    aget-object v5, p1, v10

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v1, 0x0

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1e

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_1d
    return-object v7

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;

    #calls: Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->exportInner(Ljava/lang/String;Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;)Z
    invoke-static {v5, v2}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->access$0(Ljava/lang/String;Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_13

    :cond_3f
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_1d
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;->onExportFinish(Z)V

    :cond_d
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;->onExportProgress(II)V

    :cond_17
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
