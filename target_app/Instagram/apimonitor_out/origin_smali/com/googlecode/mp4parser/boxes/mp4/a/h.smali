.class public Lcom/googlecode/mp4parser/boxes/mp4/a/h;
.super Lcom/googlecode/mp4parser/boxes/mp4/a/b;
.source "ESDescriptor.java"


# annotations
.annotation runtime Lcom/googlecode/mp4parser/boxes/mp4/a/g;
    a = {
        0x3
    }
.end annotation


# static fields
.field private static n:Ljava/util/logging/Logger;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:I

.field k:Lcom/googlecode/mp4parser/boxes/mp4/a/e;

.field l:Lcom/googlecode/mp4parser/boxes/mp4/a/n;

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->n:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .registers 13

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->a:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    ushr-int/lit8 v4, v0, 0x7

    iput v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->b:I

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->c:I

    ushr-int/lit8 v4, v0, 0x5

    and-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d:I

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->e:I

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->b:I

    if-ne v0, v5, :cond_2d

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->i:I

    :cond_2d
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->c:I

    if-ne v0, v5, :cond_3f

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f:I

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/e;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->g:Ljava/lang/String;

    :cond_3f
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d:I

    if-ne v0, v5, :cond_49

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->j:I

    :cond_49
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->b:I

    if-ne v0, v5, :cond_171

    move v0, v1

    :goto_58
    add-int/2addr v4, v0

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->c:I

    if-ne v0, v5, :cond_174

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f:I

    add-int/lit8 v0, v0, 0x1

    :goto_61
    add-int/2addr v0, v4

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d:I

    if-ne v4, v5, :cond_67

    move v2, v1

    :cond_67
    add-int v4, v0, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->a()I

    move-result v0

    add-int/lit8 v2, v4, 0x2

    if-le v0, v2, :cond_195

    invoke-static {v10, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/l;->a(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/a/b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v5

    int-to-long v6, v2

    sget-object v8, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->n:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " - ESDescriptor1 read: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", size: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v0, :cond_177

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_a4
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-eqz v0, :cond_17a

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;->a()I

    move-result v2

    add-int/2addr v5, v2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v2, v4

    :goto_ba
    instance-of v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;

    if-eqz v4, :cond_c2

    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->k:Lcom/googlecode/mp4parser/boxes/mp4/a/e;

    :cond_c2
    :goto_c2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->a()I

    move-result v0

    add-int/lit8 v4, v2, 0x2

    if-le v0, v4, :cond_186

    invoke-static {v10, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/l;->a(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/a/b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v5

    int-to-long v6, v4

    sget-object v8, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->n:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " - ESDescriptor2 read: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", size: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v0, :cond_17f

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_fd
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-eqz v0, :cond_182

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;->a()I

    move-result v4

    add-int/2addr v5, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v2, v4

    :goto_113
    instance-of v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/a/n;

    if-eqz v4, :cond_11b

    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/a/n;

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->l:Lcom/googlecode/mp4parser/boxes/mp4/a/n;

    :cond_11b
    :goto_11b
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->a()I

    move-result v0

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_194

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-static {v10, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/l;->a(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/a/b;

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v4

    int-to-long v6, v0

    sget-object v8, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->n:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " - ESDescriptor3 read: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", size: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_18e

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_155
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-eqz v5, :cond_190

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;->a()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v2, v0

    :goto_16b
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->m:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    :cond_171
    move v0, v2

    goto/16 :goto_58

    :cond_174
    move v0, v2

    goto/16 :goto_61

    :cond_177
    move-object v2, v3

    goto/16 :goto_a4

    :cond_17a
    int-to-long v4, v4

    add-long/2addr v4, v6

    long-to-int v2, v4

    goto/16 :goto_ba

    :cond_17f
    move-object v4, v3

    goto/16 :goto_fd

    :cond_182
    int-to-long v4, v2

    add-long/2addr v4, v6

    long-to-int v2, v4

    goto :goto_113

    :cond_186
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->n:Ljava/util/logging/Logger;

    const-string v4, "SLConfigDescriptor is missing!"

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_11b

    :cond_18e
    move-object v0, v3

    goto :goto_155

    :cond_190
    int-to-long v8, v2

    add-long/2addr v6, v8

    long-to-int v2, v6

    goto :goto_16b

    :cond_194
    return-void

    :cond_195
    move v2, v4

    goto/16 :goto_c2
.end method

.method public final d()Lcom/googlecode/mp4parser/boxes/mp4/a/e;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->k:Lcom/googlecode/mp4parser/boxes/mp4/a/e;

    return-object v0
.end method

.method public final e()Lcom/googlecode/mp4parser/boxes/mp4/a/n;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->l:Lcom/googlecode/mp4parser/boxes/mp4/a/n;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->c:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->c:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f:I

    if-eq v2, v3, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->i:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->i:I

    if-eq v2, v3, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->a:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->a:I

    if-eq v2, v3, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->j:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->j:I

    if-eq v2, v3, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d:I

    if-eq v2, v3, :cond_45

    move v0, v1

    goto :goto_4

    :cond_45
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->h:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->h:I

    if-eq v2, v3, :cond_4d

    move v0, v1

    goto :goto_4

    :cond_4d
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->b:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->b:I

    if-eq v2, v3, :cond_55

    move v0, v1

    goto :goto_4

    :cond_55
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->e:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->e:I

    if-eq v2, v3, :cond_5d

    move v0, v1

    goto :goto_4

    :cond_5d
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->g:Ljava/lang/String;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    :cond_6b
    move v0, v1

    goto :goto_4

    :cond_6d
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->g:Ljava/lang/String;

    if-nez v2, :cond_6b

    :cond_71
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->k:Lcom/googlecode/mp4parser/boxes/mp4/a/e;

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->k:Lcom/googlecode/mp4parser/boxes/mp4/a/e;

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->k:Lcom/googlecode/mp4parser/boxes/mp4/a/e;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    :cond_7f
    move v0, v1

    goto :goto_4

    :cond_81
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->k:Lcom/googlecode/mp4parser/boxes/mp4/a/e;

    if-nez v2, :cond_7f

    :cond_85
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->m:Ljava/util/List;

    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->m:Ljava/util/List;

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->m:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    :cond_93
    move v0, v1

    goto/16 :goto_4

    :cond_96
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->m:Ljava/util/List;

    if-nez v2, :cond_93

    :cond_9a
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->l:Lcom/googlecode/mp4parser/boxes/mp4/a/n;

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->l:Lcom/googlecode/mp4parser/boxes/mp4/a/n;

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->l:Lcom/googlecode/mp4parser/boxes/mp4/a/n;

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_a8
    move v0, v1

    goto/16 :goto_4

    :cond_ab
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->l:Lcom/googlecode/mp4parser/boxes/mp4/a/n;

    if-eqz v2, :cond_4

    goto :goto_a8
.end method

.method public final f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->m:Ljava/util/List;

    return-object v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->j:I

    return v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->a:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->g:Ljava/lang/String;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_28
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->k:Lcom/googlecode/mp4parser/boxes/mp4/a/e;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->k:Lcom/googlecode/mp4parser/boxes/mp4/a/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_44
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->l:Lcom/googlecode/mp4parser/boxes/mp4/a/n;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->l:Lcom/googlecode/mp4parser/boxes/mp4/a/n;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/a/n;->hashCode()I

    move-result v0

    :goto_51
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->m:Ljava/util/List;

    if-eqz v2, :cond_5e

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->m:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5e
    add-int/2addr v0, v1

    return v0

    :cond_60
    move v0, v1

    goto :goto_28

    :cond_62
    move v0, v1

    goto :goto_44

    :cond_64
    move v0, v1

    goto :goto_51
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->b:I

    return v0
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->c:I

    return v0
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d:I

    return v0
.end method

.method public final l()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->e:I

    return v0
.end method

.method public final m()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f:I

    return v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final o()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->h:I

    return v0
.end method

.method public final p()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->i:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ESDescriptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{esId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamDependenceFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", URLFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCRstreamFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", URLLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", URLString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", remoteODFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dependsOnEsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCREsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decoderConfigDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->k:Lcom/googlecode/mp4parser/boxes/mp4/a/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slConfigDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->l:Lcom/googlecode/mp4parser/boxes/mp4/a/n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
