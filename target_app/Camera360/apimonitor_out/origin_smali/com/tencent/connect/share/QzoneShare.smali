.class public Lcom/tencent/connect/share/QzoneShare;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final SHARE_TO_QQ_APP_NAME:Ljava/lang/String; = "appName"

.field public static final SHARE_TO_QQ_AUDIO_URL:Ljava/lang/String; = "audio_url"

.field public static final SHARE_TO_QQ_EXT_INT:Ljava/lang/String; = "cflag"

.field public static final SHARE_TO_QQ_EXT_STR:Ljava/lang/String; = "share_qq_ext_str"

.field public static final SHARE_TO_QQ_IMAGE_LOCAL_URL:Ljava/lang/String; = "imageLocalUrl"

.field public static final SHARE_TO_QQ_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final SHARE_TO_QQ_SITE:Ljava/lang/String; = "site"

.field public static final SHARE_TO_QQ_SUMMARY:Ljava/lang/String; = "summary"

.field public static final SHARE_TO_QQ_TARGET_URL:Ljava/lang/String; = "targetUrl"

.field public static final SHARE_TO_QQ_TITLE:Ljava/lang/String; = "title"

.field public static final SHARE_TO_QZONE_KEY_TYPE:Ljava/lang/String; = "req_type"

.field public static final SHARE_TO_QZONE_TYPE_IMAGE:I = 0x5

.field public static final SHARE_TO_QZONE_TYPE_IMAGE_TEXT:I = 0x1

.field public static final SHARE_TO_QZONE_TYPE_NO_TYPE:I


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    iput-boolean v1, p0, Lcom/tencent/connect/share/QzoneShare;->b:Z

    iput-boolean v1, p0, Lcom/tencent/connect/share/QzoneShare;->c:Z

    iput-boolean v1, p0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    return-void
.end method

