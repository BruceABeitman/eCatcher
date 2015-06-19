.class public Lcom/c/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/b;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "}\"{5cuf-\u0017`rvh,{<k~t}ysx=}yf"

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

    packed-switch v5, :pswitch_data_40

    const/16 v5, 0xf

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

    sput-object v0, Lcom/c/cm;->b:Ljava/lang/String;

    return-void

    :pswitch_35
    const/16 v5, 0x1c

    goto :goto_19

    :pswitch_38
    const/4 v5, 0x2

    goto :goto_19

    :pswitch_3a
    const/16 v5, 0xd

    goto :goto_19

    :pswitch_3d
    const/16 v5, 0x54

    goto :goto_19

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_35
        :pswitch_38
        :pswitch_3a
        :pswitch_3d
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    sget-boolean v0, Lcom/c/ba;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/c/cm;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/c/cm;->a:Landroid/content/Context;

    if-eqz v0, :cond_1f

    :cond_1d
    iput-object p1, p0, Lcom/c/cm;->a:Landroid/content/Context;

    :cond_1f
    sget-boolean v1, Lcom/c/bp;->b:Z

    if-eqz v1, :cond_28

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    :goto_26
    sput-boolean v0, Lcom/c/ba;->a:Z

    :cond_28
    return-void

    :cond_29
    const/4 v0, 0x1

    goto :goto_26
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/c/cm;->a:Landroid/content/Context;

    return-object v0
.end method
