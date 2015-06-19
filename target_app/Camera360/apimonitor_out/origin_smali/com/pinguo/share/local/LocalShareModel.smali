.class public Lcom/pinguo/share/local/LocalShareModel;
.super Ljava/lang/Object;
.source "LocalShareModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mShareInfo:Lcom/pinguo/share/ShareInfo;

.field private mShareProcessCancelled:Z

.field private mShareProcessing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/share/local/LocalShareModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/share/ShareInfo;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareProcessing:Z

    iput-boolean v0, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareProcessCancelled:Z

    new-instance v0, Lcom/pinguo/share/local/LocalShareModel$1;

    invoke-direct {v0, p0}, Lcom/pinguo/share/local/LocalShareModel$1;-><init>(Lcom/pinguo/share/local/LocalShareModel;)V

    iput-object v0, p0, Lcom/pinguo/share/local/LocalShareModel;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p1, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/share/local/LocalShareModel;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareProcessCancelled:Z

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/share/local/LocalShareModel;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareProcessCancelled:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/share/local/LocalShareModel;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareProcessing:Z

    return-void
.end method

.method static synthetic access$4()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getSign(Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_36

    new-instance v5, Lcom/pinguo/share/local/LocalShareModel$3;

    invoke-direct {v5, p0}, Lcom/pinguo/share/local/LocalShareModel$3;-><init>(Lcom/pinguo/share/local/LocalShareModel;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_63

    :try_start_2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "nyTdT9dvI~5N0SfNqP55vld2I0GDHp~A"

    invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/utils/MD5;->pinguoMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2a .. :try_end_34} :catch_6d

    move-result-object v5

    :goto_35
    return-object v5

    :cond_36
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x3d

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :catch_6d
    move-exception v0

    const/4 v5, 0x0

    goto :goto_35
.end method


# virtual methods
.method protected process(Landroid/app/Activity;)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_134

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_134

    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/pinguo/share/ShareConstants;->CACHE_ROOT:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "/wxtemp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-nez v17, :cond_49

    sget-object v17, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "create share cache folder fail"

    invoke-static/range {v17 .. v18}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_134

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_134

    const/4 v14, 0x0

    :try_start_5a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "/wx.tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/pinguo/share/local/LocalShareCache;->getMapInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    sget-object v17, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_79} :catch_135

    :goto_79
    move-wide v0, v15

    invoke-static {v6, v0, v1, v14}, Lcom/pinguo/share/local/LocalShareCache;->deleteTimeout(Ljava/io/File;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_144

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x2f

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->getTempName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_144

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->getUrl()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->isAudioPic()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/pinguo/share/ShareInfo;->isAudioFile:Z

    sget-object v17, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "find in cache:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",url:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_134
    :goto_134
    return-void

    :catch_135
    move-exception v4

    sget-object v17, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_79

    :cond_144
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, ".jpg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareProcessCancelled:Z

    move/from16 v17, v0

    if-nez v17, :cond_134

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->soundInfo:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x3c

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v10, v0, v1}, Lcom/pinguo/share/ShareAccess;->processScalePhoto(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v10, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->soundInfo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/pinguo/share/ShareAccess;->processSoundPhoto(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/pinguo/share/ShareInfo;->isAudioFile:Z

    :cond_1d6
    :goto_1d6
    sget-object v17, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "scale sound handle,img path to:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareProcessCancelled:Z

    move/from16 v17, v0

    if-nez v17, :cond_134

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/pinguo/share/ShareType;->LOCAL_QQ:Lcom/pinguo/share/ShareType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_221

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/pinguo/share/ShareInfo;->isAudioFile:Z

    move/from16 v17, v0

    if-eqz v17, :cond_249

    :cond_221
    sget-object v17, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "upload:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/pinguo/share/local/LocalShareModel;->processUpload(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_249
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2d1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2d1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2d1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_2d1

    const-string/jumbo v17, "null"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2d1

    sget-object v17, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2d1

    new-instance v17, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/pinguo/share/ShareInfo;->isAudioFile:Z

    move/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v9, v5, v1, v2}, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v17

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d1
    :try_start_2d1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "/wx.tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/pinguo/share/local/LocalShareCache;->updateMapInfo(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2ea
    .catch Ljava/io/IOException; {:try_start_2d1 .. :try_end_2ea} :catch_2ec

    goto/16 :goto_134

    :catch_2ec
    move-exception v4

    sget-object v17, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_134

    :cond_2f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x78

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v10, v0, v1}, Lcom/pinguo/share/ShareAccess;->processScalePhoto(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v10, v0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    goto/16 :goto_1d6
.end method

.method protected processUpload(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 18

    sget-object v12, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "processUpload"

    invoke-static {v12, v13}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v12, "appId"

    const-string/jumbo v13, "9ab6743c205e8f1d"

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v12, "async"

    const-string/jumbo v13, "1"

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v12, "cuid"

    invoke-static/range {p1 .. p1}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    iget-object v12, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v12, v12, Lcom/pinguo/share/ShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    sget-object v13, Lcom/pinguo/share/ShareType;->LOCAL_QQ:Lcom/pinguo/share/ShareType;

    if-ne v12, v13, :cond_33

    const/4 v9, 0x2

    :cond_33
    const/4 v7, 0x0

    iget-object v12, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-boolean v12, v12, Lcom/pinguo/share/ShareInfo;->isAudioFile:Z

    if-nez v12, :cond_3b

    const/4 v7, 0x1

    :cond_3b
    const-string/jumbo v12, "type"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v12, "only_img"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v8}, Lcom/pinguo/share/local/LocalShareModel;->getSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_56

    :cond_55
    :goto_55
    return-void

    :cond_56
    const-string/jumbo v12, "sign"

    invoke-interface {v8, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/io/File;

    iget-object v13, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v13, v13, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v11, 0x0

    :try_start_71
    const-string/jumbo v11, "http://imgproc.camera360.com/audioImage/separate"

    invoke-static {v11, v8, v4}, Lcom/pinguo/share/util/ShareModuleUtil;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_77} :catch_d8

    move-result-object v5

    :goto_78
    sget-object v12, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "upload response:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_55

    :try_start_8f
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "errno"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_ca

    const-string/jumbo v12, "data"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v12, "viewUrl"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/pinguo/share/util/ShareModuleUtil;->isUrlAvailable(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e0

    :goto_b1
    sget-object v12, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "upload img url:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iput-object v11, v12, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;

    :cond_ca
    sget-object v12, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_cf} :catch_d0

    goto :goto_55

    :catch_d0
    move-exception v2

    sget-object v12, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    :catch_d8
    move-exception v2

    sget-object v12, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    goto :goto_78

    :cond_e0
    const/4 v11, 0x0

    goto :goto_b1
.end method

.method public share(Landroid/app/Activity;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareProcessing:Z

    if-eqz v2, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-boolean v5, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareProcessCancelled:Z

    iput-boolean v6, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareProcessing:Z

    sget-object v2, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "start local share"

    invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f080047

    iget-object v3, p0, Lcom/pinguo/share/local/LocalShareModel;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    iget-object v4, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget v4, v4, Lcom/pinguo/share/ShareInfo;->uiOrientation:I

    invoke-static {p1, v2, v6, v3, v4}, Lcom/pinguo/share/ui/dialog/ShareBSDialogUtils;->showProgressDialog(Landroid/content/Context;IZLandroid/content/DialogInterface$OnCancelListener;I)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v2, v2, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v2, v2, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_59

    sget-object v2, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "with url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v4, v4, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    new-instance v2, Lcom/pinguo/share/local/LocalShareModel$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/pinguo/share/local/LocalShareModel$2;-><init>(Lcom/pinguo/share/local/LocalShareModel;Landroid/app/Activity;Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)V

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/pinguo/share/local/LocalShareModel$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6

    :cond_59
    iget-object v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v2, v2, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v2, v2, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_88

    iget-object v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    invoke-virtual {v2}, Lcom/pinguo/share/ShareInfo;->buildThumbnailBitmap()V

    sget-object v2, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "with img path:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v4, v4, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    :cond_88
    iget-object v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v2, v2, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v2, v2, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4e

    :try_start_98
    sget-object v2, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v3, v3, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;

    const/16 v4, 0x5f

    invoke-static {v2, v3, v4}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a3} :catch_cd

    :goto_a3
    iget-object v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    sget-object v3, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    iput-object v3, v2, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    invoke-virtual {v2}, Lcom/pinguo/share/ShareInfo;->buildThumbnailBitmap()V

    sget-object v2, Lcom/pinguo/share/local/LocalShareModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "with img bitmap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v4, v4, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    :catch_cd
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3
.end method
