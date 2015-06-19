.class public final enum Lcom/bbm/l/d/d;
.super Ljava/lang/Enum;
.source "PaymentMethodType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/l/d/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/l/d/d;

.field public static final enum b:Lcom/bbm/l/d/d;

.field public static final enum c:Lcom/bbm/l/d/d;

.field private static final synthetic e:[Lcom/bbm/l/d/d;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/l/d/d;

    const-string v1, "UNKNOWN_METHOD"

    const/16 v2, 0x1f40

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/l/d/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/l/d/d;->a:Lcom/bbm/l/d/d;

    new-instance v0, Lcom/bbm/l/d/d;

    const-string v1, "GOOGLE_PLAY_METHOD"

    const/16 v2, 0x1f41

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/l/d/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/l/d/d;->b:Lcom/bbm/l/d/d;

    new-instance v0, Lcom/bbm/l/d/d;

    const-string v1, "CARRIER_BILLING_METHOD"

    const/16 v2, 0x1f42

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/l/d/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/l/d/d;->c:Lcom/bbm/l/d/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/l/d/d;

    sget-object v1, Lcom/bbm/l/d/d;->a:Lcom/bbm/l/d/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/l/d/d;->b:Lcom/bbm/l/d/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/l/d/d;->c:Lcom/bbm/l/d/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/l/d/d;->e:[Lcom/bbm/l/d/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bbm/l/d/d;->d:I

    return-void
.end method

.method public static a(I)Lcom/bbm/l/d/d;
    .registers 2

    packed-switch p0, :pswitch_data_c

    sget-object v0, Lcom/bbm/l/d/d;->a:Lcom/bbm/l/d/d;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/bbm/l/d/d;->b:Lcom/bbm/l/d/d;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/bbm/l/d/d;->c:Lcom/bbm/l/d/d;

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x1f41
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/l/d/d;
    .registers 2

    const-class v0, Lcom/bbm/l/d/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/l/d/d;

    return-object v0
.end method

.method public static values()[Lcom/bbm/l/d/d;
    .registers 1

    sget-object v0, Lcom/bbm/l/d/d;->e:[Lcom/bbm/l/d/d;

    invoke-virtual {v0}, [Lcom/bbm/l/d/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/l/d/d;

    return-object v0
.end method
