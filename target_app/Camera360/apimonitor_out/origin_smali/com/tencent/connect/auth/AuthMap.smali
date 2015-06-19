.class public Lcom/tencent/connect/auth/AuthMap;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/AuthMap$Auth;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static b:I

.field public static sInstance:Lcom/tencent/connect/auth/AuthMap;


# instance fields
.field public final KEY_CHAR_LIST:Ljava/lang/String;

.field public authMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/connect/auth/AuthMap$Auth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-class v0, Lcom/tencent/connect/auth/AuthMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/tencent/connect/auth/AuthMap;->a:Z

    sput v1, Lcom/tencent/connect/auth/AuthMap;->b:I

    return-void

    :cond_f
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthMap;->authMap:Ljava/util/HashMap;

    const-string/jumbo v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthMap;->KEY_CHAR_LIST:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    sget-boolean v1, Lcom/tencent/connect/auth/AuthMap;->a:Z

    if-nez v1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    move v1, v0

    :goto_23
    if-ge v0, v4, :cond_44

    mul-int/lit8 v5, v0, 0x2

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    xor-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/connect/auth/AuthMap;
    .registers 1

    sget-object v0, Lcom/tencent/connect/auth/AuthMap;->sInstance:Lcom/tencent/connect/auth/AuthMap;

    if-nez v0, :cond_b

    new-instance v0, Lcom/tencent/connect/auth/AuthMap;

    invoke-direct {v0}, Lcom/tencent/connect/auth/AuthMap;-><init>()V

    sput-object v0, Lcom/tencent/connect/auth/AuthMap;->sInstance:Lcom/tencent/connect/auth/AuthMap;

    :cond_b
    sget-object v0, Lcom/tencent/connect/auth/AuthMap;->sInstance:Lcom/tencent/connect/auth/AuthMap;

    return-object v0
.end method

.method public static getSerial()I
    .registers 1

    sget v0, Lcom/tencent/connect/auth/AuthMap;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/connect/auth/AuthMap;->b:I

    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/auth/AuthMap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/tencent/connect/auth/AuthMap$Auth;
    .registers 3

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthMap;->authMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/connect/auth/AuthMap$Auth;

    return-object v0
.end method

.method public makeKey()Ljava/lang/String;
    .registers 10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4008

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    const-string/jumbo v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v1, :cond_2e

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    int-to-double v7, v3

    mul-double/2addr v5, v7

    double-to-int v5, v5

    aget-char v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthMap;->authMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set(Lcom/tencent/connect/auth/AuthMap$Auth;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/tencent/connect/auth/AuthMap;->getSerial()I

    move-result v1

    :try_start_4
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthMap;->authMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1d} :catch_32

    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d
.end method
