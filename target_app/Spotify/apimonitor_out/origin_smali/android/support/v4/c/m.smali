.class public Landroid/support/v4/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static b:[Ljava/lang/Object;

.field static c:I

.field static d:[Ljava/lang/Object;

.field static e:I


# instance fields
.field f:[I

.field g:[Ljava/lang/Object;

.field h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/c/b;->a:[I

    iput-object v0, p0, Landroid/support/v4/c/m;->f:[I

    sget-object v0, Landroid/support/v4/c/b;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/c/m;->h:I

    return-void
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .registers 7

    const/16 v2, 0xa

    const/4 v3, 0x2

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_30

    const-class v1, Landroid/support/v4/c/a;

    monitor-enter v1

    :try_start_b
    sget v0, Landroid/support/v4/c/m;->e:I

    if-ge v0, v2, :cond_2b

    const/4 v0, 0x0

    sget-object v2, Landroid/support/v4/c/m;->d:[Ljava/lang/Object;

    aput-object v2, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-lt v0, v3, :cond_23

    const/4 v2, 0x0

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_23
    sput-object p1, Landroid/support/v4/c/m;->d:[Ljava/lang/Object;

    sget v0, Landroid/support/v4/c/m;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/c/m;->e:I

    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2d

    :cond_2c
    :goto_2c
    return-void

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_30
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    const-class v1, Landroid/support/v4/c/a;

    monitor-enter v1

    :try_start_37
    sget v0, Landroid/support/v4/c/m;->c:I

    if-ge v0, v2, :cond_57

    const/4 v0, 0x0

    sget-object v2, Landroid/support/v4/c/m;->b:[Ljava/lang/Object;

    aput-object v2, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_47
    if-lt v0, v3, :cond_4f

    const/4 v2, 0x0

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    :cond_4f
    sput-object p1, Landroid/support/v4/c/m;->b:[Ljava/lang/Object;

    sget v0, Landroid/support/v4/c/m;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/c/m;->c:I

    :cond_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_37 .. :try_end_58} :catchall_59

    goto :goto_2c

    :catchall_59
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d(I)V
    .registers 7

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3b

    const-class v1, Landroid/support/v4/c/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Landroid/support/v4/c/m;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_2c

    sget-object v2, Landroid/support/v4/c/m;->d:[Ljava/lang/Object;

    iput-object v2, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/c/m;->d:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v4/c/m;->f:[I

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    sget v0, Landroid/support/v4/c/m;->e:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/support/v4/c/m;->e:I

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_38

    :goto_2b
    return-void

    :cond_2c
    monitor-exit v1

    :cond_2d
    :goto_2d
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/c/m;->f:[I

    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    goto :goto_2b

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3b
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    const-class v1, Landroid/support/v4/c/a;

    monitor-enter v1

    :try_start_41
    sget-object v0, Landroid/support/v4/c/m;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_69

    sget-object v2, Landroid/support/v4/c/m;->b:[Ljava/lang/Object;

    iput-object v2, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/c/m;->b:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v4/c/m;->f:[I

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    sget v0, Landroid/support/v4/c/m;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/support/v4/c/m;->c:I

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_41 .. :try_end_65} :catchall_66

    goto :goto_2b

    :catchall_66
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_69
    monitor-exit v1

    goto :goto_2d
.end method

.method private e(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method final a()I
    .registers 6

    iget v2, p0, Landroid/support/v4/c/m;->h:I

    if-nez v2, :cond_6

    const/4 v0, -0x1

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v4/c/b;->a([III)I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v1, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    :goto_19
    if-ge v1, v2, :cond_2e

    iget-object v3, p0, Landroid/support/v4/c/m;->f:[I

    aget v3, v3, v1

    if-nez v3, :cond_2e

    iget-object v3, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2b

    move v0, v1

    goto :goto_5

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    :goto_30
    if-ltz v0, :cond_43

    iget-object v2, p0, Landroid/support/v4/c/m;->f:[I

    aget v2, v2, v0

    if-nez v2, :cond_43

    iget-object v2, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    :cond_43
    xor-int/lit8 v0, v1, -0x1

    goto :goto_5
.end method

.method final a(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v4/c/m;->h:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    if-nez p1, :cond_17

    :goto_9
    if-ge v0, v1, :cond_24

    aget-object v3, v2, v0

    if-nez v3, :cond_12

    shr-int/lit8 v0, v0, 0x1

    :goto_11
    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    :cond_15
    add-int/lit8 v0, v0, 0x2

    :cond_17
    if-ge v0, v1, :cond_24

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    shr-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_24
    const/4 v0, -0x1

    goto :goto_11
.end method

.method final a(Ljava/lang/Object;I)I
    .registers 8

    iget v2, p0, Landroid/support/v4/c/m;->h:I

    if-nez v2, :cond_6

    const/4 v0, -0x1

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    invoke-static {v0, v2, p2}, Landroid/support/v4/c/b;->a([III)I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v1, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    :goto_1c
    if-ge v1, v2, :cond_35

    iget-object v3, p0, Landroid/support/v4/c/m;->f:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_35

    iget-object v3, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    move v0, v1

    goto :goto_5

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_35
    add-int/lit8 v0, v0, -0x1

    :goto_37
    if-ltz v0, :cond_4e

    iget-object v2, p0, Landroid/support/v4/c/m;->f:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4e

    iget-object v2, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    :cond_4e
    xor-int/lit8 v0, v1, -0x1

    goto :goto_5
.end method

.method public final a(I)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    array-length v0, v0

    if-ge v0, p1, :cond_26

    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    iget-object v1, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/support/v4/c/m;->d(I)V

    iget v2, p0, Landroid/support/v4/c/m;->h:I

    if-lez v2, :cond_21

    iget-object v2, p0, Landroid/support/v4/c/m;->f:[I

    iget v3, p0, Landroid/support/v4/c/m;->h:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/c/m;->h:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_21
    iget v2, p0, Landroid/support/v4/c/m;->h:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/c/m;->a([I[Ljava/lang/Object;I)V

    :cond_26
    return-void
.end method

.method public final b(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final c(I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v0, 0x8

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v2, p0, Landroid/support/v4/c/m;->h:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_25

    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    iget-object v2, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/c/m;->h:I

    invoke-static {v0, v2, v3}, Landroid/support/v4/c/m;->a([I[Ljava/lang/Object;I)V

    sget-object v0, Landroid/support/v4/c/b;->a:[I

    iput-object v0, p0, Landroid/support/v4/c/m;->f:[I

    sget-object v0, Landroid/support/v4/c/b;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    iput v5, p0, Landroid/support/v4/c/m;->h:I

    :cond_24
    :goto_24
    return-object v1

    :cond_25
    iget-object v2, p0, Landroid/support/v4/c/m;->f:[I

    array-length v2, v2

    if-le v2, v0, :cond_78

    iget v2, p0, Landroid/support/v4/c/m;->h:I

    iget-object v3, p0, Landroid/support/v4/c/m;->f:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_78

    iget v2, p0, Landroid/support/v4/c/m;->h:I

    if-le v2, v0, :cond_3e

    iget v0, p0, Landroid/support/v4/c/m;->h:I

    iget v2, p0, Landroid/support/v4/c/m;->h:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_3e
    iget-object v2, p0, Landroid/support/v4/c/m;->f:[I

    iget-object v3, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/c/m;->d(I)V

    iget v0, p0, Landroid/support/v4/c/m;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/c/m;->h:I

    if-lez p1, :cond_59

    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    invoke-static {v2, v5, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, p1, 0x1

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_59
    iget v0, p0, Landroid/support/v4/c/m;->h:I

    if-ge p1, v0, :cond_24

    add-int/lit8 v0, p1, 0x1

    iget-object v4, p0, Landroid/support/v4/c/m;->f:[I

    iget v5, p0, Landroid/support/v4/c/m;->h:I

    sub-int/2addr v5, p1

    invoke-static {v2, v0, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/support/v4/c/m;->h:I

    sub-int/2addr v5, p1

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v3, v0, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24

    :cond_78
    iget v0, p0, Landroid/support/v4/c/m;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/c/m;->h:I

    iget v0, p0, Landroid/support/v4/c/m;->h:I

    if-ge p1, v0, :cond_a0

    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/support/v4/c/m;->f:[I

    iget v4, p0, Landroid/support/v4/c/m;->h:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/support/v4/c/m;->h:I

    sub-int/2addr v5, p1

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a0
    iget-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/c/m;->h:I

    shl-int/lit8 v2, v2, 0x1

    aput-object v6, v0, v2

    iget-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/c/m;->h:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    aput-object v6, v0, v2

    goto/16 :goto_24
.end method

.method public clear()V
    .registers 4

    iget v0, p0, Landroid/support/v4/c/m;->h:I

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    iget-object v1, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/c/m;->h:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/c/m;->a([I[Ljava/lang/Object;I)V

    sget-object v0, Landroid/support/v4/c/b;->a:[I

    iput-object v0, p0, Landroid/support/v4/c/m;->f:[I

    sget-object v0, Landroid/support/v4/c/b;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/c/m;->h:I

    :cond_18
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroid/support/v4/c/m;->a()I

    move-result v2

    if-ltz v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/c/m;->a(Ljava/lang/Object;I)I

    move-result v2

    if-gez v2, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v4/c/m;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_45

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Landroid/support/v4/c/m;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    move v2, v1

    :goto_18
    :try_start_18
    iget v3, p0, Landroid/support/v4/c/m;->h:I

    if-ge v2, v3, :cond_4

    invoke-direct {p0, v2}, Landroid/support/v4/c/m;->e(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/support/v4/c/m;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_34

    if-nez v5, :cond_32

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    :cond_32
    move v0, v1

    goto :goto_4

    :cond_34
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_37} :catch_3f
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_37} :catch_42

    move-result v3

    if-nez v3, :cond_3c

    move v0, v1

    goto :goto_4

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :catch_3f
    move-exception v0

    move v0, v1

    goto :goto_4

    :catch_42
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_45
    move v0, v1

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_11

    invoke-virtual {p0}, Landroid/support/v4/c/m;->a()I

    move-result v0

    :goto_6
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/c/m;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6

    :cond_1a
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public hashCode()I
    .registers 10

    const/4 v1, 0x0

    iget-object v5, p0, Landroid/support/v4/c/m;->f:[I

    iget-object v6, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    const/4 v0, 0x1

    iget v7, p0, Landroid/support/v4/c/m;->h:I

    move v2, v0

    move v3, v1

    move v4, v1

    :goto_b
    if-ge v3, v7, :cond_21

    aget-object v0, v6, v2

    aget v8, v5, v3

    if-nez v0, :cond_1c

    move v0, v1

    :goto_14
    xor-int/2addr v0, v8

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_b

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_14

    :cond_21
    return v4
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Landroid/support/v4/c/m;->h:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v4, 0x0

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Landroid/support/v4/c/m;->a()I

    move-result v2

    move v3, v4

    :goto_b
    if-ltz v2, :cond_23

    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v2, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    aput-object p2, v2, v1

    :goto_19
    return-object v0

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/support/v4/c/m;->a(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_b

    :cond_23
    xor-int/lit8 v2, v2, -0x1

    iget v5, p0, Landroid/support/v4/c/m;->h:I

    iget-object v6, p0, Landroid/support/v4/c/m;->f:[I

    array-length v6, v6

    if-lt v5, v6, :cond_54

    iget v5, p0, Landroid/support/v4/c/m;->h:I

    if-lt v5, v0, :cond_90

    iget v0, p0, Landroid/support/v4/c/m;->h:I

    iget v1, p0, Landroid/support/v4/c/m;->h:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_37
    :goto_37
    iget-object v1, p0, Landroid/support/v4/c/m;->f:[I

    iget-object v5, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/c/m;->d(I)V

    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    array-length v0, v0

    if-lez v0, :cond_4f

    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    array-length v6, v1

    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4f
    iget v0, p0, Landroid/support/v4/c/m;->h:I

    invoke-static {v1, v5, v0}, Landroid/support/v4/c/m;->a([I[Ljava/lang/Object;I)V

    :cond_54
    iget v0, p0, Landroid/support/v4/c/m;->h:I

    if-ge v2, v0, :cond_76

    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    iget-object v1, p0, Landroid/support/v4/c/m;->f:[I

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Landroid/support/v4/c/m;->h:I

    sub-int/2addr v5, v2

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    iget-object v4, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Landroid/support/v4/c/m;->h:I

    sub-int/2addr v6, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_76
    iget-object v0, p0, Landroid/support/v4/c/m;->f:[I

    aput v3, v0, v2

    iget-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object p1, v0, v1

    iget-object v0, p0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    iget v0, p0, Landroid/support/v4/c/m;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/m;->h:I

    const/4 v0, 0x0

    goto :goto_19

    :cond_90
    iget v5, p0, Landroid/support/v4/c/m;->h:I

    if-ge v5, v1, :cond_37

    move v0, v1

    goto :goto_37
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroid/support/v4/c/m;->a()I

    move-result v0

    :goto_6
    if-ltz v0, :cond_16

    invoke-virtual {p0, v0}, Landroid/support/v4/c/m;->c(I)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/c/m;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/support/v4/c/m;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/support/v4/c/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v4/c/m;->h:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_18
    iget v2, p0, Landroid/support/v4/c/m;->h:I

    if-ge v0, v2, :cond_49

    if-lez v0, :cond_23

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-direct {p0, v0}, Landroid/support/v4/c/m;->e(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2c
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/support/v4/c/m;->b(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_43

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_3d
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_43
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_49
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method