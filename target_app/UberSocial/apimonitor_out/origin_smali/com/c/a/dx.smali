.class Lcom/c/a/dx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field static final synthetic a:Z

.field private static final e:Ljava/lang/String;


# instance fields
.field private final b:J

.field private final c:I

.field private final d:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "r-<J^k6;jC?)\'|D?&7/Wm!3{Umd&gQqd(jBp~r"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_4e

    move v4, v1

    :cond_c
    move-object v5, v2

    move v6, v4

    move v9, v3

    move-object v3, v2

    move v2, v9

    :goto_11
    aget-char v8, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_50

    const/16 v7, 0x30

    :goto_1a
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_26

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_11

    :cond_26
    move v3, v2

    move-object v2, v5

    :goto_28
    if-gt v3, v4, :cond_c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/c/a/dx;->e:Ljava/lang/String;

    const-class v2, Lcom/c/a/dx;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_40

    :goto_3d
    sput-boolean v0, Lcom/c/a/dx;->a:Z

    return-void

    :cond_40
    move v0, v1

    goto :goto_3d

    :pswitch_42
    const/16 v7, 0x1f

    goto :goto_1a

    :pswitch_45
    const/16 v7, 0x44

    goto :goto_1a

    :pswitch_48
    const/16 v7, 0x52

    goto :goto_1a

    :pswitch_4b
    const/16 v7, 0xf

    goto :goto_1a

    :cond_4e
    move v4, v1

    goto :goto_28

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
    .end packed-switch
.end method

.method constructor <init>(JI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p3, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/a/dx;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iput-wide p1, p0, Lcom/c/a/dx;->b:J

    iput p3, p0, Lcom/c/a/dx;->c:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/c/a/dx;->d:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget-object v0, p0, Lcom/c/a/dx;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method a(JILcom/c/ba;)Ljava/lang/Iterable;
    .registers 12

    if-gtz p3, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/a/dx;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v6, p0, Lcom/c/a/dx;->d:Ljava/util/LinkedList;

    new-instance v0, Lcom/c/a/v;

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/c/a/v;-><init>(Lcom/c/a/dx;ILcom/c/ba;J)V

    invoke-static {v6, v0}, Lcom/c/br;->b(Ljava/lang/Iterable;Lcom/c/y;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/c/ap;)V
    .registers 4

    iget-object v0, p0, Lcom/c/a/dx;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/c/a/dx;->a:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/c/a/dx;->d:Ljava/util/LinkedList;

    sget-object v1, Lcom/c/ap;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_19
    return-void
.end method

.method a(Lcom/c/ba;)V
    .registers 9

    sget-boolean v2, Lcom/c/a/d;->h_:Z

    const/4 v0, 0x0

    move-object v1, v0

    :goto_4
    iget-object v0, p0, Lcom/c/a/dx;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v3, p0, Lcom/c/a/dx;->c:I

    if-lt v0, v3, :cond_2f

    iget-object v0, p0, Lcom/c/a/dx;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/ap;

    invoke-interface {v0}, Lcom/c/ap;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/c/ba;->a(Lcom/c/ba;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/c/a/dx;->b:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2f

    iget-object v0, p0, Lcom/c/a/dx;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/ap;

    if-eqz v2, :cond_37

    move-object v1, v0

    :cond_2f
    if-eqz v1, :cond_36

    iget-object v0, p0, Lcom/c/a/dx;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_36
    return-void

    :cond_37
    move-object v1, v0

    goto :goto_4
.end method

.method b()V
    .registers 2

    iget-object v0, p0, Lcom/c/a/dx;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/c/a/dx;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
