.class public final enum Lcom/pinguo/share/ShareType;
.super Ljava/lang/Enum;
.source "ShareType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/share/ShareType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/share/ShareType;

.field public static final enum LOCAL_QQ:Lcom/pinguo/share/ShareType;

.field public static final enum LOCAL_SMS:Lcom/pinguo/share/ShareType;

.field public static final enum LOCAL_WX_CHATS:Lcom/pinguo/share/ShareType;

.field public static final enum LOCAL_WX_FRIENDS:Lcom/pinguo/share/ShareType;

.field public static final enum OTHER:Lcom/pinguo/share/ShareType;

.field public static final enum WEBSITE_SHARE:Lcom/pinguo/share/ShareType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/pinguo/share/ShareType;

    const-string/jumbo v1, "LOCAL_QQ"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/share/ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/ShareType;->LOCAL_QQ:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/ShareType;

    const-string/jumbo v1, "LOCAL_WX_CHATS"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/share/ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/ShareType;->LOCAL_WX_CHATS:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/ShareType;

    const-string/jumbo v1, "LOCAL_WX_FRIENDS"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/share/ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/ShareType;->LOCAL_WX_FRIENDS:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/ShareType;

    const-string/jumbo v1, "LOCAL_SMS"

    invoke-direct {v0, v1, v6}, Lcom/pinguo/share/ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/ShareType;->LOCAL_SMS:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/ShareType;

    const-string/jumbo v1, "WEBSITE_SHARE"

    invoke-direct {v0, v1, v7}, Lcom/pinguo/share/ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/ShareType;->WEBSITE_SHARE:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/ShareType;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pinguo/share/ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/ShareType;->OTHER:Lcom/pinguo/share/ShareType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pinguo/share/ShareType;

    sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_QQ:Lcom/pinguo/share/ShareType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_WX_CHATS:Lcom/pinguo/share/ShareType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_WX_FRIENDS:Lcom/pinguo/share/ShareType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_SMS:Lcom/pinguo/share/ShareType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pinguo/share/ShareType;->WEBSITE_SHARE:Lcom/pinguo/share/ShareType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pinguo/share/ShareType;->OTHER:Lcom/pinguo/share/ShareType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/share/ShareType;->ENUM$VALUES:[Lcom/pinguo/share/ShareType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/share/ShareType;
    .registers 2

    const-class v0, Lcom/pinguo/share/ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/share/ShareType;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/share/ShareType;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/share/ShareType;->ENUM$VALUES:[Lcom/pinguo/share/ShareType;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/share/ShareType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
