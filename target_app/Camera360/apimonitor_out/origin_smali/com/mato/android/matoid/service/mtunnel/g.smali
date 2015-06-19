.class public final Lcom/mato/android/matoid/service/mtunnel/g;
.super Lcom/google/a/e;


# static fields
.field public static final a:Lcom/mato/android/matoid/service/mtunnel/g; = null

.field public static final b:Lcom/mato/android/matoid/service/mtunnel/g; = null

.field public static final c:Lcom/mato/android/matoid/service/mtunnel/g; = null

.field private static d:I = 0x0

.field private static e:I = 0x1

.field private static f:I = 0x2

.field private static g:[Lcom/mato/android/matoid/service/mtunnel/g;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mato/android/matoid/service/mtunnel/g;

    const-string/jumbo v1, "WEBP_NONE"

    invoke-direct {v0, v2, v1}, Lcom/mato/android/matoid/service/mtunnel/g;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->a:Lcom/mato/android/matoid/service/mtunnel/g;

    new-instance v0, Lcom/mato/android/matoid/service/mtunnel/g;

    const-string/jumbo v1, "WEBP_NOALPHA"

    invoke-direct {v0, v3, v1}, Lcom/mato/android/matoid/service/mtunnel/g;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->b:Lcom/mato/android/matoid/service/mtunnel/g;

    new-instance v0, Lcom/mato/android/matoid/service/mtunnel/g;

    const-string/jumbo v1, "WEBP_ALL"

    invoke-direct {v0, v4, v1}, Lcom/mato/android/matoid/service/mtunnel/g;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->c:Lcom/mato/android/matoid/service/mtunnel/g;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mato/android/matoid/service/mtunnel/g;

    sget-object v1, Lcom/mato/android/matoid/service/mtunnel/g;->a:Lcom/mato/android/matoid/service/mtunnel/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mato/android/matoid/service/mtunnel/g;->b:Lcom/mato/android/matoid/service/mtunnel/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mato/android/matoid/service/mtunnel/g;->c:Lcom/mato/android/matoid/service/mtunnel/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->g:[Lcom/mato/android/matoid/service/mtunnel/g;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/a/e;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static b(I)Lcom/mato/android/matoid/service/mtunnel/g;
    .registers 3

    packed-switch p0, :pswitch_data_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->a:Lcom/mato/android/matoid/service/mtunnel/g;

    :goto_f
    return-object v0

    :pswitch_10
    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->b:Lcom/mato/android/matoid/service/mtunnel/g;

    goto :goto_f

    :pswitch_13
    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->c:Lcom/mato/android/matoid/service/mtunnel/g;

    goto :goto_f

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public static b()[Lcom/mato/android/matoid/service/mtunnel/g;
    .registers 1

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->g:[Lcom/mato/android/matoid/service/mtunnel/g;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/a/e;
    .registers 3

    invoke-static {p1}, Lcom/mato/android/matoid/service/mtunnel/g;->b(I)Lcom/mato/android/matoid/service/mtunnel/g;

    move-result-object v0

    return-object v0
.end method
