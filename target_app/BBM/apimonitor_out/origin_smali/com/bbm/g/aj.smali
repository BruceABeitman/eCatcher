.class public final enum Lcom/bbm/g/aj;
.super Ljava/lang/Enum;
.source "GroupRestoreStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/g/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/g/aj;

.field public static final enum b:Lcom/bbm/g/aj;

.field public static final enum c:Lcom/bbm/g/aj;

.field public static final enum d:Lcom/bbm/g/aj;

.field public static final enum e:Lcom/bbm/g/aj;

.field public static final enum f:Lcom/bbm/g/aj;

.field public static final enum g:Lcom/bbm/g/aj;

.field private static h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/g/aj;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic j:[Lcom/bbm/g/aj;


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

    new-instance v0, Lcom/bbm/g/aj;

    const-string v1, "SharedGroupRecoveryRequestSent"

    const-string v2, "SharedGroupRecoveryRequestSent"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/g/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/aj;->a:Lcom/bbm/g/aj;

    new-instance v0, Lcom/bbm/g/aj;

    const-string v1, "NegotiatingReEntryWithDevice"

    const-string v2, "NegotiatingReEntryWithDevice"

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/g/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/aj;->b:Lcom/bbm/g/aj;

    new-instance v0, Lcom/bbm/g/aj;

    const-string v1, "RecoveryFailedSuggestManualRetry"

    const-string v2, "RecoveryFailedSuggestManualRetry"

    invoke-direct {v0, v1, v6, v2}, Lcom/bbm/g/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/aj;->c:Lcom/bbm/g/aj;

    new-instance v0, Lcom/bbm/g/aj;

    const-string v1, "RecoveryFailed"

    const-string v2, "RecoveryFailed"

    invoke-direct {v0, v1, v7, v2}, Lcom/bbm/g/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/aj;->d:Lcom/bbm/g/aj;

    new-instance v0, Lcom/bbm/g/aj;

    const-string v1, "RecoverySuccessful"

    const-string v2, "RecoverySuccessful"

    invoke-direct {v0, v1, v8, v2}, Lcom/bbm/g/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/aj;->e:Lcom/bbm/g/aj;

    new-instance v0, Lcom/bbm/g/aj;

    const-string v1, "ProtectedGroupRequiresJoin"

    const/4 v2, 0x5

    const-string v3, "ProtectedGroupRequiresJoin"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/aj;->f:Lcom/bbm/g/aj;

    new-instance v0, Lcom/bbm/g/aj;

    const-string v1, "Unspecified"

    const/4 v2, 0x6

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/aj;->g:Lcom/bbm/g/aj;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/bbm/g/aj;

    sget-object v1, Lcom/bbm/g/aj;->a:Lcom/bbm/g/aj;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/g/aj;->b:Lcom/bbm/g/aj;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/g/aj;->c:Lcom/bbm/g/aj;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bbm/g/aj;->d:Lcom/bbm/g/aj;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bbm/g/aj;->e:Lcom/bbm/g/aj;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bbm/g/aj;->f:Lcom/bbm/g/aj;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bbm/g/aj;->g:Lcom/bbm/g/aj;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/g/aj;->j:[Lcom/bbm/g/aj;

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

    iput-object p3, p0, Lcom/bbm/g/aj;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bbm/g/aj;
    .registers 7

    sget-object v0, Lcom/bbm/g/aj;->h:Ljava/util/Hashtable;

    if-nez v0, :cond_1d

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-static {}, Lcom/bbm/g/aj;->values()[Lcom/bbm/g/aj;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_1b

    aget-object v4, v2, v0

    iget-object v5, v4, Lcom/bbm/g/aj;->i:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    sput-object v1, Lcom/bbm/g/aj;->h:Ljava/util/Hashtable;

    :cond_1d
    if-eqz p0, :cond_2a

    sget-object v0, Lcom/bbm/g/aj;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/aj;

    :goto_27
    if-eqz v0, :cond_2c

    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_27

    :cond_2c
    sget-object v0, Lcom/bbm/g/aj;->g:Lcom/bbm/g/aj;

    goto :goto_29
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/aj;
    .registers 2

    const-class v0, Lcom/bbm/g/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/aj;

    return-object v0
.end method

.method public static values()[Lcom/bbm/g/aj;
    .registers 1

    sget-object v0, Lcom/bbm/g/aj;->j:[Lcom/bbm/g/aj;

    invoke-virtual {v0}, [Lcom/bbm/g/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/g/aj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/aj;->i:Ljava/lang/String;

    return-object v0
.end method
