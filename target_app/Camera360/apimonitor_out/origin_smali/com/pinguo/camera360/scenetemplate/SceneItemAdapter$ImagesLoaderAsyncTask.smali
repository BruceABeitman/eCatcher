.class Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "SceneItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagesLoaderAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "[",
        "Ljava/lang/Object;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;->doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    aget-object v5, p1, v11

    check-cast v5, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;

    aget-object v2, p1, v12

    check-cast v2, Landroid/widget/ImageView;

    const-string/jumbo v8, "No"

    invoke-virtual {v5}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getClosed()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68

    iget-object v8, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->mSceneTemplateDownloadList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->access$1(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_68

    const-string/jumbo v8, "SceneTemplateAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Download:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->mSceneTemplateDownloadList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->access$1(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
    invoke-static {v8}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->access$2(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->downloadCover(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)J

    move-result-wide v0

    iget-object v8, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->mSceneTemplateDownloadList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->access$1(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_68

    iget-object v8, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;

    invoke-virtual {v8}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->getList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_69

    :cond_68
    :goto_68
    return-object v7

    :cond_69
    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_68

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_68

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFile(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFileLength(J)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v11

    aput-object v2, v7, v12

    goto :goto_68
.end method

.method protected bridge varargs synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs onPostExecute([Ljava/lang/Object;)V
    .registers 9

    if-eqz p1, :cond_3f

    const/4 v3, 0x0

    aget-object v2, p1, v3

    check-cast v2, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;

    const/4 v3, 0x1

    aget-object v1, p1, v3

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3f

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->displayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {v5}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    :cond_3f
    return-void
.end method
