.class public Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AuthReceiver.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "com.tencent.sso.AUTH"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private revert([B)Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;
    .registers 8

    new-instance v3, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;

    invoke-direct {v3}, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_f
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->expiresIn:J

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->refreshToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->openID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->omasToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->omasKey:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_33} :catch_3e

    if-eqz v0, :cond_38

    :try_start_35
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_5a

    :cond_38
    :goto_38
    if-eqz v1, :cond_3d

    :try_start_3a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_5c

    :cond_3d
    :goto_3d
    return-object v3

    :catch_3e
    move-exception v2

    :try_start_3f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4e

    if-eqz v0, :cond_47

    :try_start_44
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_5e

    :cond_47
    :goto_47
    if-eqz v1, :cond_4c

    :try_start_49
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_60

    :cond_4c
    :goto_4c
    const/4 v3, 0x0

    goto :goto_3d

    :catchall_4e
    move-exception v4

    if-eqz v0, :cond_54

    :try_start_51
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_62

    :cond_54
    :goto_54
    if-eqz v1, :cond_59

    :try_start_56
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_64

    :cond_59
    :goto_59
    throw v4

    :catch_5a
    move-exception v4

    goto :goto_38

    :catch_5c
    move-exception v4

    goto :goto_3d

    :catch_5e
    move-exception v4

    goto :goto_47

    :catch_60
    move-exception v4

    goto :goto_4c

    :catch_62
    move-exception v5

    goto :goto_54

    :catch_64
    move-exception v5

    goto :goto_59
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.tencent.sso.AUTH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    const-string/jumbo v6, "com.tencent.sso.PACKAGE_NAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    const-string/jumbo v6, "com.tencent.sso.AUTH_RESULT"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string/jumbo v6, "com.tencent.sso.WEIBO_NICK"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "com.tencent.sso.ACCESS_TOKEN"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v6, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;

    invoke-direct {v6}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;-><init>()V

    const-string/jumbo v7, "&-*)Wb5_U,[^!9\'+"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v6, v1, v7, v8}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->decrypt([B[BI)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;->revert([B)Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;

    move-result-object v5

    sget-object v6, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;

    if-eqz v6, :cond_55

    sget-object v6, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;

    invoke-interface {v6, v3, v5}, Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;->onAuthPassed(Ljava/lang/String;Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;)V

    :cond_55
    :goto_55
    return-void

    :cond_56
    const-string/jumbo v6, "com.tencent.sso.RESULT"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v6, "com.tencent.sso.WEIBO_NICK"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;

    if-eqz v6, :cond_55

    sget-object v6, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;

    invoke-interface {v6, v2, v3}, Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;->onAuthFail(ILjava/lang/String;)V

    goto :goto_55
.end method
