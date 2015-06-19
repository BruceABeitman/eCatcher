.class public Lcom/millennialmedia/a/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final A:I = 0x6

.field private static final B:I = 0x7

.field private static final a:[C = null

.field private static final b:J = -0xcccccccccccccccL

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:I = 0x3

.field private static final g:I = 0x4

.field private static final h:I = 0x5

.field private static final i:I = 0x6

.field private static final j:I = 0x7

.field private static final k:I = 0x8

.field private static final l:I = 0x9

.field private static final m:I = 0xa

.field private static final n:I = 0xb

.field private static final o:I = 0xc

.field private static final p:I = 0xd

.field private static final q:I = 0xe

.field private static final r:I = 0xf

.field private static final s:I = 0x10

.field private static final t:I = 0x11

.field private static final u:I = 0x0

.field private static final v:I = 0x1

.field private static final w:I = 0x2

.field private static final x:I = 0x3

.field private static final y:I = 0x4

.field private static final z:I = 0x5


# instance fields
.field private final C:Ljava/io/Reader;

.field private D:Z

.field private final E:[C

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:J

.field private L:I

.field private M:Ljava/lang/String;

.field private N:[I

.field private O:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/a/a/d/a;->a:[C

    new-instance v0, Lcom/millennialmedia/a/a/d/a$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/d/a$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/h;->a:Lcom/millennialmedia/a/a/b/h;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/millennialmedia/a/a/d/a;->D:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    const/4 v2, 0x6

    aput v2, v0, v1

    if-nez p1, :cond_33

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iput-object p1, p0, Lcom/millennialmedia/a/a/d/a;->C:Ljava/io/Reader;

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/a/a/d/a;)I
    .registers 2

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    return v0
.end method

.method static synthetic a(Lcom/millennialmedia/a/a/d/a;I)I
    .registers 2

    iput p1, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    return p1
.end method

.method private a(I)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    array-length v1, v1

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    :cond_17
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    aput p1, v0, v1

    return-void
.end method

.method private a(C)Z
    .registers 3

    sparse-switch p1, :sswitch_data_a

    const/4 v0, 0x1

    :goto_4
    return v0

    :sswitch_5
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    :sswitch_8
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_data_a
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_5
        0x2c -> :sswitch_8
        0x2f -> :sswitch_5
        0x3a -> :sswitch_8
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x5b -> :sswitch_8
        0x5c -> :sswitch_5
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    :goto_1
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-le v0, v2, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_16
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_33

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    :cond_2c
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    goto :goto_1

    :cond_33
    move v0, v1

    :goto_34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4a

    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_4a
    const/4 v1, 0x1

    :cond_4b
    return v1
.end method

.method static synthetic b(Lcom/millennialmedia/a/a/d/a;)I
    .registers 2

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    return v0
.end method

.method private b(Z)I
    .registers 7

    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    :goto_6
    if-ne v1, v0, :cond_42

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_3e

    if-eqz p1, :cond_cd

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End of input at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    :cond_42
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_54

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    move v1, v2

    goto :goto_6

    :cond_54
    const/16 v4, 0x20

    if-eq v1, v4, :cond_cf

    const/16 v4, 0xd

    if-eq v1, v4, :cond_cf

    const/16 v4, 0x9

    if-ne v1, v4, :cond_62

    move v1, v2

    goto :goto_6

    :cond_62
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_b7

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    if-ne v2, v0, :cond_7f

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    if-nez v0, :cond_7f

    move v0, v1

    :goto_7e
    return v0

    :cond_7f
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    aget-char v0, v3, v0

    sparse-switch v0, :sswitch_data_d2

    move v0, v1

    goto :goto_7e

    :sswitch_8b
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_a0
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    goto/16 :goto_6

    :sswitch_a8
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->x()V

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    goto/16 :goto_6

    :cond_b7
    const/16 v0, 0x23

    if-ne v1, v0, :cond_c9

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->x()V

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    goto/16 :goto_6

    :cond_c9
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    move v0, v1

    goto :goto_7e

    :cond_cd
    const/4 v0, -0x1

    goto :goto_7e

    :cond_cf
    move v1, v2

    goto/16 :goto_6

    :sswitch_data_d2
    .sparse-switch
        0x2a -> :sswitch_8b
        0x2f -> :sswitch_a8
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5

    new-instance v0, Lcom/millennialmedia/a/a/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/d/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(C)Ljava/lang/String;
    .registers 9

    iget-object v4, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :cond_7
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    move v3, v0

    :goto_c
    if-ge v3, v1, :cond_4a

    add-int/lit8 v2, v3, 0x1

    aget-char v3, v4, v3

    if-ne v3, p1, :cond_22

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_3d

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->y()C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    move v2, v0

    :cond_3b
    :goto_3b
    move v3, v2

    goto :goto_c

    :cond_3d
    const/16 v6, 0xa

    if-ne v3, v6, :cond_3b

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    goto :goto_3b

    :cond_4a
    sub-int v1, v3, v0

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v3, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private b(I)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    if-eq v2, v3, :cond_5b

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1e
    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    :cond_20
    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->C:Ljava/io/Reader;

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    array-length v4, v1

    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5a

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    if-nez v2, :cond_55

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    if-nez v2, :cond_55

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-lez v2, :cond_55

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_55

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    add-int/lit8 p1, p1, 0x1

    :cond_55
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-lt v2, p1, :cond_20

    const/4 v0, 0x1

    :cond_5a
    return v0

    :cond_5b
    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    goto :goto_1e
.end method

.method static synthetic c(Lcom/millennialmedia/a/a/d/a;)I
    .registers 2

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v0

    return v0
.end method

.method private c(C)V
    .registers 7

    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    :cond_2
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_2e

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    if-ne v2, p1, :cond_12

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    return-void

    :cond_12
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_21

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->y()C

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    :cond_1f
    :goto_1f
    move v2, v1

    goto :goto_7

    :cond_21
    const/16 v4, 0xa

    if-ne v2, v4, :cond_1f

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    goto :goto_1f

    :cond_2e
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method static synthetic d(Lcom/millennialmedia/a/a/d/a;)I
    .registers 2

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v0

    return v0
.end method

.method private o()I
    .registers 9

    const/4 v3, 0x7

    const/4 v7, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-ne v4, v2, :cond_32

    iget-object v5, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v6, v6, -0x1

    aput v1, v5, v6

    :cond_17
    :goto_17
    :pswitch_17
    :sswitch_17
    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v5

    sparse-switch v5, :sswitch_data_180

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    if-ne v0, v2, :cond_2b

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    :cond_2b
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->q()I

    move-result v0

    if-eqz v0, :cond_15d

    :cond_31
    :goto_31
    return v0

    :cond_32
    if-ne v4, v1, :cond_49

    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v5

    sparse-switch v5, :sswitch_data_19e

    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_42
    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto :goto_31

    :sswitch_45
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    goto :goto_17

    :cond_49
    const/4 v5, 0x3

    if-eq v4, v5, :cond_4e

    if-ne v4, v7, :cond_aa

    :cond_4e
    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v3, v5

    if-ne v4, v7, :cond_6d

    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1ac

    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_66
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    move v0, v1

    goto :goto_31

    :sswitch_6a
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    :cond_6d
    :sswitch_6d
    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1ba

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_a3

    const/16 v0, 0xe

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto :goto_31

    :sswitch_89
    const/16 v0, 0xd

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto :goto_31

    :sswitch_8e
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto :goto_31

    :sswitch_96
    if-eq v4, v7, :cond_9c

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    move v0, v1

    goto :goto_31

    :cond_9c
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_a3
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_aa
    if-ne v4, v0, :cond_e3

    iget-object v5, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v5, v6

    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v5

    packed-switch v5, :pswitch_data_1c8

    :pswitch_bb
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_c2
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-lt v5, v6, :cond_d1

    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_d1
    iget-object v5, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    aget-char v5, v5, v6

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_17

    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    goto/16 :goto_17

    :cond_e3
    const/4 v5, 0x6

    if-ne v4, v5, :cond_f7

    iget-boolean v5, p0, Lcom/millennialmedia/a/a/d/a;->D:Z

    if-eqz v5, :cond_ed

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->z()V

    :cond_ed
    iget-object v5, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v6, v6, -0x1

    aput v3, v5, v6

    goto/16 :goto_17

    :cond_f7
    if-ne v4, v3, :cond_112

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_107

    const/16 v0, 0x11

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto/16 :goto_31

    :cond_107
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    goto/16 :goto_17

    :cond_112
    const/16 v5, 0x8

    if-ne v4, v5, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_11e
    if-ne v4, v2, :cond_124

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto/16 :goto_31

    :cond_124
    :sswitch_124
    if-eq v4, v2, :cond_128

    if-ne v4, v1, :cond_136

    :cond_128
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iput v3, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    move v0, v3

    goto/16 :goto_31

    :cond_136
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_13d
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto/16 :goto_31

    :sswitch_146
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    if-ne v0, v2, :cond_14d

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    :cond_14d
    const/16 v0, 0x9

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto/16 :goto_31

    :sswitch_153
    const/4 v0, 0x3

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto/16 :goto_31

    :sswitch_158
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    move v0, v2

    goto/16 :goto_31

    :cond_15d
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->r()I

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->a(C)Z

    move-result v0

    if-nez v0, :cond_176

    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_176
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto/16 :goto_31

    nop

    :sswitch_data_180
    .sparse-switch
        0x22 -> :sswitch_146
        0x27 -> :sswitch_13d
        0x2c -> :sswitch_124
        0x3b -> :sswitch_124
        0x5b -> :sswitch_153
        0x5d -> :sswitch_11e
        0x7b -> :sswitch_158
    .end sparse-switch

    :sswitch_data_19e
    .sparse-switch
        0x2c -> :sswitch_17
        0x3b -> :sswitch_45
        0x5d -> :sswitch_42
    .end sparse-switch

    :sswitch_data_1ac
    .sparse-switch
        0x2c -> :sswitch_6d
        0x3b -> :sswitch_6a
        0x7d -> :sswitch_66
    .end sparse-switch

    :sswitch_data_1ba
    .sparse-switch
        0x22 -> :sswitch_89
        0x27 -> :sswitch_8e
        0x7d -> :sswitch_96
    .end sparse-switch

    :pswitch_data_1c8
    .packed-switch 0x3a
        :pswitch_17
        :pswitch_bb
        :pswitch_bb
        :pswitch_c2
    .end packed-switch
.end method

.method private q()I
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_f

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2c

    :cond_f
    const-string v2, "true"

    const-string v1, "TRUE"

    const/4 v0, 0x5

    :goto_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x1

    :goto_19
    if-ge v4, v5, :cond_62

    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-lt v6, v7, :cond_4a

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v6

    if-nez v6, :cond_4a

    move v0, v3

    :goto_2b
    return v0

    :cond_2c
    const/16 v1, 0x66

    if-eq v0, v1, :cond_34

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3a

    :cond_34
    const-string v2, "false"

    const-string v1, "FALSE"

    const/4 v0, 0x6

    goto :goto_14

    :cond_3a
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_42

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_48

    :cond_42
    const-string v2, "null"

    const-string v1, "NULL"

    const/4 v0, 0x7

    goto :goto_14

    :cond_48
    move v0, v3

    goto :goto_2b

    :cond_4a
    iget-object v6, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v7, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    move v0, v3

    goto :goto_2b

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_62
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v1, v5

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-lt v1, v2, :cond_71

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_80

    :cond_71
    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lcom/millennialmedia/a/a/d/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_80

    move v0, v3

    goto :goto_2b

    :cond_80
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto :goto_2b
.end method

.method private r()I
    .registers 20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/a/a/d/a;->E:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/millennialmedia/a/a/d/a;->F:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/millennialmedia/a/a/d/a;->G:I

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v11, v1

    move v1, v2

    move v2, v3

    :goto_15
    add-int v3, v2, v11

    if-ne v3, v1, :cond_53

    array-length v1, v12

    if-ne v11, v1, :cond_1e

    const/4 v1, 0x0

    :goto_1d
    return v1

    :cond_1e
    add-int/lit8 v1, v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_4b

    :cond_28
    const/4 v1, 0x2

    if-ne v4, v1, :cond_113

    if-eqz v5, :cond_113

    const-wide/high16 v1, -0x8000

    cmp-long v1, v7, v1

    if-nez v1, :cond_35

    if-eqz v6, :cond_113

    :cond_35
    if-eqz v6, :cond_110

    :goto_37
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/millennialmedia/a/a/d/a;->K:J

    move-object/from16 v0, p0

    iget v1, v0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v1, v11

    move-object/from16 v0, p0

    iput v1, v0, Lcom/millennialmedia/a/a/d/a;->F:I

    const/16 v1, 0xf

    move-object/from16 v0, p0

    iput v1, v0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto :goto_1d

    :cond_4b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/millennialmedia/a/a/d/a;->F:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/millennialmedia/a/a/d/a;->G:I

    :cond_53
    add-int v3, v2, v11

    aget-char v3, v12, v3

    sparse-switch v3, :sswitch_data_132

    const/16 v9, 0x30

    if-lt v3, v9, :cond_62

    const/16 v9, 0x39

    if-le v3, v9, :cond_b7

    :cond_62
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/millennialmedia/a/a/d/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    goto :goto_1d

    :sswitch_6c
    if-nez v4, :cond_86

    const/4 v4, 0x1

    const/4 v3, 0x1

    move v15, v5

    move v5, v4

    move v4, v15

    move-wide/from16 v16, v7

    move-wide/from16 v6, v16

    :goto_77
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    move v15, v4

    move v4, v3

    move/from16 v16, v5

    move v5, v15

    move-wide/from16 v17, v6

    move-wide/from16 v7, v17

    move/from16 v6, v16

    goto :goto_15

    :cond_86
    const/4 v3, 0x5

    if-ne v4, v3, :cond_8f

    const/4 v3, 0x6

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto :goto_77

    :cond_8f
    const/4 v1, 0x0

    goto :goto_1d

    :sswitch_91
    const/4 v3, 0x5

    if-ne v4, v3, :cond_9a

    const/4 v3, 0x6

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto :goto_77

    :cond_9a
    const/4 v1, 0x0

    goto :goto_1d

    :sswitch_9c
    const/4 v3, 0x2

    if-eq v4, v3, :cond_a2

    const/4 v3, 0x4

    if-ne v4, v3, :cond_a8

    :cond_a2
    const/4 v3, 0x5

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto :goto_77

    :cond_a8
    const/4 v1, 0x0

    goto/16 :goto_1d

    :sswitch_ab
    const/4 v3, 0x2

    if-ne v4, v3, :cond_b4

    const/4 v3, 0x3

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto :goto_77

    :cond_b4
    const/4 v1, 0x0

    goto/16 :goto_1d

    :cond_b7
    const/4 v9, 0x1

    if-eq v4, v9, :cond_bc

    if-nez v4, :cond_c6

    :cond_bc
    add-int/lit8 v3, v3, -0x30

    neg-int v3, v3

    int-to-long v7, v3

    const/4 v3, 0x2

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto :goto_77

    :cond_c6
    const/4 v9, 0x2

    if-ne v4, v9, :cond_f9

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_d2

    const/4 v1, 0x0

    goto/16 :goto_1d

    :cond_d2
    const-wide/16 v9, 0xa

    mul-long/2addr v9, v7

    add-int/lit8 v3, v3, -0x30

    int-to-long v13, v3

    sub-long/2addr v9, v13

    const-wide v13, -0xcccccccccccccccL

    cmp-long v3, v7, v13

    if-gtz v3, :cond_ef

    const-wide v13, -0xcccccccccccccccL

    cmp-long v3, v7, v13

    if-nez v3, :cond_f7

    cmp-long v3, v9, v7

    if-gez v3, :cond_f7

    :cond_ef
    const/4 v3, 0x1

    :goto_f0
    and-int/2addr v3, v5

    move v5, v6

    move-wide v6, v9

    move v15, v4

    move v4, v3

    move v3, v15

    goto :goto_77

    :cond_f7
    const/4 v3, 0x0

    goto :goto_f0

    :cond_f9
    const/4 v3, 0x3

    if-ne v4, v3, :cond_103

    const/4 v3, 0x4

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto/16 :goto_77

    :cond_103
    const/4 v3, 0x5

    if-eq v4, v3, :cond_109

    const/4 v3, 0x6

    if-ne v4, v3, :cond_12b

    :cond_109
    const/4 v3, 0x7

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto/16 :goto_77

    :cond_110
    neg-long v7, v7

    goto/16 :goto_37

    :cond_113
    const/4 v1, 0x2

    if-eq v4, v1, :cond_11c

    const/4 v1, 0x4

    if-eq v4, v1, :cond_11c

    const/4 v1, 0x7

    if-ne v4, v1, :cond_128

    :cond_11c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/millennialmedia/a/a/d/a;->L:I

    const/16 v1, 0x10

    move-object/from16 v0, p0

    iput v1, v0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto/16 :goto_1d

    :cond_128
    const/4 v1, 0x0

    goto/16 :goto_1d

    :cond_12b
    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto/16 :goto_77

    :sswitch_data_132
    .sparse-switch
        0x2b -> :sswitch_91
        0x2d -> :sswitch_6c
        0x2e -> :sswitch_ab
        0x45 -> :sswitch_9c
        0x65 -> :sswitch_9c
    .end sparse-switch
.end method

.method private s()Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_3
    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-ge v3, v4, :cond_2b

    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v4, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_64

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :sswitch_17
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    :cond_1a
    :goto_1a
    :sswitch_1a
    if-nez v0, :cond_55

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_25
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    return-object v0

    :cond_2b
    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    array-length v3, v3

    if-ge v1, v3, :cond_39

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_3

    :cond_39
    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_40
    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v4, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_61

    move v1, v2

    goto :goto_1a

    :cond_55
    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_61
    move v1, v2

    goto :goto_3

    nop

    :sswitch_data_64
    .sparse-switch
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xc -> :sswitch_1a
        0xd -> :sswitch_1a
        0x20 -> :sswitch_1a
        0x23 -> :sswitch_17
        0x2c -> :sswitch_1a
        0x2f -> :sswitch_17
        0x3a -> :sswitch_1a
        0x3b -> :sswitch_17
        0x3d -> :sswitch_17
        0x5b -> :sswitch_1a
        0x5c -> :sswitch_17
        0x5d -> :sswitch_1a
        0x7b -> :sswitch_1a
        0x7d -> :sswitch_1a
    .end sparse-switch
.end method

.method private t()V
    .registers 4

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-ge v1, v2, :cond_1e

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_15
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    :sswitch_18
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    :goto_1d
    return-void

    :cond_1e
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1d

    nop

    :sswitch_data_2c
    .sparse-switch
        0x9 -> :sswitch_18
        0xa -> :sswitch_18
        0xc -> :sswitch_18
        0xd -> :sswitch_18
        0x20 -> :sswitch_18
        0x23 -> :sswitch_15
        0x2c -> :sswitch_18
        0x2f -> :sswitch_15
        0x3a -> :sswitch_18
        0x3b -> :sswitch_15
        0x3d -> :sswitch_15
        0x5b -> :sswitch_18
        0x5c -> :sswitch_15
        0x5d -> :sswitch_18
        0x7b -> :sswitch_18
        0x7d -> :sswitch_18
    .end sparse-switch
.end method

.method private u()I
    .registers 2

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private v()I
    .registers 3

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private w()V
    .registers 2

    iget-boolean v0, p0, Lcom/millennialmedia/a/a/d/a;->D:Z

    if-nez v0, :cond_b

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b
    return-void
.end method

.method private x()V
    .registers 4

    :cond_0
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_d
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_26

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_25
.end method

.method private y()C
    .registers 8

    const/4 v5, 0x4

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_be

    :goto_22
    return v0

    :sswitch_23
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-le v0, v1, :cond_38

    invoke-direct {p0, v5}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_38
    const/4 v1, 0x0

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_40
    if-ge v1, v2, :cond_98

    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    aget-char v3, v3, v1

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_58

    const/16 v4, 0x39

    if-gt v3, v4, :cond_58

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_58
    const/16 v4, 0x61

    if-lt v3, v4, :cond_67

    const/16 v4, 0x66

    if-gt v3, v4, :cond_67

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_55

    :cond_67
    const/16 v4, 0x41

    if-lt v3, v4, :cond_76

    const/16 v4, 0x46

    if-gt v3, v4, :cond_76

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_55

    :cond_76
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v4, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    goto :goto_22

    :sswitch_9f
    const/16 v0, 0x9

    goto :goto_22

    :sswitch_a2
    const/16 v0, 0x8

    goto/16 :goto_22

    :sswitch_a6
    const/16 v0, 0xa

    goto/16 :goto_22

    :sswitch_aa
    const/16 v0, 0xd

    goto/16 :goto_22

    :sswitch_ae
    const/16 v0, 0xc

    goto/16 :goto_22

    :sswitch_b2
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->H:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->I:I

    goto/16 :goto_22

    :sswitch_data_be
    .sparse-switch
        0xa -> :sswitch_b2
        0x62 -> :sswitch_a2
        0x66 -> :sswitch_ae
        0x6e -> :sswitch_a6
        0x72 -> :sswitch_aa
        0x74 -> :sswitch_9f
        0x75 -> :sswitch_23
    .end sparse-switch
.end method

.method private z()V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    sget-object v1, Lcom/millennialmedia/a/a/d/a;->a:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->G:I

    if-le v0, v1, :cond_1e

    sget-object v0, Lcom/millennialmedia/a/a/d/a;->a:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    sget-object v1, Lcom/millennialmedia/a/a/d/a;->a:[C

    array-length v1, v1

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/millennialmedia/a/a/d/a;->a:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_34
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    sget-object v1, Lcom/millennialmedia/a/a/d/a;->a:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    goto :goto_1d
.end method


# virtual methods
.method public a()V
    .registers 4

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/millennialmedia/a/a/d/a;->D:Z

    return-void
.end method

.method public b()V
    .registers 4

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .registers 4

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->N:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->C:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .registers 4

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .registers 3

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public f()Lcom/millennialmedia/a/a/d/c;
    .registers 2

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_8
    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_11
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->c:Lcom/millennialmedia/a/a/d/c;

    :goto_13
    return-object v0

    :pswitch_14
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->d:Lcom/millennialmedia/a/a/d/c;

    goto :goto_13

    :pswitch_17
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:Lcom/millennialmedia/a/a/d/c;

    goto :goto_13

    :pswitch_1a
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->b:Lcom/millennialmedia/a/a/d/c;

    goto :goto_13

    :pswitch_1d
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->e:Lcom/millennialmedia/a/a/d/c;

    goto :goto_13

    :pswitch_20
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->h:Lcom/millennialmedia/a/a/d/c;

    goto :goto_13

    :pswitch_23
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;

    goto :goto_13

    :pswitch_26
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->f:Lcom/millennialmedia/a/a/d/c;

    goto :goto_13

    :pswitch_29
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->g:Lcom/millennialmedia/a/a/d/c;

    goto :goto_13

    :pswitch_2c
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->j:Lcom/millennialmedia/a/a/d/c;

    goto :goto_13

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_20
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_29
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_14

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->s()Ljava/lang/String;

    move-result-object v0

    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    return-object v0

    :cond_14
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1f

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_1f
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2a

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_14

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->s()Ljava/lang/String;

    move-result-object v0

    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    return-object v0

    :cond_14
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1f

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_1f
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2a

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_2a
    const/16 v1, 0xb

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    goto :goto_10

    :cond_34
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3f

    iget-wide v0, p0, Lcom/millennialmedia/a/a/d/a;->K:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_3f
    const/16 v1, 0x10

    if-ne v0, v1, :cond_56

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->L:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->L:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    goto :goto_10

    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v1

    :cond_9
    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v2, 0x6

    if-ne v1, v2, :cond_16

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto :goto_f

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .registers 4

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()D
    .registers 7

    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_17

    iput v4, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    iget-wide v0, p0, Lcom/millennialmedia/a/a/d/a;->K:J

    long-to-double v0, v0

    :goto_16
    return-wide v0

    :cond_17
    const/16 v1, 0x10

    if-ne v0, v1, :cond_7c

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->L:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->L:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    :cond_2f
    :goto_2f
    iput v5, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v2, p0, Lcom/millennialmedia/a/a/d/a;->D:Z

    if-nez v2, :cond_d6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_47

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_d6

    :cond_47
    new-instance v2, Lcom/millennialmedia/a/a/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/millennialmedia/a/a/d/e;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7c
    if-eq v0, v2, :cond_82

    const/16 v1, 0x9

    if-ne v0, v1, :cond_90

    :cond_82
    if-ne v0, v2, :cond_8d

    const/16 v0, 0x27

    :goto_86
    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    goto :goto_2f

    :cond_8d
    const/16 v0, 0x22

    goto :goto_86

    :cond_90
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9b

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    goto :goto_2f

    :cond_9b
    if-eq v0, v5, :cond_2f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    iput v4, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto/16 :goto_16
.end method

.method public l()J
    .registers 8

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_b
    const/16 v1, 0xf

    if-ne v0, v1, :cond_14

    iput v6, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    iget-wide v0, p0, Lcom/millennialmedia/a/a/d/a;->K:J

    :goto_13
    return-wide v0

    :cond_14
    const/16 v1, 0x10

    if-ne v0, v1, :cond_73

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->L:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->L:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    :goto_2c
    const/16 v0, 0xb

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v0, v2

    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_cb

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    if-eq v0, v2, :cond_79

    const/16 v1, 0x9

    if-ne v0, v1, :cond_92

    :cond_79
    if-ne v0, v2, :cond_8f

    const/16 v0, 0x27

    :goto_7d
    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    :try_start_83
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->J:I
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_83 .. :try_end_8c} :catch_8d

    goto :goto_13

    :catch_8d
    move-exception v0

    goto :goto_2c

    :cond_8f
    const/16 v0, 0x22

    goto :goto_7d

    :cond_92
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cb
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    iput v6, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto/16 :goto_13
.end method

.method public m()I
    .registers 7

    const/16 v2, 0x8

    const/4 v5, 0x0

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    :cond_b
    const/16 v1, 0xf

    if-ne v0, v1, :cond_53

    iget-wide v0, p0, Lcom/millennialmedia/a/a/d/a;->K:J

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/millennialmedia/a/a/d/a;->K:J

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_50

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/millennialmedia/a/a/d/a;->K:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    iput v5, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    :goto_52
    return v0

    :cond_53
    const/16 v1, 0x10

    if-ne v0, v1, :cond_b2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->E:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->L:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->L:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    :goto_6b
    const/16 v0, 0xb

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v0, v1

    int-to-double v3, v0

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_10a

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b2
    if-eq v0, v2, :cond_b8

    const/16 v1, 0x9

    if-ne v0, v1, :cond_d1

    :cond_b8
    if-ne v0, v2, :cond_ce

    const/16 v0, 0x27

    :goto_bc
    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    :try_start_c2
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->J:I
    :try_end_cb
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_cb} :catch_cc

    goto :goto_52

    :catch_cc
    move-exception v0

    goto :goto_6b

    :cond_ce
    const/16 v0, 0x22

    goto :goto_bc

    :cond_d1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/a/a/d/a;->M:Ljava/lang/String;

    iput v5, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    goto/16 :goto_52
.end method

.method public n()V
    .registers 7

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_4
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v2, :cond_c

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v2

    :cond_c
    if-ne v2, v5, :cond_18

    invoke-direct {p0, v4}, Lcom/millennialmedia/a/a/d/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_13
    :goto_13
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->J:I

    if-nez v0, :cond_4

    return-void

    :cond_18
    if-ne v2, v4, :cond_20

    invoke-direct {p0, v5}, Lcom/millennialmedia/a/a/d/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_20
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2c

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_2c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_38

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->O:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_38
    const/16 v3, 0xe

    if-eq v2, v3, :cond_40

    const/16 v3, 0xa

    if-ne v2, v3, :cond_44

    :cond_40
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->t()V

    goto :goto_13

    :cond_44
    const/16 v3, 0x8

    if-eq v2, v3, :cond_4c

    const/16 v3, 0xc

    if-ne v2, v3, :cond_52

    :cond_4c
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->c(C)V

    goto :goto_13

    :cond_52
    const/16 v3, 0x9

    if-eq v2, v3, :cond_5a

    const/16 v3, 0xd

    if-ne v2, v3, :cond_60

    :cond_5a
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->c(C)V

    goto :goto_13

    :cond_60
    const/16 v3, 0x10

    if-ne v2, v3, :cond_13

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->L:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->F:I

    goto :goto_13
.end method

.method public final p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/millennialmedia/a/a/d/a;->D:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
