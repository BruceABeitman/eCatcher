.class public final enum Lcom/squareup/wire/WireType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/wire/WireType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/wire/WireType;

.field public static final enum b:Lcom/squareup/wire/WireType;

.field public static final enum c:Lcom/squareup/wire/WireType;

.field public static final enum d:Lcom/squareup/wire/WireType;

.field public static final enum e:Lcom/squareup/wire/WireType;

.field public static final enum f:Lcom/squareup/wire/WireType;

.field private static final synthetic g:[Lcom/squareup/wire/WireType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "VARINT"

    invoke-direct {v0, v1, v4, v4}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->a:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "FIXED64"

    invoke-direct {v0, v1, v5, v5}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->b:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "LENGTH_DELIMITED"

    invoke-direct {v0, v1, v6, v6}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->c:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "START_GROUP"

    invoke-direct {v0, v1, v7, v7}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->d:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "END_GROUP"

    invoke-direct {v0, v1, v8, v8}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->e:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "FIXED32"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->f:Lcom/squareup/wire/WireType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/squareup/wire/WireType;

    sget-object v1, Lcom/squareup/wire/WireType;->a:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/wire/WireType;->b:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/wire/WireType;->c:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/wire/WireType;->d:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/squareup/wire/WireType;->e:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/wire/WireType;->f:Lcom/squareup/wire/WireType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/wire/WireType;->g:[Lcom/squareup/wire/WireType;

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

    iput p3, p0, Lcom/squareup/wire/WireType;->value:I

    return-void
.end method

.method public static a(I)Lcom/squareup/wire/WireType;
    .registers 4

    and-int/lit8 v0, p0, 0x7

    packed-switch v0, :pswitch_data_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No WireType for value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    sget-object v0, Lcom/squareup/wire/WireType;->a:Lcom/squareup/wire/WireType;

    :goto_1c
    return-object v0

    :pswitch_1d
    sget-object v0, Lcom/squareup/wire/WireType;->b:Lcom/squareup/wire/WireType;

    goto :goto_1c

    :pswitch_20
    sget-object v0, Lcom/squareup/wire/WireType;->c:Lcom/squareup/wire/WireType;

    goto :goto_1c

    :pswitch_23
    sget-object v0, Lcom/squareup/wire/WireType;->d:Lcom/squareup/wire/WireType;

    goto :goto_1c

    :pswitch_26
    sget-object v0, Lcom/squareup/wire/WireType;->e:Lcom/squareup/wire/WireType;

    goto :goto_1c

    :pswitch_29
    sget-object v0, Lcom/squareup/wire/WireType;->f:Lcom/squareup/wire/WireType;

    goto :goto_1c

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/WireType;
    .registers 2

    const-class v0, Lcom/squareup/wire/WireType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/WireType;

    return-object v0
.end method

.method public static values()[Lcom/squareup/wire/WireType;
    .registers 1

    sget-object v0, Lcom/squareup/wire/WireType;->g:[Lcom/squareup/wire/WireType;

    invoke-virtual {v0}, [Lcom/squareup/wire/WireType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/WireType;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/squareup/wire/WireType;->value:I

    return v0
.end method
