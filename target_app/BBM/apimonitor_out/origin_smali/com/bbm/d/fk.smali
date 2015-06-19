.class public final enum Lcom/bbm/d/fk;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/d/fk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic A:[Lcom/bbm/d/fk;

.field public static final enum a:Lcom/bbm/d/fk;

.field public static final enum b:Lcom/bbm/d/fk;

.field public static final enum c:Lcom/bbm/d/fk;

.field public static final enum d:Lcom/bbm/d/fk;

.field public static final enum e:Lcom/bbm/d/fk;

.field public static final enum f:Lcom/bbm/d/fk;

.field public static final enum g:Lcom/bbm/d/fk;

.field public static final enum h:Lcom/bbm/d/fk;

.field public static final enum i:Lcom/bbm/d/fk;

.field public static final enum j:Lcom/bbm/d/fk;

.field public static final enum k:Lcom/bbm/d/fk;

.field public static final enum l:Lcom/bbm/d/fk;

.field public static final enum m:Lcom/bbm/d/fk;

.field public static final enum n:Lcom/bbm/d/fk;

.field public static final enum o:Lcom/bbm/d/fk;

.field public static final enum p:Lcom/bbm/d/fk;

.field public static final enum q:Lcom/bbm/d/fk;

.field public static final enum r:Lcom/bbm/d/fk;

.field public static final enum s:Lcom/bbm/d/fk;

.field public static final enum t:Lcom/bbm/d/fk;

.field public static final enum u:Lcom/bbm/d/fk;

.field public static final enum v:Lcom/bbm/d/fk;

.field public static final enum w:Lcom/bbm/d/fk;

.field public static final enum x:Lcom/bbm/d/fk;

.field private static y:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/d/fk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "Text"

    const-string v2, "Text"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->a:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "Ping"

    const-string v2, "Ping"

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "Broadcast"

    const-string v2, "Broadcast"

    invoke-direct {v0, v1, v6, v2}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "System"

    const-string v2, "System"

    invoke-direct {v0, v1, v7, v2}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->d:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "FileTransfer"

    const-string v2, "FileTransfer"

    invoke-direct {v0, v1, v8, v2}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->e:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "PictureTransfer"

    const/4 v2, 0x5

    const-string v3, "PictureTransfer"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->f:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "HighQualityPictureReq"

    const/4 v2, 0x6

    const-string v3, "HighQualityPictureReq"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->g:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "ConfIncomingInviteReq"

    const/4 v2, 0x7

    const-string v3, "ConfIncomingInviteReq"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->h:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "ConfOutgoingInviteReq"

    const/16 v2, 0x8

    const-string v3, "ConfOutgoingInviteReq"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->i:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "ConfOutgoingInviteReqDenied"

    const/16 v2, 0x9

    const-string v3, "ConfOutgoingInviteReqDenied"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->j:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "ConfWeJoined"

    const/16 v2, 0xa

    const-string v3, "ConfWeJoined"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->k:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "ConfInvited"

    const/16 v2, 0xb

    const-string v3, "ConfInvited"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->l:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "ConfUserJoined"

    const/16 v2, 0xc

    const-string v3, "ConfUserJoined"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->m:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "ConfUserLeft"

    const/16 v2, 0xd

    const-string v3, "ConfUserLeft"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->n:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "ChannelParticipantLeft"

    const/16 v2, 0xe

    const-string v3, "ChannelParticipantLeft"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->o:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "Location"

    const/16 v2, 0xf

    const-string v3, "Location"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->p:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "ContactReInvite"

    const/16 v2, 0x10

    const-string v3, "ContactReInvite"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->q:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "CallEvent"

    const/16 v2, 0x11

    const-string v3, "CallEvent"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->r:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "ChannelInvitation"

    const/16 v2, 0x12

    const-string v3, "ChannelInvitation"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->s:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "TextWithContext"

    const/16 v2, 0x13

    const-string v3, "TextWithContext"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->t:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "Sticker"

    const/16 v2, 0x14

    const-string v3, "Sticker"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->u:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "SharedAd"

    const/16 v2, 0x15

    const-string v3, "SharedAd"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->v:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "KeyExchange"

    const/16 v2, 0x16

    const-string v3, "KeyExchange"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->w:Lcom/bbm/d/fk;

    new-instance v0, Lcom/bbm/d/fk;

    const-string v1, "Unspecified"

    const/16 v2, 0x17

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/fk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/fk;->x:Lcom/bbm/d/fk;

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/bbm/d/fk;

    sget-object v1, Lcom/bbm/d/fk;->a:Lcom/bbm/d/fk;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bbm/d/fk;->d:Lcom/bbm/d/fk;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bbm/d/fk;->e:Lcom/bbm/d/fk;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bbm/d/fk;->f:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bbm/d/fk;->g:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bbm/d/fk;->h:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bbm/d/fk;->i:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bbm/d/fk;->j:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bbm/d/fk;->k:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bbm/d/fk;->l:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/bbm/d/fk;->m:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/bbm/d/fk;->n:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/bbm/d/fk;->o:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/bbm/d/fk;->p:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/bbm/d/fk;->q:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/bbm/d/fk;->r:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/bbm/d/fk;->s:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/bbm/d/fk;->t:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/bbm/d/fk;->u:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/bbm/d/fk;->v:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/bbm/d/fk;->w:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/bbm/d/fk;->x:Lcom/bbm/d/fk;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/d/fk;->A:[Lcom/bbm/d/fk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bbm/d/fk;->z:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bbm/d/fk;
    .registers 7

    sget-object v0, Lcom/bbm/d/fk;->y:Ljava/util/Hashtable;

    if-nez v0, :cond_1d

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-static {}, Lcom/bbm/d/fk;->values()[Lcom/bbm/d/fk;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_1b

    aget-object v4, v2, v0

    iget-object v5, v4, Lcom/bbm/d/fk;->z:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    sput-object v1, Lcom/bbm/d/fk;->y:Ljava/util/Hashtable;

    :cond_1d
    if-eqz p0, :cond_2a

    sget-object v0, Lcom/bbm/d/fk;->y:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fk;

    :goto_27
    if-eqz v0, :cond_2c

    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_27

    :cond_2c
    sget-object v0, Lcom/bbm/d/fk;->x:Lcom/bbm/d/fk;

    goto :goto_29
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/fk;
    .registers 2

    const-class v0, Lcom/bbm/d/fk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fk;

    return-object v0
.end method

.method public static values()[Lcom/bbm/d/fk;
    .registers 1

    sget-object v0, Lcom/bbm/d/fk;->A:[Lcom/bbm/d/fk;

    invoke-virtual {v0}, [Lcom/bbm/d/fk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/d/fk;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/fk;->z:Ljava/lang/String;

    return-object v0
.end method
