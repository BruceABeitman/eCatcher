.class Lcom/c/a/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/a/q;


# static fields
.field private static final j:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/c/bp;

.field private final b:Lcom/c/a/q;

.field private c:Lcom/c/ba;

.field private d:Lcom/c/ba;

.field private e:Lcom/c/a/k;

.field private f:Lcom/c/a/bf;

.field private g:I

.field private h:I

.field private i:Lcom/c/a/cg;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/16 v7, 0x5c

    const/16 v9, 0x4f

    const/16 v8, 0x49

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "9|(!\u0014D0(<\u0004D?,#\u001cI3\'#\tD5=*\u0002\u0005(  \u001eD\u0007"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_c8

    move v2, v3

    :cond_15
    move-object v4, v0

    move v5, v2

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_1a
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_cc

    const/16 v6, 0x70

    :goto_23
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_2f

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1a

    :cond_2f
    move v1, v0

    move-object v0, v4

    :goto_31
    if-gt v1, v2, :cond_15

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v3

    const-string v0, "9|((\u0011\r2:;P\u0008=:;P\r(,=\u0011\u00105&!P?"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_c6

    move v2, v3

    :cond_48
    move-object v4, v0

    move v5, v2

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_4d
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_d8

    const/16 v6, 0x70

    :goto_56
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_62

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_4d

    :cond_62
    move v1, v0

    move-object v0, v4

    :goto_64
    if-gt v1, v2, :cond_48

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v12

    const/4 v6, 0x2

    const-string v0, "\u00074,,\u001b\r2.o\u001c\u000b?(;\u0019\u000b2i&\u0004\u0001.(;\u0019\u000b2i\u0014"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_97

    :cond_7b
    move-object v2, v0

    move v4, v3

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_80
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_e4

    const/16 v5, 0x70

    :goto_89
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_95

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_80

    :cond_95
    move v1, v0

    move-object v0, v2

    :cond_97
    if-gt v1, v3, :cond_7b

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/a/ba;->j:[Ljava/lang/String;

    return-void

    :pswitch_a7
    const/16 v6, 0x64

    goto/16 :goto_23

    :pswitch_ab
    move v6, v7

    goto/16 :goto_23

    :pswitch_ae
    move v6, v8

    goto/16 :goto_23

    :pswitch_b1
    move v6, v9

    goto/16 :goto_23

    :pswitch_b4
    const/16 v6, 0x64

    goto :goto_56

    :pswitch_b7
    move v6, v7

    goto :goto_56

    :pswitch_b9
    move v6, v8

    goto :goto_56

    :pswitch_bb
    move v6, v9

    goto :goto_56

    :pswitch_bd
    const/16 v5, 0x64

    goto :goto_89

    :pswitch_c0
    move v5, v7

    goto :goto_89

    :pswitch_c2
    move v5, v8

    goto :goto_89

    :pswitch_c4
    move v5, v9

    goto :goto_89

    :cond_c6
    move v2, v3

    goto :goto_64

    :cond_c8
    move v2, v3

    goto/16 :goto_31

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_ab
        :pswitch_ae
        :pswitch_b1
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_b7
        :pswitch_b9
        :pswitch_bb
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_bd
        :pswitch_c0
        :pswitch_c2
        :pswitch_c4
    .end packed-switch
.end method

.method constructor <init>(Lcom/c/a/q;Lcom/c/a/k;Lcom/c/a/bf;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/c/a/ba;

    invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/ba;->a:Lcom/c/bp;

    iput-object p1, p0, Lcom/c/a/ba;->b:Lcom/c/a/q;

    iput-object p2, p0, Lcom/c/a/ba;->e:Lcom/c/a/k;

    iput-object p3, p0, Lcom/c/a/ba;->f:Lcom/c/a/bf;

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/ba;->c:Lcom/c/ba;

    iput-object v1, p0, Lcom/c/a/ba;->d:Lcom/c/ba;

    const/4 v0, -0x1

    iput v0, p0, Lcom/c/a/ba;->h:I

    iput v0, p0, Lcom/c/a/ba;->g:I

    iput-object v1, p0, Lcom/c/a/ba;->i:Lcom/c/a/cg;

    return-void
.end method


# virtual methods
.method public a(Lcom/c/a/cg;I)Lcom/c/a/k;
    .registers 4

    invoke-virtual {p1}, Lcom/c/a/cg;->A()Z

    move-result v0

    if-eqz v0, :cond_c

    iput p2, p0, Lcom/c/a/ba;->h:I

    sget-boolean v0, Lcom/c/a/d;->h_:Z

    if-eqz v0, :cond_e

    :cond_c
    iput p2, p0, Lcom/c/a/ba;->g:I

    :cond_e
    invoke-virtual {p0, p1}, Lcom/c/a/ba;->b(Lcom/c/a/o;)Lcom/c/a/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/c/a/r;)Lcom/c/a/k;
    .registers 3

    iget-object v0, p0, Lcom/c/a/ba;->b:Lcom/c/a/q;

    invoke-interface {v0, p1}, Lcom/c/a/q;->a(Lcom/c/a/r;)Lcom/c/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/ba;->e:Lcom/c/a/k;

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/ba;->c:Lcom/c/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/ba;->i:Lcom/c/a/cg;

    iget-object v0, p0, Lcom/c/a/ba;->e:Lcom/c/a/k;

    return-object v0
.end method

.method a(ILcom/c/a/cg;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/c/a/ba;->a:Lcom/c/bp;

    invoke-virtual {v2}, Lcom/c/bp;->b()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/c/a/ba;->a:Lcom/c/bp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/c/a/ba;->j:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/c/a/ba;->j:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/c/a/ba;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/c/a/ba;->j:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/c/a/ba;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_47
    if-nez p2, :cond_54

    iget v2, p0, Lcom/c/a/ba;->g:I

    if-le p1, v2, :cond_52

    iget v2, p0, Lcom/c/a/ba;->h:I

    if-le p1, v2, :cond_52

    :cond_51
    :goto_51
    return v0

    :cond_52
    move v0, v1

    goto :goto_51

    :cond_54
    invoke-virtual {p2}, Lcom/c/a/cg;->A()Z

    move-result v2

    if-eqz v2, :cond_64

    iget v2, p0, Lcom/c/a/ba;->h:I

    if-lt p1, v2, :cond_62

    iget v2, p0, Lcom/c/a/ba;->g:I

    if-gt p1, v2, :cond_51

    :cond_62
    move v0, v1

    goto :goto_51

    :cond_64
    iget v2, p0, Lcom/c/a/ba;->g:I

    if-ge p1, v2, :cond_51

    move v0, v1

    goto :goto_51
.end method

.method b()J
    .registers 3

    iget-object v0, p0, Lcom/c/a/ba;->c:Lcom/c/ba;

    invoke-virtual {v0}, Lcom/c/ba;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lcom/c/a/o;)Lcom/c/a/k;
    .registers 4

    move-object v0, p1

    check-cast v0, Lcom/c/a/cg;

    iput-object v0, p0, Lcom/c/a/ba;->i:Lcom/c/a/cg;

    iget-object v0, p0, Lcom/c/a/ba;->f:Lcom/c/a/bf;

    iget-object v1, p0, Lcom/c/a/ba;->i:Lcom/c/a/cg;

    invoke-virtual {v1}, Lcom/c/a/cg;->w()Lcom/c/a/cg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/a/bf;->a(Lcom/c/a/cg;)V

    iget-object v0, p0, Lcom/c/a/ba;->b:Lcom/c/a/q;

    invoke-interface {v0, p1}, Lcom/c/a/q;->b(Lcom/c/a/o;)Lcom/c/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/ba;->e:Lcom/c/a/k;

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/ba;->d:Lcom/c/ba;

    iput-object v0, p0, Lcom/c/a/ba;->c:Lcom/c/ba;

    iget-object v0, p0, Lcom/c/a/ba;->e:Lcom/c/a/k;

    return-object v0
.end method

.method c()Ljava/lang/Long;
    .registers 3

    iget-object v0, p0, Lcom/c/a/ba;->d:Lcom/c/ba;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/a/ba;->d:Lcom/c/ba;

    invoke-virtual {v0}, Lcom/c/ba;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method d()Lcom/c/a/k;
    .registers 2

    iget-object v0, p0, Lcom/c/a/ba;->e:Lcom/c/a/k;

    return-object v0
.end method

.method e()Lcom/c/a/cg;
    .registers 2

    iget-object v0, p0, Lcom/c/a/ba;->i:Lcom/c/a/cg;

    return-object v0
.end method

.method public q_()V
    .registers 2

    iget-object v0, p0, Lcom/c/a/ba;->b:Lcom/c/a/q;

    invoke-interface {v0}, Lcom/c/a/q;->q_()V

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/ba;->c:Lcom/c/ba;

    return-void
.end method
