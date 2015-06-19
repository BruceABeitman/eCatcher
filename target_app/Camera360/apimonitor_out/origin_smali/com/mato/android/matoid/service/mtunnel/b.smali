.class public final Lcom/mato/android/matoid/service/mtunnel/b;
.super Lcom/google/a/e;


# static fields
.field public static final a:Lcom/mato/android/matoid/service/mtunnel/b; = null

.field public static final b:Lcom/mato/android/matoid/service/mtunnel/b; = null

.field public static final c:Lcom/mato/android/matoid/service/mtunnel/b; = null

.field public static final d:Lcom/mato/android/matoid/service/mtunnel/b; = null

.field public static final e:Lcom/mato/android/matoid/service/mtunnel/b; = null

.field public static final f:Lcom/mato/android/matoid/service/mtunnel/b; = null

.field private static g:I = 0x0

.field private static h:I = 0x1

.field private static i:I = 0x2

.field private static j:I = 0x3

.field private static k:I = 0x4

.field private static l:I = 0x5

.field private static m:[Lcom/mato/android/matoid/service/mtunnel/b;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/mato/android/matoid/service/mtunnel/b;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v3, v1}, Lcom/mato/android/matoid/service/mtunnel/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->a:Lcom/mato/android/matoid/service/mtunnel/b;

    new-instance v0, Lcom/mato/android/matoid/service/mtunnel/b;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v4, v1}, Lcom/mato/android/matoid/service/mtunnel/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->b:Lcom/mato/android/matoid/service/mtunnel/b;

    new-instance v0, Lcom/mato/android/matoid/service/mtunnel/b;

    const-string/jumbo v1, "MEDIUM"

    invoke-direct {v0, v5, v1}, Lcom/mato/android/matoid/service/mtunnel/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->c:Lcom/mato/android/matoid/service/mtunnel/b;

    new-instance v0, Lcom/mato/android/matoid/service/mtunnel/b;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v6, v1}, Lcom/mato/android/matoid/service/mtunnel/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->d:Lcom/mato/android/matoid/service/mtunnel/b;

    new-instance v0, Lcom/mato/android/matoid/service/mtunnel/b;

    const-string/jumbo v1, "SMART"

    invoke-direct {v0, v7, v1}, Lcom/mato/android/matoid/service/mtunnel/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->e:Lcom/mato/android/matoid/service/mtunnel/b;

    new-instance v0, Lcom/mato/android/matoid/service/mtunnel/b;

    const/4 v1, 0x5

    const-string/jumbo v2, "LOSSLESS"

    invoke-direct {v0, v1, v2}, Lcom/mato/android/matoid/service/mtunnel/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->f:Lcom/mato/android/matoid/service/mtunnel/b;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mato/android/matoid/service/mtunnel/b;

    sget-object v1, Lcom/mato/android/matoid/service/mtunnel/b;->a:Lcom/mato/android/matoid/service/mtunnel/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mato/android/matoid/service/mtunnel/b;->b:Lcom/mato/android/matoid/service/mtunnel/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mato/android/matoid/service/mtunnel/b;->c:Lcom/mato/android/matoid/service/mtunnel/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mato/android/matoid/service/mtunnel/b;->d:Lcom/mato/android/matoid/service/mtunnel/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mato/android/matoid/service/mtunnel/b;->e:Lcom/mato/android/matoid/service/mtunnel/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mato/android/matoid/service/mtunnel/b;->f:Lcom/mato/android/matoid/service/mtunnel/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->m:[Lcom/mato/android/matoid/service/mtunnel/b;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/a/e;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static b(I)Lcom/mato/android/matoid/service/mtunnel/b;
    .registers 3

    packed-switch p0, :pswitch_data_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->a:Lcom/mato/android/matoid/service/mtunnel/b;

    :goto_f
    return-object v0

    :pswitch_10
    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->b:Lcom/mato/android/matoid/service/mtunnel/b;

    goto :goto_f

    :pswitch_13
    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->c:Lcom/mato/android/matoid/service/mtunnel/b;

    goto :goto_f

    :pswitch_16
    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->d:Lcom/mato/android/matoid/service/mtunnel/b;

    goto :goto_f

    :pswitch_19
    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->e:Lcom/mato/android/matoid/service/mtunnel/b;

    goto :goto_f

    :pswitch_1c
    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->f:Lcom/mato/android/matoid/service/mtunnel/b;

    goto :goto_f

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method

.method private static b()[Lcom/mato/android/matoid/service/mtunnel/b;
    .registers 1

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->m:[Lcom/mato/android/matoid/service/mtunnel/b;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/a/e;
    .registers 3

    invoke-static {p1}, Lcom/mato/android/matoid/service/mtunnel/b;->b(I)Lcom/mato/android/matoid/service/mtunnel/b;

    move-result-object v0

    return-object v0
.end method
