.class public Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
.super Lcom/pinguo/camera360/adapter/AdapterBase;
.source "SceneItemAdapter.java"
.field private static final NO:Ljava/lang/String; = "No"
.field private static final TAG:Ljava/lang/String; = "SceneTemplateAdapter"
.field private static final YES:Ljava/lang/String; = "Yes"
.field private static pictureSize:I
.field private displayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.field private mSceneTemplateDownloadList:Ljava/util/ArrayList;
.field private mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x96
sput v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->pictureSize:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/pinguo/camera360/scenetemplate/SceneTemplateModel;)V
.registers 8
const v2, 0x7f020406
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/adapter/AdapterBase;-><init>(Landroid/content/Context;Ljava/util/List;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->mSceneTemplateDownloadList:Ljava/util/ArrayList;
new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->displayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
sput p3, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->pictureSize:I
iput-object p4, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->displayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->mSceneTemplateDownloadList:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
return-object v0
.end method
.method private getSceneSelectKey(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const-string/jumbo v0, ""
return-object v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 13
const/4 v8, 0x0
const/16 v5, 0x8
const/4 v7, 0x2
const/4 v6, 0x0
if-nez p2, :cond_104
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v3
const v4, 0x7f0300f7
invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;
invoke-direct {v0}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;-><init>()V
const v3, 0x7f0a0572
invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/RelativeLayout;
iput-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->layMain:Landroid/widget/RelativeLayout;
const v3, 0x7f0a0573
invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/RelativeLayout;
iput-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->layContainer:Landroid/widget/RelativeLayout;
const v3, 0x7f0a0575
invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ImageView;
iput-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneDownload:Landroid/widget/ImageView;
const v3, 0x7f0a0576
invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ImageView;
iput-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneNew:Landroid/widget/ImageView;
invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_46
const v3, 0x7f0a0574
invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ImageView;
iput-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneIcon:Landroid/widget/ImageView;
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneIcon:Landroid/widget/ImageView;
invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
sget v3, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->pictureSize:I
iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
sget v3, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->pictureSize:I
iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneIcon:Landroid/widget/ImageView;
invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->getList()Ljava/util/List;
move-result-object v3
invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-virtual {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getIsNew()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_10c
invoke-virtual {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getIsNew()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "Yes"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_10c
invoke-virtual {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I
move-result v3
const/4 v4, 0x3
if-eq v3, v4, :cond_10c
invoke-virtual {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I
move-result v3
if-eq v3, v7, :cond_10c
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneNew:Landroid/widget/ImageView;
invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_93
invoke-virtual {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I
move-result v3
const/4 v4, 0x4
if-eq v3, v4, :cond_a1
invoke-virtual {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I
move-result v3
const/4 v4, 0x5
if-ne v3, v4, :cond_112
:cond_a1
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneDownload:Landroid/widget/ImageView;
invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_a6
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->getContext()Landroid/content/Context;
move-result-object v3
invoke-direct {p0, v3}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->getSceneSelectKey(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_118
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->layContainer:Landroid/widget/RelativeLayout;
const v4, 0x7f02010e
invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
:goto_c0
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneIcon:Landroid/widget/ImageView;
const v4, 0x7f020406
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneDownload:Landroid/widget/ImageView;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneIcon:Landroid/widget/ImageView;
invoke-virtual {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getId()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
invoke-static {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->isJpgFileLost(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)Z
move-result v3
if-nez v3, :cond_121
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
iget-object v5, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneIcon:Landroid/widget/ImageView;
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->displayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
:goto_103
return-object p2
:cond_104
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;
goto/16 :goto_46
:cond_10c
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneNew:Landroid/widget/ImageView;
invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_93
:cond_112
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneDownload:Landroid/widget/ImageView;
invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_a6
:cond_118
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->layContainer:Landroid/widget/RelativeLayout;
const v4, 0x7f02010d
invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
goto :goto_c0
:cond_121
new-instance v3, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;
invoke-direct {v3, p0, v8}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;)V
sget-object v4, Lcom/pinguo/lib/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
new-array v5, v7, [Ljava/lang/Object;
aput-object v2, v5, v6
const/4 v6, 0x1
iget-object v7, v0, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ViewHolder;->ivSceneIcon:Landroid/widget/ImageView;
aput-object v7, v5, v6
invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter$ImagesLoaderAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;
goto :goto_103
.end method