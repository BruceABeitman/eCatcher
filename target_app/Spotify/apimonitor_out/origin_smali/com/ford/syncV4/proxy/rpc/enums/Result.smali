.class public final enum Lcom/ford/syncV4/proxy/rpc/enums/Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ford/syncV4/proxy/rpc/enums/Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum B:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum C:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field private static final synthetic D:[Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum a:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum b:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum c:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum d:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum e:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum f:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum g:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum h:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum i:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum j:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum k:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum l:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum m:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum n:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum o:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum p:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum q:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum r:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum s:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum t:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum u:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum v:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum w:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum x:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum y:Lcom/ford/syncV4/proxy/rpc/enums/Result;

.field public static final enum z:Lcom/ford/syncV4/proxy/rpc/enums/Result;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->a:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "INVALID_DATA"

    invoke-direct {v0, v1, v4}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->b:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "UNSUPPORTED_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->c:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "OUT_OF_MEMORY"

    invoke-direct {v0, v1, v6}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->d:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "TOO_MANY_PENDING_REQUESTS"

    invoke-direct {v0, v1, v7}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->e:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "INVALID_ID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->f:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "DUPLICATE_NAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->g:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "TOO_MANY_APPLICATIONS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->h:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "APPLICATION_REGISTERED_ALREADY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->i:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "UNSUPPORTED_VERSION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->j:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "WRONG_LANGUAGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->k:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "APPLICATION_NOT_REGISTERED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->l:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "IN_USE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->m:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "VEHICLE_DATA_NOT_ALLOWED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->n:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "VEHICLE_DATA_NOT_AVAILABLE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->o:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "REJECTED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->p:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "ABORTED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->q:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "IGNORED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->r:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "UNSUPPORTED_RESOURCE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->s:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "FILE_NOT_FOUND"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->t:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "GENERIC_ERROR"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->u:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "DISALLOWED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->v:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "USER_DISALLOWED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->w:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "TIMED_OUT"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->x:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "CANCEL_ROUTE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->y:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "TRUNCATED_DATA"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->z:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "RETRY"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->A:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "WARNINGS"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->B:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const-string v1, "SAVED"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->C:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/ford/syncV4/proxy/rpc/enums/Result;

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/Result;->a:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/Result;->b:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/Result;->c:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/Result;->d:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/Result;->e:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->f:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->g:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->h:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->i:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->j:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->k:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->l:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->m:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->n:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->o:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->p:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->q:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->r:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->s:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->t:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->u:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->v:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->w:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->x:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->y:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->z:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->A:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->B:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/Result;->C:Lcom/ford/syncV4/proxy/rpc/enums/Result;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->D:[Lcom/ford/syncV4/proxy/rpc/enums/Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/Result;
    .registers 2

    invoke-static {p0}, Lcom/ford/syncV4/proxy/rpc/enums/Result;->valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/Result;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/Result;
    .registers 2

    const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;

    return-object v0
.end method

.method public static values()[Lcom/ford/syncV4/proxy/rpc/enums/Result;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/Result;->D:[Lcom/ford/syncV4/proxy/rpc/enums/Result;

    invoke-virtual {v0}, [Lcom/ford/syncV4/proxy/rpc/enums/Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ford/syncV4/proxy/rpc/enums/Result;

    return-object v0
.end method
