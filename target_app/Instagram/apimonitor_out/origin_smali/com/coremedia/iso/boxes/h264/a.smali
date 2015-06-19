.class public final Lcom/coremedia/iso/boxes/h264/a;
.super Ljava/lang/Object;
.source "AvcConfigurationBox.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x1f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;

    iput-boolean v3, p0, Lcom/coremedia/iso/boxes/h264/a;->h:Z

    iput v3, p0, Lcom/coremedia/iso/boxes/h264/a;->i:I

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->j:I

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->k:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->l:Ljava/util/List;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/coremedia/iso/boxes/h264/a;->m:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/coremedia/iso/boxes/h264/a;->n:I

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/a;->o:I

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/a;->p:I

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/a;->q:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 11

    const/16 v2, 0x1f

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coremedia/iso/boxes/h264/a;->f:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coremedia/iso/boxes/h264/a;->h:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/a;->i:I

    iput v0, p0, Lcom/coremedia/iso/boxes/h264/a;->j:I

    iput v0, p0, Lcom/coremedia/iso/boxes/h264/a;->k:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coremedia/iso/boxes/h264/a;->l:Ljava/util/List;

    const/16 v1, 0x3c

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/a;->m:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/a;->n:I

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->o:I

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->p:I

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->q:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/a;->a:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/a;->c:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/a;->d:I

    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/a/c;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->m:I

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->e:I

    invoke-virtual {v1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->n:I

    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v2

    move v1, v0

    :goto_6b
    if-ge v1, v2, :cond_7e

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/coremedia/iso/boxes/h264/a;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_7e
    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v2, v1

    move v1, v0

    :goto_84
    int-to-long v4, v1

    cmp-long v4, v4, v2

    if-gez v4, :cond_9a

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    :cond_9a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_a3

    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/h264/a;->h:Z

    :cond_a3
    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/h264/a;->h:Z

    if-eqz v1, :cond_105

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_bf

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_bf

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_bf

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v2, 0x90

    if-ne v1, v2, :cond_105

    :cond_bf
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/a/c;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->o:I

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->i:I

    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->p:I

    invoke-virtual {v1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->j:I

    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/a;->q:I

    invoke-virtual {v1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/a;->k:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v1, v1

    :goto_ef
    int-to-long v3, v0

    cmp-long v3, v3, v1

    if-gez v3, :cond_10b

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/coremedia/iso/boxes/h264/a;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    :cond_105
    iput v6, p0, Lcom/coremedia/iso/boxes/h264/a;->i:I

    iput v6, p0, Lcom/coremedia/iso/boxes/h264/a;->j:I

    iput v6, p0, Lcom/coremedia/iso/boxes/h264/a;->k:I

    :cond_10b
    return-void
.end method


# virtual methods
.method public final a()J
    .registers 9

    const-wide/16 v6, 0x2

    const-wide/16 v0, 0x6

    iget-object v2, p0, Lcom/coremedia/iso/boxes/h264/a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-long/2addr v1, v6

    array-length v0, v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_b

    :cond_1e
    const-wide/16 v3, 0x1

    add-long v0, v1, v3

    iget-object v2, p0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-long/2addr v1, v6

    array-length v0, v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_29

    :cond_3c
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/h264/a;->h:Z

    if-eqz v0, :cond_76

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v3, 0x64

    if-eq v0, v3, :cond_58

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_58

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_58

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v3, 0x90

    if-ne v0, v3, :cond_76

    :cond_58
    const-wide/16 v3, 0x4

    add-long v0, v1, v3

    iget-object v2, p0, Lcom/coremedia/iso/boxes/h264/a;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-long/2addr v1, v6

    array-length v0, v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_63

    :cond_76
    return-wide v1
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .registers 9

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x5

    const/4 v3, 0x3

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->a:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->c:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->d:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;-><init>(Ljava/nio/ByteBuffer;)V

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->m:I

    invoke-virtual {v0, v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->e:I

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->n:I

    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget-object v1, p0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v2, v0

    invoke-static {p1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_3b

    :cond_4f
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v2, v0

    invoke-static {p1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_5e

    :cond_72
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/h264/a;->h:Z

    if-eqz v0, :cond_cb

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_8e

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_8e

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_8e

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/a;->b:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_cb

    :cond_8e
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;-><init>(Ljava/nio/ByteBuffer;)V

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->o:I

    invoke-virtual {v0, v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->i:I

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->p:I

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->j:I

    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->q:I

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/a;->k:I

    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v2, v0

    invoke-static {p1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_b7

    :cond_cb
    return-void
.end method

.method public final b()[Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :try_start_17
    invoke-static {v0}, Lcom/googlecode/mp4parser/b/a/e;->a([B)Lcom/googlecode/mp4parser/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/b/a/e;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_23

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catch_23
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final c()[Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "not parsable"

    :try_start_19
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lcom/googlecode/mp4parser/b/a/i;->a(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/b/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/b/a/i;->toString()Ljava/lang/String;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_25} :catch_2a

    move-result-object v0

    :goto_26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catch_2a
    move-exception v0

    move-object v0, v1

    goto :goto_26

    :cond_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v1
.end method

.method public final e()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v1
.end method

.method public final f()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v1
.end method
