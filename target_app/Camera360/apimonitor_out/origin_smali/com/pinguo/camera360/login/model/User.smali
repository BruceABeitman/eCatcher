.class public Lcom/pinguo/camera360/login/model/User;
.super Ljava/lang/Object;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/login/model/User$Info;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/pinguo/camera360/login/model/User$Info;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/login/model/User;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pinguo/camera360/login/model/User;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pinguo/camera360/login/model/UserHelper;->getPGLoginUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    iput-object v4, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    :goto_14
    return-void

    :cond_15
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    :try_start_1a
    const-class v3, Lcom/pinguo/camera360/login/model/User$Info;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/login/model/User$Info;

    iput-object v3, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_25

    goto :goto_14

    :catch_25
    move-exception v0

    iput-object v4, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    goto :goto_14
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/login/model/User$Info;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/login/model/User;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    return-void
.end method

.method private checkGenderValidate(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    const-string/jumbo v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    goto :goto_4

    :cond_10
    const-string/jumbo v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public static create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/login/model/User;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/model/User;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public changeAvatar(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/pinguo/lib/os/AsyncError;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u7528\u6237\u4e0d\u5408\u6cd5"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/pinguo/lib/os/AsyncError;-><init>(Ljava/lang/Exception;)V

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lcom/pinguo/camera360/login/model/User$2;

    new-instance v1, Lcom/pinguo/camera360/login/i/user/ApiChangeFace;

    iget-object v2, p0, Lcom/pinguo/camera360/login/model/User;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/pinguo/camera360/login/i/user/ApiChangeFace;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/login/model/User$2;-><init>(Lcom/pinguo/camera360/login/model/User;Lcom/pinguo/lib/os/AsyncFuture;)V

    goto :goto_13
.end method

.method public changeDescription(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/pinguo/lib/os/AsyncError;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u7528\u6237\u4e0d\u5408\u6cd5"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/pinguo/lib/os/AsyncError;-><init>(Ljava/lang/Exception;)V

    :goto_13
    return-object v0

    :cond_14
    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v0, v0, Lcom/pinguo/camera360/login/model/User$Info;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/pinguo/lib/os/AsyncSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pinguo/lib/os/AsyncSuccess;-><init>(Ljava/lang/Object;)V

    goto :goto_13

    :cond_27
    new-instance v0, Lcom/pinguo/camera360/login/model/User$1;

    new-instance v1, Lcom/pinguo/camera360/login/i/user/ApiChangeDescription;

    iget-object v2, p0, Lcom/pinguo/camera360/login/model/User;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/pinguo/camera360/login/i/user/ApiChangeDescription;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/camera360/login/model/User$1;-><init>(Lcom/pinguo/camera360/login/model/User;Lcom/pinguo/lib/os/AsyncFuture;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public changeGener(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/model/User;->checkGenderValidate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_c
    new-instance v0, Lcom/pinguo/lib/os/AsyncError;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u7528\u6237\u4e0d\u5408\u6cd5"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/pinguo/lib/os/AsyncError;-><init>(Ljava/lang/Exception;)V

    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v0, v0, Lcom/pinguo/camera360/login/model/User$Info;->gender:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/pinguo/lib/os/AsyncSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pinguo/lib/os/AsyncSuccess;-><init>(Ljava/lang/Object;)V

    goto :goto_19

    :cond_2b
    new-instance v0, Lcom/pinguo/camera360/login/model/User$4;

    new-instance v1, Lcom/pinguo/camera360/login/i/user/ApiChangeGender;

    iget-object v2, p0, Lcom/pinguo/camera360/login/model/User;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/pinguo/camera360/login/i/user/ApiChangeGender;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/camera360/login/model/User$4;-><init>(Lcom/pinguo/camera360/login/model/User;Lcom/pinguo/lib/os/AsyncFuture;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public changeNickname(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/pinguo/lib/os/AsyncError;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u7528\u6237\u4e0d\u5408\u6cd5"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/pinguo/lib/os/AsyncError;-><init>(Ljava/lang/Exception;)V

    :goto_13
    return-object v0

    :cond_14
    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v0, v0, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/pinguo/lib/os/AsyncSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pinguo/lib/os/AsyncSuccess;-><init>(Ljava/lang/Object;)V

    goto :goto_13

    :cond_27
    new-instance v0, Lcom/pinguo/camera360/login/model/User$3;

    new-instance v1, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;

    iget-object v2, p0, Lcom/pinguo/camera360/login/model/User;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/pinguo/camera360/login/i/user/ApiChangeNickname;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/camera360/login/model/User$3;-><init>(Lcom/pinguo/camera360/login/model/User;Lcom/pinguo/lib/os/AsyncFuture;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v8

    if-nez v8, :cond_a

    const-string/jumbo v0, ""

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-object v8, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v3, v8, Lcom/pinguo/camera360/login/model/User$Info;->loginmode:Ljava/lang/String;

    iget-object v8, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v6, v8, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

    iget-object v8, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v0, v8, Lcom/pinguo/camera360/login/model/User$Info;->avatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_35

    if-eqz v6, :cond_35

    iget-object v4, v6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->qzone:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;

    iget-object v5, v6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->sina:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;

    iget-object v1, v6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->facebook:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;

    iget-object v7, v6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->twitter:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;

    iget-object v2, v6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->kupan:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$KupanSite;

    const-string/jumbo v8, "qzone"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    if-eqz v4, :cond_35

    iget-object v0, v4, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;->avatar:Ljava/lang/String;

    :cond_35
    :goto_35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string/jumbo v0, ""

    goto :goto_9

    :cond_3f
    const-string/jumbo v8, "sina"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    if-eqz v5, :cond_35

    iget-object v0, v5, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;->avatar:Ljava/lang/String;

    goto :goto_35

    :cond_4d
    const-string/jumbo v8, "facebook"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    if-eqz v1, :cond_35

    iget-object v0, v1, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;->avatar:Ljava/lang/String;

    goto :goto_35

    :cond_5b
    const-string/jumbo v8, "twitter"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_69

    if-eqz v7, :cond_35

    iget-object v0, v7, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;->avatar:Ljava/lang/String;

    goto :goto_35

    :cond_69
    const-string/jumbo v8, "kupan"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    if-eqz v2, :cond_35

    iget-object v0, v2, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$KupanSite;->avatar:Ljava/lang/String;

    goto :goto_35
.end method

.method public getInfo()Lcom/pinguo/camera360/login/model/User$Info;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    return-object v0
.end method

.method public isLogin()Z
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v0

    return v0
.end method

.method public isValidate()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v0, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v0, v0, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public logout()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/User;->mContext:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/pinguo/camera360/login/model/UserHelper;->putPGLoginUserInfo(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/User;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGPreferences;->setIsFirstTimeEnterCloud(Landroid/content/Context;Z)V

    return-void
.end method

.method public save()V
    .registers 5

    iget-object v2, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/pinguo/camera360/login/model/User;->mContext:Landroid/content/Context;

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/pinguo/camera360/login/model/User;->mInfo:Lcom/pinguo/camera360/login/model/User$Info;

    const-class v3, Lcom/pinguo/camera360/login/model/User$Info;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/login/model/User;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/pinguo/camera360/login/model/UserHelper;->putPGLoginUserInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8
.end method
