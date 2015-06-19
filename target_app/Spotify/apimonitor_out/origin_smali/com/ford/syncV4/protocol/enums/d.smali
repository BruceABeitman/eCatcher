.class public final Lcom/ford/syncV4/protocol/enums/d;
.super Lcom/ford/syncV4/util/b;
.source "SourceFile"


# static fields
.field public static final b:Lcom/ford/syncV4/protocol/enums/d;

.field public static final c:Lcom/ford/syncV4/protocol/enums/d;

.field private static d:Ljava/util/Vector;


# instance fields
.field a:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/ford/syncV4/protocol/enums/d;->d:Ljava/util/Vector;

    new-instance v0, Lcom/ford/syncV4/protocol/enums/d;

    const/4 v1, 0x7

    const-string v2, "RPC"

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/protocol/enums/d;-><init>(BLjava/lang/String;)V

    sput-object v0, Lcom/ford/syncV4/protocol/enums/d;->b:Lcom/ford/syncV4/protocol/enums/d;

    new-instance v0, Lcom/ford/syncV4/protocol/enums/d;

    const/16 v1, 0xf

    const-string v2, "Bulk_Data"

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/protocol/enums/d;-><init>(BLjava/lang/String;)V

    sput-object v0, Lcom/ford/syncV4/protocol/enums/d;->c:Lcom/ford/syncV4/protocol/enums/d;

    sget-object v0, Lcom/ford/syncV4/protocol/enums/d;->d:Ljava/util/Vector;

    sget-object v1, Lcom/ford/syncV4/protocol/enums/d;->b:Lcom/ford/syncV4/protocol/enums/d;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v0, Lcom/ford/syncV4/protocol/enums/d;->d:Ljava/util/Vector;

    sget-object v1, Lcom/ford/syncV4/protocol/enums/d;->c:Lcom/ford/syncV4/protocol/enums/d;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(BLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/ford/syncV4/util/b;-><init>(BLjava/lang/String;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/ford/syncV4/protocol/enums/d;->a:B

    return-void
.end method

.method public static a(B)Lcom/ford/syncV4/protocol/enums/d;
    .registers 2

    sget-object v0, Lcom/ford/syncV4/protocol/enums/d;->d:Ljava/util/Vector;

    invoke-static {v0, p0}, Lcom/ford/syncV4/protocol/enums/d;->a(Ljava/util/Vector;B)Lcom/ford/syncV4/util/b;

    move-result-object v0

    check-cast v0, Lcom/ford/syncV4/protocol/enums/d;

    return-object v0
.end method
