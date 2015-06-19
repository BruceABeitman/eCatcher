.class public final Lcom/ford/syncV4/trace/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:[B

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sput-object v0, Lcom/ford/syncV4/trace/c;->a:Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/ford/syncV4/trace/c;->b:[B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ford/syncV4/trace/c;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/ford/syncV4/trace/c;->a([BII)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/ford/syncV4/trace/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, p1

    :goto_7
    add-int v3, p1, p2

    if-ge v1, v3, :cond_52

    sub-int v3, v1, p1

    rem-int/lit8 v3, v3, 0x3

    packed-switch v3, :pswitch_data_8c

    :goto_12
    sget-object v3, Lcom/ford/syncV4/trace/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :pswitch_1e
    aget-byte v0, p0, v1

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3f

    goto :goto_12

    :pswitch_25
    aget-byte v0, p0, v1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v0, v3

    goto :goto_12

    :pswitch_35
    aget-byte v0, p0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3c

    or-int/2addr v0, v3

    sget-object v3, Lcom/ford/syncV4/trace/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0x3f

    goto :goto_12

    :cond_52
    sub-int v0, v1, p1

    rem-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_96

    :goto_59
    :pswitch_59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5e
    add-int/lit8 v0, v1, -0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    sget-object v1, Lcom/ford/syncV4/trace/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "=="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    :pswitch_75
    add-int/lit8 v0, v1, -0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3c

    sget-object v1, Lcom/ford/syncV4/trace/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_25
        :pswitch_35
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_59
        :pswitch_5e
        :pswitch_75
    .end packed-switch
.end method