.method private a(Ljava/lang/StringBuffer;Landroid/os/Bundle;)Ljava/lang/StringBuffer;
    .registers 13

    const/16 v9, 0x50

    const/16 v8, 0x28

    const/4 v0, 0x0

    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "fillShareToQQParams() --start"

    invoke-static {v1, v2}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "imageUrl"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v1, "appName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "req_type"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "title"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "summary"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "appId"

    iget-object v7, p0, Lcom/tencent/connect/share/QzoneShare;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v7}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "sdkp"

    const-string/jumbo v7, "a"

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "sdkv"

    const-string/jumbo v7, "2.3"

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "status_os"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "status_machine"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "..."

    invoke-static {v4}, Lcom/tencent/utils/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_8d

    const-string/jumbo v6, "title"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    invoke-static {v5}, Lcom/tencent/utils/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_b7

    const-string/jumbo v4, "summary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c3

    const-string/jumbo v4, "site"

    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    if-eqz v2, :cond_e0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    move v1, v0

    :goto_cc
    if-ge v1, v4, :cond_da

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_cc

    :cond_da
    const-string/jumbo v0, "imageUrl"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_e0
    const-string/jumbo v0, "type"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/utils/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\\+"

    const-string/jumbo v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "fillShareToQQParams() --end"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .registers 23

    const-string/jumbo v3, "openSDK_LOG"

    const-string/jumbo v4, "doShareToQQ() --start"

    invoke-static {v3, v4}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "mqqapi://share/to_qzone?src_type=app&version=1&file_type=news"

    invoke-direct {v6, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "imageUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string/jumbo v3, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v3, "summary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "targetUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, "audio_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v3, "req_type"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v3, "appName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v3, "cflag"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-string/jumbo v3, "share_qq_ext_str"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/connect/share/QzoneShare;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/connect/share/QzoneShare;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v3, "shareToQQ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_ef

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x9

    if-le v3, v4, :cond_c5

    const/16 v3, 0x9

    move v4, v3

    :goto_a2
    const/4 v3, 0x0

    move v5, v3

    :goto_a4
    if-ge v5, v4, :cond_cb

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v4, -0x1

    if-eq v5, v3, :cond_c1

    const-string/jumbo v3, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_a4

    :cond_c5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v3

    goto :goto_a2

    :cond_cb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&image_url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_ef
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_115

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_115
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&description="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13b
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&share_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_15a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_180

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_180
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&app_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1a6
    invoke-static/range {v17 .. v17}, Lcom/tencent/utils/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1cc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&open_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1cc
    invoke-static {v11}, Lcom/tencent/utils/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&audioUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1f2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&req_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v15}, Lcom/tencent/utils/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&share_qq_ext_str="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_23c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&cflag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "shareToQQ"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/connect/share/QzoneShare;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/connect/share/QzoneShare;->mToken:Lcom/tencent/connect/auth/QQToken;

    const-string/jumbo v5, "requireApi"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "shareToNativeQQ"

    aput-object v9, v7, v8

    invoke-static {v3, v4, v5, v7}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/connect/share/QzoneShare;->mActivityIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/connect/share/QzoneShare;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v3, "4.6.0"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/tencent/utils/SystemUtils;->compareQQVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2c0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/share/QzoneShare;->hasActivityForIntent()Z

    move-result v3

    if-eqz v3, :cond_2b6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/connect/share/QzoneShare;->startAssitActivity(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V

    :cond_2b6
    :goto_2b6
    const-string/jumbo v3, "openSDK_LOG"

    const-string/jumbo v4, "doShareToQQ() --end"

    invoke-static {v3, v4}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c0
    const-string/jumbo v3, "shareToQzone"

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/tencent/utils/TemporaryStorage;->set(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2d0

    check-cast v3, Lcom/tencent/tauth/IUiListener;

    invoke-interface {v3}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    :cond_2d0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/share/QzoneShare;->hasActivityForIntent()Z

    move-result v3

    if-eqz v3, :cond_2b6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/connect/share/QzoneShare;->mActivityIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2b6
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .registers 11

    const-string/jumbo v0, "shareToQzone"

    invoke-static {v0, p3}, Lcom/tencent/utils/TemporaryStorage;->set(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    :cond_e
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToH5Qzone() --start"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "http://openmobile.qq.com/api/check2?page=qzshare.html&loginpage=loginindex.html&logintype=qzone"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_26

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_26
    invoke-direct {p0, v0, p2}, Lcom/tencent/connect/share/QzoneShare;->a(Ljava/lang/StringBuffer;Landroid/os/Bundle;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/connect/share/QzoneShare;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/connect/share/QzoneShare;->mToken:Lcom/tencent/connect/auth/QQToken;

    const-string/jumbo v3, "requireApi"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "shareToH5QQ"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/utils/Util;->openBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    if-eqz p3, :cond_56

    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x6

    const-string/jumbo v2, "\u6253\u5f00\u6d4f\u89c8\u5668\u5931\u8d25!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_56
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToH5QQ() --end"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/share/QzoneShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .registers 16

    const/4 v11, -0x5

    const/4 v10, 0x1

    const/4 v9, -0x6

    const/4 v2, 0x0

    const/4 v8, 0x0

    if-nez p2, :cond_13

    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string/jumbo v1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    invoke-direct {v0, v9, v1, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :goto_12
    return-void

    :cond_13
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "summary"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "targetUrl"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "imageUrl"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {p1}, Lcom/tencent/utils/Util;->getApplicationLable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_86

    const-string/jumbo v0, "appName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3c
    :goto_3c
    const-string/jumbo v6, "req_type"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sparse-switch v6, :sswitch_data_284

    invoke-static {v1}, Lcom/tencent/utils/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e7

    invoke-static {v3}, Lcom/tencent/utils/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e7

    if-eqz v5, :cond_c8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_c8

    iput-boolean v2, p0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    :goto_5c
    iput-boolean v2, p0, Lcom/tencent/connect/share/QzoneShare;->b:Z

    iput-boolean v10, p0, Lcom/tencent/connect/share/QzoneShare;->c:Z

    iput-boolean v2, p0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    :goto_62
    invoke-static {}, Lcom/tencent/utils/Util;->hasSDCard()Z

    move-result v7

    if-nez v7, :cond_eb

    const-string/jumbo v7, "4.5.0"

    invoke-static {p1, v7}, Lcom/tencent/utils/SystemUtils;->compareQQVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_eb

    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string/jumbo v1, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-direct {v0, v9, v1, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() sdcard is null--end"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_3c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x14

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :sswitch_a9
    iput-boolean v10, p0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    iput-boolean v2, p0, Lcom/tencent/connect/share/QzoneShare;->b:Z

    iput-boolean v10, p0, Lcom/tencent/connect/share/QzoneShare;->c:Z

    iput-boolean v2, p0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    goto :goto_62

    :sswitch_b2
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string/jumbo v1, "\u6682\u4e0d\u652f\u6301\u7eaf\u56fe\u7247\u5206\u4eab\u5230\u7a7a\u95f4\uff0c\u5efa\u8bae\u4f7f\u7528\u56fe\u6587\u5206\u4eab"

    invoke-direct {v0, v11, v1, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() error--end\u6682\u4e0d\u652f\u6301\u7eaf\u56fe\u7247\u5206\u4eab\u5230\u7a7a\u95f4\uff0c\u5efa\u8bae\u4f7f\u7528\u56fe\u6587\u5206\u4eab"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6765\u81ea"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "\u7684\u5206\u4eab"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-boolean v10, p0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    goto/16 :goto_5c

    :cond_e7
    iput-boolean v10, p0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    goto/16 :goto_5c

    :cond_eb
    iget-boolean v7, p0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    if-eqz v7, :cond_127

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10b

    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string/jumbo v1, "targetUrl\u4e3a\u5fc5\u586b\u9879\uff0c\u8bf7\u8865\u5145\u540e\u5206\u4eab"

    invoke-direct {v0, v11, v1, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() targetUrl null error--end"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_10b
    invoke-static {v4}, Lcom/tencent/utils/Util;->isValidUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_127

    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string/jumbo v1, "targetUrl\u6709\u8bef"

    invoke-direct {v0, v11, v1, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() targetUrl error--end"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_127
    iget-boolean v4, p0, Lcom/tencent/connect/share/QzoneShare;->b:Z

    if-eqz v4, :cond_16d

    const-string/jumbo v1, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "title"

    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "summary"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13d
    :goto_13d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_149

    const-string/jumbo v1, "appName"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_149
    if-eqz v5, :cond_153

    if-eqz v5, :cond_1c3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c3

    :cond_153
    iget-boolean v0, p0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    if-eqz v0, :cond_205

    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string/jumbo v1, "\u7eaf\u56fe\u5206\u4eab\uff0cimageUrl \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v9, v1, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() imageUrl is null--end"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_16d
    iget-boolean v4, p0, Lcom/tencent/connect/share/QzoneShare;->c:Z

    if-eqz v4, :cond_18d

    invoke-static {v1}, Lcom/tencent/utils/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18d

    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string/jumbo v1, "title\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-direct {v0, v9, v1, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() title is null--end"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_18d
    invoke-static {v1}, Lcom/tencent/utils/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0xc8

    if-le v4, v7, :cond_1a7

    const/16 v4, 0xc8

    invoke-static {v1, v4, v8, v8}, Lcom/tencent/utils/Util;->subString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "title"

    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a7
    invoke-static {v3}, Lcom/tencent/utils/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x258

    if-le v1, v4, :cond_13d

    const/16 v1, 0x258

    invoke-static {v3, v1, v8, v8}, Lcom/tencent/utils/Util;->subString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "summary"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13d

    :cond_1c3
    move v1, v2

    :goto_1c4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e3

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/utils/Util;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1df

    invoke-static {v0}, Lcom/tencent/utils/Util;->isValidPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1df

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1df
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c4

    :cond_1e3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1ff

    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string/jumbo v1, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    invoke-direct {v0, v9, v1, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() MSG_PARAM_IMAGE_URL_FORMAT_ERROR--end"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_1ff
    const-string/jumbo v0, "imageUrl"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_205
    const-string/jumbo v0, "4.6.0"

    invoke-static {p1, v0}, Lcom/tencent/utils/SystemUtils;->compareQQVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_221

    new-instance v0, Lcom/tencent/connect/share/QzoneShare$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/tencent/connect/share/QzoneShare$1;-><init>(Lcom/tencent/connect/share/QzoneShare;Landroid/os/Bundle;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V

    invoke-static {p1, v5, v0}, Lcom/tencent/connect/share/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tencent/utils/AsynLoadImgBack;)V

    :goto_216
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() --end"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_221
    const-string/jumbo v0, "4.2.0"

    invoke-static {p1, v0}, Lcom/tencent/utils/SystemUtils;->compareQQVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_280

    const-string/jumbo v0, "4.6.0"

    invoke-static {p1, v0}, Lcom/tencent/utils/SystemUtils;->compareQQVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_280

    new-instance v1, Lcom/tencent/connect/share/QQShare;

    iget-object v0, p0, Lcom/tencent/connect/share/QzoneShare;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-direct {v1, p1, v0}, Lcom/tencent/connect/share/QQShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    if-eqz v5, :cond_26d

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_26d

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x5

    if-ne v6, v2, :cond_267

    invoke-static {v0}, Lcom/tencent/utils/Util;->fileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_267

    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string/jumbo v1, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u7eaf\u56fe\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u8def\u56fe\u7247"

    invoke-direct {v0, v9, v1, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone()\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u7eaf\u56fe\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u8def\u56fe\u7247"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_267
    const-string/jumbo v2, "imageLocalUrl"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26d
    const-string/jumbo v0, "4.5.0"

    invoke-static {p1, v0}, Lcom/tencent/utils/SystemUtils;->compareQQVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27c

    const-string/jumbo v0, "cflag"

    invoke-virtual {p2, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_27c
    invoke-virtual {v1, p1, p2, p3}, Lcom/tencent/connect/share/QQShare;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_216

    :cond_280
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_216

    :sswitch_data_284
    .sparse-switch
        0x1 -> :sswitch_a9
        0x5 -> :sswitch_b2
    .end sparse-switch
.end method
