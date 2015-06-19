.class public final Lcom/bbm/h/al;
.super Ljava/lang/Object;
.source "AddContactsModelWrapper.java"


# instance fields
.field a:Lcom/bbm/h/an;

.field b:Lcom/bbm/h/ao;

.field c:Lcom/bbm/iceberg/j;


# direct methods
.method private constructor <init>(Lcom/bbm/h/ao;Lcom/bbm/h/an;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;

    iput-object p2, p0, Lcom/bbm/h/al;->a:Lcom/bbm/h/an;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/iceberg/j;Lcom/bbm/h/an;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/h/al;->c:Lcom/bbm/iceberg/j;

    iput-object p2, p0, Lcom/bbm/h/al;->a:Lcom/bbm/h/an;

    return-void
.end method

.method public static a(Lcom/bbm/h/ao;Lcom/bbm/h/an;)Lcom/bbm/h/al;
    .registers 3

    new-instance v0, Lcom/bbm/h/al;

    invoke-direct {v0, p0, p1}, Lcom/bbm/h/al;-><init>(Lcom/bbm/h/ao;Lcom/bbm/h/an;)V

    return-object v0
.end method

.method public static a(Lcom/bbm/iceberg/j;Lcom/bbm/h/an;)Lcom/bbm/h/al;
    .registers 3

    new-instance v0, Lcom/bbm/h/al;

    invoke-direct {v0, p0, p1}, Lcom/bbm/h/al;-><init>(Lcom/bbm/iceberg/j;Lcom/bbm/h/an;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 5

    const-string v0, ""

    sget-object v1, Lcom/bbm/h/am;->a:[I

    iget-object v2, p0, Lcom/bbm/h/al;->a:Lcom/bbm/h/an;

    invoke-virtual {v2}, Lcom/bbm/h/an;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7a

    :goto_f
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :pswitch_1c
    sget-object v1, Lcom/bbm/h/am;->b:[I

    iget-object v2, p0, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;

    iget-object v2, v2, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;

    invoke-virtual {v2}, Lcom/bbm/h/ap;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8a

    goto :goto_f

    :pswitch_2c
    iget-object v0, p0, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;

    iget-object v0, v0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/d/fn;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;Lcom/bbm/d/gp;Lcom/bbm/d/fn;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :pswitch_45
    iget-object v0, p0, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;

    iget-object v0, v0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/g/t;

    iget-object v0, v0, Lcom/bbm/g/t;->h:Ljava/lang/String;

    goto :goto_f

    :pswitch_4e
    iget-object v0, p0, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;

    iget-object v0, v0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/g/v;

    iget-object v1, v0, Lcom/bbm/g/v;->e:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/bbm/g/v;->e:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lcom/bbm/g/v;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :pswitch_6b
    iget-object v0, p0, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;

    iget-object v0, v0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/b/a;

    iget-object v0, v0, Lcom/bbm/b/a;->g:Ljava/lang/String;

    goto :goto_f

    :pswitch_74
    iget-object v0, p0, Lcom/bbm/h/al;->c:Lcom/bbm/iceberg/j;

    iget-object v0, v0, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    goto :goto_f

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_74
        :pswitch_74
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_45
        :pswitch_4e
        :pswitch_6b
    .end packed-switch
.end method
