.class public final Lcom/google/android/gms/internal/c$g;
.super Lcom/google/android/gms/internal/mb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mb",
        "<",
        "Lcom/google/android/gms/internal/c$g;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile fm:[Lcom/google/android/gms/internal/c$g;


# instance fields
.field public fn:[I

.field public fo:[I

.field public fp:[I

.field public fq:[I

.field public fr:[I

.field public fs:[I

.field public ft:[I

.field public fu:[I

.field public fv:[I

.field public fw:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$g;->m()Lcom/google/android/gms/internal/c$g;

    return-void
.end method

.method public static l()[Lcom/google/android/gms/internal/c$g;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/md;->amX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/c$g;

    sput-object v0, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v0, v0

    if-lez v0, :cond_1b

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v0, v0

    if-lez v0, :cond_35

    move v0, v1

    :goto_25
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v2, v2

    if-ge v0, v2, :cond_35

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v0, v0

    if-lez v0, :cond_4f

    move v0, v1

    :goto_3f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4f

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v0, v0

    if-lez v0, :cond_69

    move v0, v1

    :goto_59
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v2, v2

    if-ge v0, v2, :cond_69

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v0, v0

    if-lez v0, :cond_83

    move v0, v1

    :goto_73
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v2, v2

    if-ge v0, v2, :cond_83

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_83
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v0, v0

    if-lez v0, :cond_9d

    move v0, v1

    :goto_8d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_9d

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :cond_9d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v0, v0

    if-lez v0, :cond_b7

    move v0, v1

    :goto_a7
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v2, v2

    if-ge v0, v2, :cond_b7

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    :cond_b7
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v0, v0

    if-lez v0, :cond_d2

    move v0, v1

    :goto_c1
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v2, v2

    if-ge v0, v2, :cond_d2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    :cond_d2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v0, v0

    if-lez v0, :cond_ed

    move v0, v1

    :goto_dc
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v2, v2

    if-ge v0, v2, :cond_ed

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_dc

    :cond_ed
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v0, v0

    if-lez v0, :cond_107

    :goto_f6
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v0, v0

    if-ge v1, v0, :cond_107

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    :cond_107
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$g;->h(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$g;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    if-eqz v0, :cond_164

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v0, v0

    if-lez v0, :cond_164

    move v0, v1

    move v2, v1

    :goto_10
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v4, v4

    if-ge v0, v4, :cond_21

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    aget v4, v4, v0

    invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_21
    add-int v0, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :goto_29
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v2, v2

    if-lez v2, :cond_4c

    move v2, v1

    move v3, v1

    :goto_34
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v4, v4

    if-ge v2, v4, :cond_45

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_45
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_4c
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v2, v2

    if-lez v2, :cond_6f

    move v2, v1

    move v3, v1

    :goto_57
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v4, v4

    if-ge v2, v4, :cond_68

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_68
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_6f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    if-eqz v2, :cond_92

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v2, v2

    if-lez v2, :cond_92

    move v2, v1

    move v3, v1

    :goto_7a
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v4, v4

    if-ge v2, v4, :cond_8b

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_8b
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_92
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    if-eqz v2, :cond_b5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v2, v2

    if-lez v2, :cond_b5

    move v2, v1

    move v3, v1

    :goto_9d
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v4, v4

    if-ge v2, v4, :cond_ae

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    :cond_ae
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_b5
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    if-eqz v2, :cond_d8

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v2, v2

    if-lez v2, :cond_d8

    move v2, v1

    move v3, v1

    :goto_c0
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v4, v4

    if-ge v2, v4, :cond_d1

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_c0

    :cond_d1
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_d8
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    if-eqz v2, :cond_fb

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v2, v2

    if-lez v2, :cond_fb

    move v2, v1

    move v3, v1

    :goto_e3
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v4, v4

    if-ge v2, v4, :cond_f4

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e3

    :cond_f4
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_fb
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    if-eqz v2, :cond_11e

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v2, v2

    if-lez v2, :cond_11e

    move v2, v1

    move v3, v1

    :goto_106
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v4, v4

    if-ge v2, v4, :cond_117

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_106

    :cond_117
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_11e
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    if-eqz v2, :cond_141

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v2, v2

    if-lez v2, :cond_141

    move v2, v1

    move v3, v1

    :goto_129
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v4, v4

    if-ge v2, v4, :cond_13a

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_129

    :cond_13a
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_141
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    if-eqz v2, :cond_163

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v2, v2

    if-lez v2, :cond_163

    move v2, v1

    :goto_14b
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v3, v3

    if-ge v1, v3, :cond_15c

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14b

    :cond_15c
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_163
    return v0

    :cond_164
    move v0, v3

    goto/16 :goto_29
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/c$g;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/c$g;

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fn:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fo:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fp:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fq:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fr:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fs:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->ft:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fu:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fv:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fw:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->amU:Ljava/util/List;

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8b

    :cond_7c
    iget-object v2, p1, Lcom/google/android/gms/internal/c$g;->amU:Ljava/util/List;

    if-eqz v2, :cond_88

    iget-object v2, p1, Lcom/google/android/gms/internal/c$g;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_88
    move v0, v1

    goto/16 :goto_5

    :cond_8b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->amU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->amU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_5
.end method

.method public h(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$g;
    .registers 7
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

    sparse-switch v0, :sswitch_data_4aa

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$g;->a(Lcom/google/android/gms/internal/lz;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    if-nez v0, :cond_35

    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_24
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_39

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v0, v0

    goto :goto_1a

    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    goto :goto_1

    :sswitch_42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_4f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_5b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_5b
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    if-nez v2, :cond_79

    move v2, v1

    :goto_63
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_6d

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6d
    :goto_6d
    array-length v4, v0

    if-ge v2, v4, :cond_7d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    :cond_79
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v2, v2

    goto :goto_63

    :cond_7d
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_1

    :sswitch_84
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    if-nez v0, :cond_aa

    move v0, v1

    :goto_8f
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_99

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_99
    :goto_99
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_ae

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    :cond_aa
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v0, v0

    goto :goto_8f

    :cond_ae
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    goto/16 :goto_1

    :sswitch_b8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_c5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_d1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    :cond_d1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    if-nez v2, :cond_ef

    move v2, v1

    :goto_d9
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_e3

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e3
    :goto_e3
    array-length v4, v0

    if-ge v2, v4, :cond_f3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e3

    :cond_ef
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v2, v2

    goto :goto_d9

    :cond_f3
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_1

    :sswitch_fa
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    if-nez v0, :cond_120

    move v0, v1

    :goto_105
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_10f

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10f
    :goto_10f
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_124

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_10f

    :cond_120
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v0, v0

    goto :goto_105

    :cond_124
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    goto/16 :goto_1

    :sswitch_12e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_13b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_147

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_13b

    :cond_147
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    if-nez v2, :cond_165

    move v2, v1

    :goto_14f
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_159

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_159
    :goto_159
    array-length v4, v0

    if-ge v2, v4, :cond_169

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_159

    :cond_165
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v2, v2

    goto :goto_14f

    :cond_169
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_1

    :sswitch_170
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    if-nez v0, :cond_196

    move v0, v1

    :goto_17b
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_185

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_185
    :goto_185
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_19a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_185

    :cond_196
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v0, v0

    goto :goto_17b

    :cond_19a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    goto/16 :goto_1

    :sswitch_1a4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_1b1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_1bd

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b1

    :cond_1bd
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    if-nez v2, :cond_1db

    move v2, v1

    :goto_1c5
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_1cf

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1cf
    :goto_1cf
    array-length v4, v0

    if-ge v2, v4, :cond_1df

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1cf

    :cond_1db
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v2, v2

    goto :goto_1c5

    :cond_1df
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_1

    :sswitch_1e6
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    if-nez v0, :cond_20c

    move v0, v1

    :goto_1f1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_1fb

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1fb
    :goto_1fb
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_210

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1fb

    :cond_20c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v0, v0

    goto :goto_1f1

    :cond_210
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    goto/16 :goto_1

    :sswitch_21a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_227
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_233

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_227

    :cond_233
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    if-nez v2, :cond_251

    move v2, v1

    :goto_23b
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_245

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_245
    :goto_245
    array-length v4, v0

    if-ge v2, v4, :cond_255

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_245

    :cond_251
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v2, v2

    goto :goto_23b

    :cond_255
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_1

    :sswitch_25c
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    if-nez v0, :cond_282

    move v0, v1

    :goto_267
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_271

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_271
    :goto_271
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_286

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_271

    :cond_282
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v0, v0

    goto :goto_267

    :cond_286
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    goto/16 :goto_1

    :sswitch_290
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_29d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_2a9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_29d

    :cond_2a9
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    if-nez v2, :cond_2c7

    move v2, v1

    :goto_2b1
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_2bb

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2bb
    :goto_2bb
    array-length v4, v0

    if-ge v2, v4, :cond_2cb

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2bb

    :cond_2c7
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v2, v2

    goto :goto_2b1

    :cond_2cb
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_1

    :sswitch_2d2
    const/16 v0, 0x38

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    if-nez v0, :cond_2f8

    move v0, v1

    :goto_2dd
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_2e7

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2e7
    :goto_2e7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2fc

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e7

    :cond_2f8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v0, v0

    goto :goto_2dd

    :cond_2fc
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    goto/16 :goto_1

    :sswitch_306
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_313
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_31f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_313

    :cond_31f
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    if-nez v2, :cond_33d

    move v2, v1

    :goto_327
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_331

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_331
    :goto_331
    array-length v4, v0

    if-ge v2, v4, :cond_341

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_331

    :cond_33d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v2, v2

    goto :goto_327

    :cond_341
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_1

    :sswitch_348
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    if-nez v0, :cond_36e

    move v0, v1

    :goto_353
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_35d

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_35d
    :goto_35d
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_372

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_35d

    :cond_36e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v0, v0

    goto :goto_353

    :cond_372
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    goto/16 :goto_1

    :sswitch_37c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_389
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_395

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_389

    :cond_395
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    if-nez v2, :cond_3b3

    move v2, v1

    :goto_39d
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_3a7

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3a7
    :goto_3a7
    array-length v4, v0

    if-ge v2, v4, :cond_3b7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a7

    :cond_3b3
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v2, v2

    goto :goto_39d

    :cond_3b7
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_1

    :sswitch_3be
    const/16 v0, 0x48

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    if-nez v0, :cond_3e4

    move v0, v1

    :goto_3c9
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_3d3

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3d3
    :goto_3d3
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3e8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d3

    :cond_3e4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v0, v0

    goto :goto_3c9

    :cond_3e8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    goto/16 :goto_1

    :sswitch_3f2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_3ff
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_40b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3ff

    :cond_40b
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    if-nez v2, :cond_429

    move v2, v1

    :goto_413
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_41d

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_41d
    :goto_41d
    array-length v4, v0

    if-ge v2, v4, :cond_42d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_41d

    :cond_429
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v2, v2

    goto :goto_413

    :cond_42d
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_1

    :sswitch_434
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    if-nez v0, :cond_45a

    move v0, v1

    :goto_43f
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_449

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_449
    :goto_449
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_45e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_449

    :cond_45a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v0, v0

    goto :goto_43f

    :cond_45e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    goto/16 :goto_1

    :sswitch_468
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_475
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_481

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_475

    :cond_481
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    if-nez v2, :cond_49f

    move v2, v1

    :goto_489
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_493

    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_493
    :goto_493
    array-length v4, v0

    if-ge v2, v4, :cond_4a3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_493

    :cond_49f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v2, v2

    goto :goto_489

    :cond_4a3
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_1

    :sswitch_data_4aa
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0xa -> :sswitch_42
        0x10 -> :sswitch_84
        0x12 -> :sswitch_b8
        0x18 -> :sswitch_fa
        0x1a -> :sswitch_12e
        0x20 -> :sswitch_170
        0x22 -> :sswitch_1a4
        0x28 -> :sswitch_1e6
        0x2a -> :sswitch_21a
        0x30 -> :sswitch_25c
        0x32 -> :sswitch_290
        0x38 -> :sswitch_2d2
        0x3a -> :sswitch_306
        0x40 -> :sswitch_348
        0x42 -> :sswitch_37c
        0x48 -> :sswitch_3be
        0x4a -> :sswitch_3f2
        0x50 -> :sswitch_434
        0x52 -> :sswitch_468
    .end sparse-switch
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->amU:Ljava/util/List;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->amU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6a

    :cond_67
    const/4 v0, 0x0

    :goto_68
    add-int/2addr v0, v1

    return v0

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->amU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_68
.end method

.method public m()Lcom/google/android/gms/internal/c$g;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->amU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$g;->amY:I

    return-object p0
.end method
