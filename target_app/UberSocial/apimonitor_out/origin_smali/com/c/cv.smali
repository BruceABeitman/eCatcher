.class public abstract Lcom/c/cv;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Lcom/c/cv;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, ")\'FE6j5M\u0016b:4G\u0016->?X\u00071"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_27

    :cond_b
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_10
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_44

    const/16 v5, 0x42

    :goto_19
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_25

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_10

    :cond_25
    move v1, v0

    move-object v0, v3

    :cond_27
    if-gt v1, v2, :cond_b

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/cv;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/c/cv;->b:Lcom/c/cv;

    return-void

    :pswitch_38
    const/16 v5, 0x4a

    goto :goto_19

    :pswitch_3b
    const/16 v5, 0x46

    goto :goto_19

    :pswitch_3e
    const/16 v5, 0x28

    goto :goto_19

    :pswitch_41
    const/16 v5, 0x62

    goto :goto_19

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
    .end packed-switch
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/c/cv;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/c/cv;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/c/b;)Lcom/c/cv;
    .registers 2

    sget-object v0, Lcom/c/cv;->b:Lcom/c/cv;

    if-nez v0, :cond_a

    new-instance v0, Lcom/c/cz;

    invoke-direct {v0, p0}, Lcom/c/cz;-><init>(Lcom/c/b;)V

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/c/cv;->b:Lcom/c/cv;

    invoke-virtual {v0, p0}, Lcom/c/cv;->a(Lcom/c/b;)Lcom/c/cv;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method protected abstract a(Lcom/c/b;)Lcom/c/cv;
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract b()V
.end method
