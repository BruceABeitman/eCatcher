.class public final enum Lcom/bbm/ak;
.super Ljava/lang/Enum;
.source "SetupBbidError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/ak;

.field public static final enum b:Lcom/bbm/ak;

.field public static final enum c:Lcom/bbm/ak;

.field private static final synthetic d:[Lcom/bbm/ak;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/ak;

    const-string v1, "NoError"

    invoke-direct {v0, v1, v2}, Lcom/bbm/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ak;->a:Lcom/bbm/ak;

    new-instance v0, Lcom/bbm/ak;

    const-string v1, "NetworkConnectionError"

    invoke-direct {v0, v1, v3}, Lcom/bbm/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ak;->b:Lcom/bbm/ak;

    new-instance v0, Lcom/bbm/ak;

    const-string v1, "Unspecified"

    invoke-direct {v0, v1, v4}, Lcom/bbm/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ak;->c:Lcom/bbm/ak;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/ak;

    sget-object v1, Lcom/bbm/ak;->a:Lcom/bbm/ak;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/ak;->b:Lcom/bbm/ak;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/ak;->c:Lcom/bbm/ak;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bbm/ak;->d:[Lcom/bbm/ak;

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

.method public static a(I)Lcom/bbm/ak;
    .registers 2

    sparse-switch p0, :sswitch_data_c

    sget-object v0, Lcom/bbm/ak;->c:Lcom/bbm/ak;

    :goto_5
    return-object v0

    :sswitch_6
    sget-object v0, Lcom/bbm/ak;->a:Lcom/bbm/ak;

    goto :goto_5

    :sswitch_9
    sget-object v0, Lcom/bbm/ak;->b:Lcom/bbm/ak;

    goto :goto_5

    :sswitch_data_c
    .sparse-switch
        0x0 -> :sswitch_6
        0xc35c -> :sswitch_9
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ak;
    .registers 2

    const-class v0, Lcom/bbm/ak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/ak;

    return-object v0
.end method

.method public static values()[Lcom/bbm/ak;
    .registers 1

    sget-object v0, Lcom/bbm/ak;->d:[Lcom/bbm/ak;

    invoke-virtual {v0}, [Lcom/bbm/ak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/ak;

    return-object v0
.end method
