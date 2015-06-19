.class public Lcom/instagram/filterkit/b/b;
.super Ljava/lang/Object;
.source "IgGLProgram.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/filterkit/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/filterkit/b/b;

    sput-object v0, Lcom/instagram/filterkit/b/b;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/instagram/filterkit/b/b;->b:I

    iget v0, p0, Lcom/instagram/filterkit/b/b;->b:I

    invoke-static {v0}, Lcom/instagram/filterkit/b/b;->a(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/filterkit/b/b;->c:Ljava/util/Map;

    iget v0, p0, Lcom/instagram/filterkit/b/b;->b:I

    invoke-static {v0}, Lcom/instagram/filterkit/b/b;->b(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/filterkit/b/b;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/b/b;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/instagram/filterkit/b/a;
    .registers 3

    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/b/a;

    return-object v0
.end method

.method private static a(I)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/b/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v4, 0x0

    new-array v11, v0, [I

    new-array v12, v0, [I

    new-array v3, v0, [I

    new-array v5, v0, [I

    new-array v7, v0, [I

    const v0, 0x8b86

    invoke-static {p0, v0, v11, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const v0, 0x8b87

    invoke-static {p0, v0, v12, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, v12, v4

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v12, v4

    aget v0, v12, v4

    new-array v9, v0, [B

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move v1, v4

    :goto_2c
    aget v0, v11, v4

    if-ge v1, v0, :cond_53

    aget v2, v12, v4

    move v0, p0

    move v6, v4

    move v8, v4

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    new-instance v0, Ljava/lang/String;

    aget v2, v3, v4

    invoke-direct {v0, v9, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    new-instance v6, Lcom/instagram/filterkit/b/f;

    aget v8, v5, v4

    aget v10, v7, v4

    invoke-direct {v6, v0, v2, v8, v10}, Lcom/instagram/filterkit/b/f;-><init>(Ljava/lang/String;III)V

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_53
    return-object v13
.end method

.method private static a(Lcom/instagram/filterkit/b/f;)V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_96

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized type of uniform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_11
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    :goto_1c
    return-void

    :sswitch_1d
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    goto :goto_1c

    :sswitch_29
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    goto :goto_1c

    :sswitch_35
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    goto :goto_1c

    :sswitch_41
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform1iv(IILjava/nio/IntBuffer;)V

    goto :goto_1c

    :sswitch_4d
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform2iv(IILjava/nio/IntBuffer;)V

    goto :goto_1c

    :sswitch_59
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform3iv(IILjava/nio/IntBuffer;)V

    goto :goto_1c

    :sswitch_65
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform4iv(IILjava/nio/IntBuffer;)V

    goto :goto_1c

    :sswitch_71
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V

    goto :goto_1c

    :sswitch_7d
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    goto :goto_1c

    :sswitch_89
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    goto :goto_1c

    nop

    :sswitch_data_96
    .sparse-switch
        0x1404 -> :sswitch_41
        0x1406 -> :sswitch_11
        0x8b50 -> :sswitch_1d
        0x8b51 -> :sswitch_29
        0x8b52 -> :sswitch_35
        0x8b53 -> :sswitch_4d
        0x8b54 -> :sswitch_59
        0x8b55 -> :sswitch_65
        0x8b56 -> :sswitch_41
        0x8b57 -> :sswitch_4d
        0x8b58 -> :sswitch_59
        0x8b59 -> :sswitch_65
        0x8b5a -> :sswitch_71
        0x8b5b -> :sswitch_7d
        0x8b5c -> :sswitch_89
        0x8b5e -> :sswitch_41
        0x8b60 -> :sswitch_41
    .end sparse-switch
.end method

.method private static b(I)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/b/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v4, 0x0

    new-array v11, v0, [I

    new-array v12, v0, [I

    new-array v3, v0, [I

    new-array v5, v0, [I

    new-array v7, v0, [I

    const v0, 0x8b89

    invoke-static {p0, v0, v11, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const v0, 0x8b8a

    invoke-static {p0, v0, v12, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, v12, v4

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v12, v4

    aget v0, v12, v4

    new-array v9, v0, [B

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move v1, v4

    :goto_2c
    aget v0, v11, v4

    if-ge v1, v0, :cond_53

    aget v2, v12, v4

    move v0, p0

    move v6, v4

    move v8, v4

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    new-instance v0, Ljava/lang/String;

    aget v2, v3, v4

    invoke-direct {v0, v9, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    new-instance v6, Lcom/instagram/filterkit/b/a;

    aget v8, v5, v4

    aget v10, v7, v4

    invoke-direct {v6, v0, v2, v8, v10}, Lcom/instagram/filterkit/b/a;-><init>(Ljava/lang/String;III)V

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_53
    return-object v13
.end method

.method private c()V
    .registers 8

    const/16 v6, 0xde1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/b/f;

    invoke-virtual {v1}, Lcom/instagram/filterkit/b/f;->b()I

    move-result v1

    const v4, 0x8b5e

    if-ne v1, v4, :cond_95

    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/b/f;

    invoke-virtual {v1}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v1, 0x84c0

    add-int/2addr v1, v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/b/d;

    invoke-static {v1}, Lcom/instagram/filterkit/b/d;->a(Lcom/instagram/filterkit/b/d;)I

    move-result v1

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0x2801

    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/b/d;

    invoke-static {v1}, Lcom/instagram/filterkit/b/d;->b(Lcom/instagram/filterkit/b/d;)Lcom/instagram/filterkit/b/c;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/filterkit/b/c;->a(Lcom/instagram/filterkit/b/c;)I

    move-result v1

    invoke-static {v6, v4, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    iget-object v4, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/b/d;

    invoke-static {v0}, Lcom/instagram/filterkit/b/d;->b(Lcom/instagram/filterkit/b/d;)Lcom/instagram/filterkit/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/filterkit/b/c;->a(Lcom/instagram/filterkit/b/c;)I

    move-result v0

    invoke-static {v6, v1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_91
    move v2, v0

    goto/16 :goto_e

    :cond_94
    return-void

    :cond_95
    move v0, v2

    goto :goto_91
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/b/f;

    invoke-static {v0}, Lcom/instagram/filterkit/b/b;->a(Lcom/instagram/filterkit/b/f;)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/instagram/filterkit/b/b;->b:I

    return v0
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    new-instance v1, Lcom/instagram/filterkit/b/d;

    sget-object v2, Lcom/instagram/filterkit/b/c;->b:Lcom/instagram/filterkit/b/c;

    invoke-direct {v1, p0, p2, v2}, Lcom/instagram/filterkit/b/d;-><init>(Lcom/instagram/filterkit/b/b;ILcom/instagram/filterkit/b/c;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    new-instance v1, Lcom/instagram/filterkit/b/d;

    invoke-direct {v1, p0, p2, p3}, Lcom/instagram/filterkit/b/d;-><init>(Lcom/instagram/filterkit/b/b;ILcom/instagram/filterkit/b/c;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/b/f;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p2}, Lcom/instagram/filterkit/b/f;->a(Ljava/nio/FloatBuffer;)V

    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uniform named "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in program"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/nio/IntBuffer;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/b/f;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p2}, Lcom/instagram/filterkit/b/f;->a(Ljava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uniform named "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in program"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/nio/Buffer;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, p1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;)Lcom/instagram/filterkit/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/a;->a()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move v3, v6

    :goto_1f
    return v3

    :cond_20
    sget-object v0, Lcom/instagram/filterkit/b/b;->a:Ljava/lang/Class;

    const-string v0, "Attribute with name %s not found in program."

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1f
.end method

.method public final b()V
    .registers 2

    iget v0, p0, Lcom/instagram/filterkit/b/b;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-direct {p0}, Lcom/instagram/filterkit/b/b;->d()V

    invoke-direct {p0}, Lcom/instagram/filterkit/b/b;->c()V

    return-void
.end method
