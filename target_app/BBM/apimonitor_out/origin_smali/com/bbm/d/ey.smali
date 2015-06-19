.class public final enum Lcom/bbm/d/ey;
.super Ljava/lang/Enum;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/d/ey;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/d/ey;

.field public static final enum b:Lcom/bbm/d/ey;

.field public static final enum c:Lcom/bbm/d/ey;

.field public static final enum d:Lcom/bbm/d/ey;

.field public static final enum e:Lcom/bbm/d/ey;

.field public static final enum f:Lcom/bbm/d/ey;

.field public static final enum g:Lcom/bbm/d/ey;

.field public static final enum h:Lcom/bbm/d/ey;

.field public static final enum i:Lcom/bbm/d/ey;

.field public static final enum j:Lcom/bbm/d/ey;

.field public static final enum k:Lcom/bbm/d/ey;

.field public static final enum l:Lcom/bbm/d/ey;

.field public static final enum m:Lcom/bbm/d/ey;

.field public static final enum n:Lcom/bbm/d/ey;

.field public static final enum o:Lcom/bbm/d/ey;

.field public static final enum p:Lcom/bbm/d/ey;

.field public static final enum q:Lcom/bbm/d/ey;

.field public static final enum r:Lcom/bbm/d/ey;

.field private static s:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/d/ey;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic u:[Lcom/bbm/d/ey;


# instance fields
.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "GeneralFailure"

    const-string v2, "GeneralFailure"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->a:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "LocalUnsupported"

    const-string v2, "LocalUnsupported"

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->b:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "RemoteUnsupported"

    const-string v2, "RemoteUnsupported"

    invoke-direct {v0, v1, v6, v2}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->c:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "Declined"

    const-string v2, "Declined"

    invoke-direct {v0, v1, v7, v2}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->d:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "LocalCancel"

    const-string v2, "LocalCancel"

    invoke-direct {v0, v1, v8, v2}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->e:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "RemoteCancel"

    const/4 v2, 0x5

    const-string v3, "RemoteCancel"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->f:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "Expired"

    const/4 v2, 0x6

    const-string v3, "Expired"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->g:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "TooLarge"

    const/4 v2, 0x7

    const-string v3, "TooLarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->h:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "WriteError"

    const/16 v2, 0x8

    const-string v3, "WriteError"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->i:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "FileNotFound"

    const/16 v2, 0x9

    const-string v3, "FileNotFound"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->j:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "AccessDenied"

    const/16 v2, 0xa

    const-string v3, "AccessDenied"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->k:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "ReadError"

    const/16 v2, 0xb

    const-string v3, "ReadError"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->l:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "Timeout"

    const/16 v2, 0xc

    const-string v3, "Timeout"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->m:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "RemoteInterrupted"

    const/16 v2, 0xd

    const-string v3, "RemoteInterrupted"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->n:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "TooMany"

    const/16 v2, 0xe

    const-string v3, "TooMany"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->o:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "ConversationEnded"

    const/16 v2, 0xf

    const-string v3, "ConversationEnded"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->p:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "RemoteIdentityChanged"

    const/16 v2, 0x10

    const-string v3, "RemoteIdentityChanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->q:Lcom/bbm/d/ey;

    new-instance v0, Lcom/bbm/d/ey;

    const-string v1, "Unspecified"

    const/16 v2, 0x11

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ey;->r:Lcom/bbm/d/ey;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/bbm/d/ey;

    sget-object v1, Lcom/bbm/d/ey;->a:Lcom/bbm/d/ey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/d/ey;->b:Lcom/bbm/d/ey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/d/ey;->c:Lcom/bbm/d/ey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bbm/d/ey;->d:Lcom/bbm/d/ey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bbm/d/ey;->e:Lcom/bbm/d/ey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bbm/d/ey;->f:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bbm/d/ey;->g:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bbm/d/ey;->h:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bbm/d/ey;->i:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bbm/d/ey;->j:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bbm/d/ey;->k:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bbm/d/ey;->l:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/bbm/d/ey;->m:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/bbm/d/ey;->n:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/bbm/d/ey;->o:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/bbm/d/ey;->p:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/bbm/d/ey;->q:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/bbm/d/ey;->r:Lcom/bbm/d/ey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/d/ey;->u:[Lcom/bbm/d/ey;

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

    iput-object p3, p0, Lcom/bbm/d/ey;->t:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bbm/d/ey;
    .registers 7

    sget-object v0, Lcom/bbm/d/ey;->s:Ljava/util/Hashtable;

    if-nez v0, :cond_1d

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-static {}, Lcom/bbm/d/ey;->values()[Lcom/bbm/d/ey;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_1b

    aget-object v4, v2, v0

    iget-object v5, v4, Lcom/bbm/d/ey;->t:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    sput-object v1, Lcom/bbm/d/ey;->s:Ljava/util/Hashtable;

    :cond_1d
    if-eqz p0, :cond_2a

    sget-object v0, Lcom/bbm/d/ey;->s:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ey;

    :goto_27
    if-eqz v0, :cond_2c

    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_27

    :cond_2c
    sget-object v0, Lcom/bbm/d/ey;->r:Lcom/bbm/d/ey;

    goto :goto_29
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/ey;
    .registers 2

    const-class v0, Lcom/bbm/d/ey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ey;

    return-object v0
.end method

.method public static values()[Lcom/bbm/d/ey;
    .registers 1

    sget-object v0, Lcom/bbm/d/ey;->u:[Lcom/bbm/d/ey;

    invoke-virtual {v0}, [Lcom/bbm/d/ey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/d/ey;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/ey;->t:Ljava/lang/String;

    return-object v0
.end method
