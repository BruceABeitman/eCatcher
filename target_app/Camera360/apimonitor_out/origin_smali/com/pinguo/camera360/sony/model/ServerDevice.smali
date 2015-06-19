.class public Lcom/pinguo/camera360/sony/model/ServerDevice;
.super Ljava/lang/Object;
.source "ServerDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApiServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;",
            ">;"
        }
    .end annotation
.end field

.field private mDDUrl:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mIconUrl:Ljava/lang/String;

.field private mModelName:Ljava/lang/String;

.field private mUDN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/sony/model/ServerDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/sony/model/ServerDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mApiServices:Ljava/util/List;

    return-void
.end method

.method private addApiService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;

    invoke-direct {v0, p1, p2}, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mApiServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static fetch(Ljava/lang/String;)Lcom/pinguo/camera360/sony/model/ServerDevice;
    .registers 22

    if-nez p0, :cond_b

    new-instance v18, Ljava/lang/NullPointerException;

    const-string/jumbo v19, "ddUrl is null."

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_b
    const-string/jumbo v4, ""

    :try_start_e
    invoke-static/range {p0 .. p0}, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v18, Lcom/pinguo/camera360/sony/model/ServerDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "fetch () httpGet done."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_b9

    invoke-static {v4}, Lcom/pinguo/camera360/sony/utils/XmlElement;->parse(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v12

    const/4 v5, 0x0

    const-string/jumbo v18, "root"

    invoke-virtual {v12}, Lcom/pinguo/camera360/sony/utils/XmlElement;->getTagName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b0

    new-instance v5, Lcom/pinguo/camera360/sony/model/ServerDevice;

    invoke-direct {v5}, Lcom/pinguo/camera360/sony/model/ServerDevice;-><init>()V

    move-object/from16 v0, p0

    iput-object v0, v5, Lcom/pinguo/camera360/sony/model/ServerDevice;->mDDUrl:Ljava/lang/String;

    const-string/jumbo v18, "device"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v6

    const-string/jumbo v18, "friendlyName"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/pinguo/camera360/sony/utils/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/pinguo/camera360/sony/model/ServerDevice;->mFriendlyName:Ljava/lang/String;

    const-string/jumbo v18, "modelName"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/pinguo/camera360/sony/utils/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/pinguo/camera360/sony/model/ServerDevice;->mModelName:Ljava/lang/String;

    const-string/jumbo v18, "UDN"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/pinguo/camera360/sony/utils/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/pinguo/camera360/sony/model/ServerDevice;->mUDN:Ljava/lang/String;

    const-string/jumbo v18, "iconList"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v11

    const-string/jumbo v18, "icon"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_87
    :goto_87
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_c8

    const-string/jumbo v18, "X_ScalarWebAPI_DeviceInfo"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v14

    const-string/jumbo v18, "X_ScalarWebAPI_ServiceList"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v17

    const-string/jumbo v18, "X_ScalarWebAPI_Service"

    invoke-virtual/range {v17 .. v18}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_aa
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_10e

    :cond_b0
    sget-object v18, Lcom/pinguo/camera360/sony/model/ServerDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "fetch () parsing XML done."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b8
    return-object v5

    :catch_b9
    move-exception v7

    sget-object v18, Lcom/pinguo/camera360/sony/model/ServerDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "fetch: IOException."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    goto :goto_b8

    :cond_c8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pinguo/camera360/sony/utils/XmlElement;

    const-string/jumbo v19, "image/png"

    const-string/jumbo v20, "mimetype"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/sony/utils/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_87

    const-string/jumbo v19, "url"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/sony/utils/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/pinguo/camera360/sony/model/ServerDevice;->toSchemeAndHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/pinguo/camera360/sony/model/ServerDevice;->mIconUrl:Ljava/lang/String;

    goto/16 :goto_87

    :cond_10e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/pinguo/camera360/sony/utils/XmlElement;

    const-string/jumbo v19, "X_ScalarWebAPI_ServiceType"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/sony/utils/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v19, "X_ScalarWebAPI_ActionList_URL"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/sony/utils/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v13, v3}, Lcom/pinguo/camera360/sony/model/ServerDevice;->addApiService(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_aa
.end method

.method private static toHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, -0x1

    const-string/jumbo v3, "://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_e

    const-string/jumbo v0, ""

    :goto_d
    return-object v0

    :cond_e
    const-string/jumbo v3, ":"

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1d

    const-string/jumbo v0, ""

    goto :goto_d

    :cond_1d
    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method private static toSchemeAndHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, -0x1

    const-string/jumbo v3, "://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_e

    const-string/jumbo v0, ""

    :goto_d
    return-object v0

    :cond_e
    const-string/jumbo v3, "/"

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1d

    const-string/jumbo v0, ""

    goto :goto_d

    :cond_1d
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method


# virtual methods
.method public getApiService(Ljava/lang/String;)Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mApiServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    move-object v0, v1

    goto :goto_4

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4
.end method

.method public getApiServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mApiServices:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDDUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mDDUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddres()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mDDUrl:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mDDUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/camera360/sony/model/ServerDevice;->toHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public getUDN()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mUDN:Ljava/lang/String;

    return-object v0
.end method

.method public hasApiService(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v1

    :cond_4
    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/ServerDevice;->mApiServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/ServerDevice$ApiService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v1, 0x1

    goto :goto_3
.end method
