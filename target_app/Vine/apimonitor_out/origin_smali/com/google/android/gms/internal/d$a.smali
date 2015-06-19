.class public final Lcom/google/android/gms/internal/d$a;
.super Lcom/google/android/gms/internal/mb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mb",
        "<",
        "Lcom/google/android/gms/internal/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile fM:[Lcom/google/android/gms/internal/d$a;


# instance fields
.field public fN:Ljava/lang/String;

.field public fO:[Lcom/google/android/gms/internal/d$a;

.field public fP:[Lcom/google/android/gms/internal/d$a;

.field public fQ:[Lcom/google/android/gms/internal/d$a;

.field public fR:Ljava/lang/String;

.field public fS:Ljava/lang/String;

.field public fT:J

.field public fU:Z

.field public fV:[Lcom/google/android/gms/internal/d$a;

.field public fW:[I

.field public fX:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d$a;->s()Lcom/google/android/gms/internal/d$a;

    return-void
.end method

.method public static r()[Lcom/google/android/gms/internal/d$a;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/d$a;->fM:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/md;->amX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/d$a;->fM:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/d$a;

    sput-object v0, Lcom/google/android/gms/internal/d$a;->fM:[Lcom/google/android/gms/internal/d$a;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/d$a;->fM:[Lcom/google/android/gms/internal/d$a;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ma;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/d$a;->type:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->p(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_33

    move v0, v1

    :goto_21
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_33

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_30

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_4f

    move v0, v1

    :goto_3d
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_4f

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4c

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_6b

    move v0, v1

    :goto_59
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_6b

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_68

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V

    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V

    :cond_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V

    :cond_8b
    iget-wide v2, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9a

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ma;->b(IJ)V

    :cond_9a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    if-eqz v0, :cond_a5

    const/16 v0, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->a(IZ)V

    :cond_a5
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v0, v0

    if-lez v0, :cond_c0

    move v0, v1

    :goto_af
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v2, v2

    if-ge v0, v2, :cond_c0

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_af

    :cond_c0
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_dc

    :goto_c9
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-ge v1, v0, :cond_dc

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    aget-object v0, v0, v1

    if-eqz v0, :cond_d9

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V

    :cond_d9
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    :cond_dc
    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    if-eqz v0, :cond_e7

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->a(IZ)V

    :cond_e7
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/d$a;->l(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 7

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I

    move-result v0

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/d$a;->type:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->r(II)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1f
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-lez v2, :cond_3f

    move v2, v0

    move v0, v1

    :goto_2a
    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    array-length v3, v3

    if-ge v0, v3, :cond_3e

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3b

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3e
    move v0, v2

    :cond_3f
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-lez v2, :cond_5f

    move v2, v0

    move v0, v1

    :goto_4a
    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    array-length v3, v3

    if-ge v0, v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5b

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_5e
    move v0, v2

    :cond_5f
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-lez v2, :cond_7f

    move v2, v0

    move v0, v1

    :goto_6a
    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    array-length v3, v3

    if-ge v0, v3, :cond_7e

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_7b

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    :cond_7e
    move v0, v2

    :cond_7f
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_91
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a3
    iget-wide v2, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b4

    const/16 v2, 0x8

    iget-wide v3, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ma;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    if-eqz v2, :cond_c1

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c1
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    if-eqz v2, :cond_e4

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v2, v2

    if-lez v2, :cond_e4

    move v2, v1

    move v3, v1

    :goto_cc
    iget-object v4, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v4, v4

    if-ge v2, v4, :cond_dd

    iget-object v4, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_cc

    :cond_dd
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_e4
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    if-eqz v2, :cond_102

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-lez v2, :cond_102

    :goto_ed
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v1, v2, :cond_102

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v1

    if-eqz v2, :cond_ff

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_ff
    add-int/lit8 v1, v1, 0x1

    goto :goto_ed

    :cond_102
    iget-boolean v1, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    if-eqz v1, :cond_10f

    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10f
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/d$a;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/d$a;

    iget v2, p0, Lcom/google/android/gms/internal/d$a;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/d$a;->type:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    if-nez v2, :cond_8b

    iget-object v2, p1, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    if-nez v2, :cond_97

    iget-object v2, p1, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_40
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    if-nez v2, :cond_a3

    iget-object v2, p1, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_48
    iget-wide v2, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/d$a;->fT:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/d$a;->fU:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/d$a;->fW:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/d$a;->fX:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_af

    :cond_7c
    iget-object v2, p1, Lcom/google/android/gms/internal/d$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_88

    iget-object v2, p1, Lcom/google/android/gms/internal/d$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_88
    move v0, v1

    goto/16 :goto_5

    :cond_8b
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_5

    :cond_97
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto/16 :goto_5

    :cond_a3
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    goto/16 :goto_5

    :cond_af
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->amU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/d$a;->amU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_5
.end method

.method public hashCode()I
    .registers 10

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/d$a;->type:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    if-nez v0, :cond_79

    move v0, v1

    :goto_10
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v4}, Lcom/google/android/gms/internal/md;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v4}, Lcom/google/android/gms/internal/md;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v4}, Lcom/google/android/gms/internal/md;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    if-nez v0, :cond_80

    move v0, v1

    :goto_33
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    if-nez v0, :cond_87

    move v0, v1

    :goto_3b
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    if-eqz v0, :cond_8e

    move v0, v2

    :goto_4f
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v4}, Lcom/google/android/gms/internal/md;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    invoke-static {v4}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    if-eqz v4, :cond_90

    :goto_68
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_92

    :cond_77
    :goto_77
    add-int/2addr v0, v1

    return v0

    :cond_79
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_10

    :cond_80
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_33

    :cond_87
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3b

    :cond_8e
    move v0, v3

    goto :goto_4f

    :cond_90
    move v2, v3

    goto :goto_68

    :cond_92
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->amU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_77
.end method

.method public l(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/d$a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    move-result v0

    sparse-switch v0, :sswitch_data_1e2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/d$a;->a(Lcom/google/android/gms/internal/lz;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v0

    packed-switch v0, :pswitch_data_21c

    goto :goto_1

    :pswitch_17
    iput v0, p0, Lcom/google/android/gms/internal/d$a;->type:I

    goto :goto_1

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    goto :goto_1

    :sswitch_21
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_4d

    move v0, v1

    :goto_2c
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_36

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    :goto_36
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_51

    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    goto :goto_2c

    :cond_51
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    goto :goto_1

    :sswitch_60
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_8c

    move v0, v1

    :goto_6b
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_75

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_75
    :goto_75
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_90

    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_8c
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    goto :goto_6b

    :cond_90
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    goto/16 :goto_1

    :sswitch_a0
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_cc

    move v0, v1

    :goto_ab
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_b5

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b5
    :goto_b5
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d0

    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_cc
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    goto :goto_ab

    :cond_d0
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    goto/16 :goto_1

    :sswitch_e0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_e8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_f0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->ny()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    goto/16 :goto_1

    :sswitch_f8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nA()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    goto/16 :goto_1

    :sswitch_100
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v4

    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    :goto_10a
    if-ge v3, v4, :cond_123

    if-eqz v3, :cond_111

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    :cond_111
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v6

    packed-switch v6, :pswitch_data_230

    move v0, v2

    :goto_119
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_10a

    :pswitch_11e
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_119

    :cond_123
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    if-nez v0, :cond_133

    move v0, v1

    :goto_12a
    if-nez v0, :cond_137

    array-length v3, v5

    if-ne v2, v3, :cond_137

    iput-object v5, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    goto/16 :goto_1

    :cond_133
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v0, v0

    goto :goto_12a

    :cond_137
    add-int v3, v0, v2

    new-array v3, v3, [I

    if-eqz v0, :cond_142

    iget-object v4, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_142
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    goto/16 :goto_1

    :sswitch_149
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_156
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_167

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    packed-switch v4, :pswitch_data_256

    goto :goto_156

    :pswitch_164
    add-int/lit8 v0, v0, 0x1

    goto :goto_156

    :cond_167
    if-eqz v0, :cond_195

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    if-nez v2, :cond_18f

    move v2, v1

    :goto_171
    add-int/2addr v0, v2

    new-array v4, v0, [I

    if-eqz v2, :cond_17b

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17b
    :goto_17b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v0

    if-lez v0, :cond_193

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v5

    packed-switch v5, :pswitch_data_27c

    goto :goto_17b

    :pswitch_189
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_17b

    :cond_18f
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v2, v2

    goto :goto_171

    :cond_193
    iput-object v4, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    :cond_195
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_1

    :sswitch_19a
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_1c6

    move v0, v1

    :goto_1a5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_1af

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1af
    :goto_1af
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1ca

    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1af

    :cond_1c6
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    goto :goto_1a5

    :cond_1ca
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    goto/16 :goto_1

    :sswitch_1da
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nA()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    goto/16 :goto_1

    :sswitch_data_1e2
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_21
        0x22 -> :sswitch_60
        0x2a -> :sswitch_a0
        0x32 -> :sswitch_e0
        0x3a -> :sswitch_e8
        0x40 -> :sswitch_f0
        0x48 -> :sswitch_f8
        0x50 -> :sswitch_100
        0x52 -> :sswitch_149
        0x5a -> :sswitch_19a
        0x60 -> :sswitch_1da
    .end sparse-switch

    :pswitch_data_21c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_230
    .packed-switch 0x1
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
    .end packed-switch

    :pswitch_data_256
    .packed-switch 0x1
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
    .end packed-switch

    :pswitch_data_27c
    .packed-switch 0x1
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
    .end packed-switch
.end method

.method public s()Lcom/google/android/gms/internal/d$a;
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/d$a;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->amU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/d$a;->amY:I

    return-object p0
.end method
