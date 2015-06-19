.class public Lcom/sina/weibo/sdk/net/NetStateManager;
.super Ljava/lang/Object;
.source "NetStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/net/NetStateManager$NetState;,
        Lcom/sina/weibo/sdk/net/NetStateManager$NetStateReceive;
    }
.end annotation


# static fields
.field public static CUR_NETSTATE:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;->Mobile:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    sput-object v0, Lcom/sina/weibo/sdk/net/NetStateManager;->CUR_NETSTATE:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/sina/weibo/sdk/net/NetStateManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getAPN()Lorg/apache/http/HttpHost;
    .registers 9

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    sget-object v0, Lcom/sina/weibo/sdk/net/NetStateManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/sina/weibo/sdk/net/NetStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_1b
    if-eqz v6, :cond_44

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_44

    const-string/jumbo v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_41

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_41

    new-instance v7, Lorg/apache/http/HttpHost;

    const/16 v0, 0x50

    invoke-direct {v7, v8, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_41
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    return-object v7
.end method
