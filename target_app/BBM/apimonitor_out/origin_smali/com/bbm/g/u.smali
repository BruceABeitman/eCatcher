.class public final enum Lcom/bbm/g/u;
.super Ljava/lang/Enum;
.source "GroupInvitation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/g/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/g/u;

.field public static final enum b:Lcom/bbm/g/u;

.field public static final enum c:Lcom/bbm/g/u;

.field public static final enum d:Lcom/bbm/g/u;

.field public static final enum e:Lcom/bbm/g/u;

.field public static final enum f:Lcom/bbm/g/u;

.field public static final enum g:Lcom/bbm/g/u;

.field private static h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/g/u;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic j:[Lcom/bbm/g/u;


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/bbm/g/u;

    const-string v1, "New"

    const-string v2, "New"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/g/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/u;->a:Lcom/bbm/g/u;

    new-instance v0, Lcom/bbm/g/u;

    const-string v1, "InvitationAcceptedWaitingForConfirmation"

    const-string v2, "InvitationAcceptedWaitingForConfirmation"

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/g/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/u;->b:Lcom/bbm/g/u;

    new-instance v0, Lcom/bbm/g/u;

    const-string v1, "InvitationAcceptedWaitingForPasswordVerification"

    const-string v2, "InvitationAcceptedWaitingForPasswordVerification"

    invoke-direct {v0, v1, v6, v2}, Lcom/bbm/g/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/u;->c:Lcom/bbm/g/u;

    new-instance v0, Lcom/bbm/g/u;

    const-string v1, "FailedToJoinBadPassword"

    const-string v2, "FailedToJoinBadPassword"

    invoke-direct {v0, v1, v7, v2}, Lcom/bbm/g/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/u;->d:Lcom/bbm/g/u;

    new-instance v0, Lcom/bbm/g/u;

    const-string v1, "FailedToJoinTooManyMembers"

    const-string v2, "FailedToJoinTooManyMembers"

    invoke-direct {v0, v1, v8, v2}, Lcom/bbm/g/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/u;->e:Lcom/bbm/g/u;

    new-instance v0, Lcom/bbm/g/u;

    const-string v1, "FailedToJoinNoInvitation"

    const/4 v2, 0x5

    const-string v3, "FailedToJoinNoInvitation"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/u;->f:Lcom/bbm/g/u;

    new-instance v0, Lcom/bbm/g/u;

    const-string v1, "Unspecified"

    const/4 v2, 0x6

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/u;->g:Lcom/bbm/g/u;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/bbm/g/u;

    sget-object v1, Lcom/bbm/g/u;->a:Lcom/bbm/g/u;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/g/u;->b:Lcom/bbm/g/u;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/g/u;->c:Lcom/bbm/g/u;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bbm/g/u;->d:Lcom/bbm/g/u;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bbm/g/u;->e:Lcom/bbm/g/u;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bbm/g/u;->f:Lcom/bbm/g/u;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bbm/g/u;->g:Lcom/bbm/g/u;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/g/u;->j:[Lcom/bbm/g/u;

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

    iput-object p3, p0, Lcom/bbm/g/u;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bbm/g/u;
    .registers 7

    sget-object v0, Lcom/bbm/g/u;->h:Ljava/util/Hashtable;

    if-nez v0, :cond_1d

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-static {}, Lcom/bbm/g/u;->values()[Lcom/bbm/g/u;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_1b

    aget-object v4, v2, v0

    iget-object v5, v4, Lcom/bbm/g/u;->i:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    sput-object v1, Lcom/bbm/g/u;->h:Ljava/util/Hashtable;

    :cond_1d
    if-eqz p0, :cond_2a

    sget-object v0, Lcom/bbm/g/u;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/u;

    :goto_27
    if-eqz v0, :cond_2c

    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_27

    :cond_2c
    sget-object v0, Lcom/bbm/g/u;->g:Lcom/bbm/g/u;

    goto :goto_29
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/u;
    .registers 2

    const-class v0, Lcom/bbm/g/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/u;

    return-object v0
.end method

.method public static values()[Lcom/bbm/g/u;
    .registers 1

    sget-object v0, Lcom/bbm/g/u;->j:[Lcom/bbm/g/u;

    invoke-virtual {v0}, [Lcom/bbm/g/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/g/u;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/u;->i:Ljava/lang/String;

    return-object v0
.end method