.class public final Lcom/instagram/creation/video/gl/d;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"

# interfaces
.implements Lcom/instagram/creation/video/gl/c;


# static fields
.field private static final d:[F


# instance fields
.field a:I

.field b:I

.field c:I

.field private final e:Ljavax/microedition/khronos/opengles/GL11;

.field private final f:[F

.field private final g:[F

.field private final h:[F

.field private final i:[F

.field private j:I

.field private final k:Lcom/instagram/creation/video/gl/f;

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/creation/video/gl/x;",
            ">;"
        }
    .end annotation
.end field

.field private m:F

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/creation/video/gl/e;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/instagram/creation/video/gl/e;

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/RectF;

.field private final r:[F

.field private final s:Lcom/instagram/creation/video/l/d;

.field private final t:Lcom/instagram/creation/video/l/d;

.field private u:I

.field private v:I

.field private w:Z

.field private x:[I

.field private y:Lcom/instagram/creation/video/gl/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/instagram/creation/video/gl/d;->d:[F

    return-void

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 6

    const/16 v3, 0x10

    const/4 v2, 0x4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->g:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->h:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->i:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->n:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->p:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->q:Landroid/graphics/RectF;

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->r:[F

    new-instance v0, Lcom/instagram/creation/video/l/d;

    invoke-direct {v0}, Lcom/instagram/creation/video/l/d;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->s:Lcom/instagram/creation/video/l/d;

    new-instance v0, Lcom/instagram/creation/video/l/d;

    invoke-direct {v0}, Lcom/instagram/creation/video/l/d;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->t:Lcom/instagram/creation/video/l/d;

    iput-boolean v1, p0, Lcom/instagram/creation/video/gl/d;->w:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->x:[I

    iput-object p1, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    new-instance v0, Lcom/instagram/creation/video/gl/f;

    invoke-direct {v0, p1}, Lcom/instagram/creation/video/gl/f;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/d;->k:Lcom/instagram/creation/video/gl/f;

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/d;->g()V

    return-void
.end method

.method private a(Lcom/instagram/creation/video/gl/a;IIIIF)V
    .registers 9

    if-lez p4, :cond_4

    if-gtz p5, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->k:Lcom/instagram/creation/video/gl/f;

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/d;->w:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->m()Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x3f733333

    cmpg-float v0, p6, v0

    if-gez v0, :cond_2b

    :cond_18
    const/4 v0, 0x1

    :goto_19
    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/gl/f;->a(Z)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/gl/d;->b(Lcom/instagram/creation/video/gl/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->k:Lcom/instagram/creation/video/gl/f;

    invoke-virtual {v0, p6}, Lcom/instagram/creation/video/gl/f;->a(F)V

    invoke-direct/range {p0 .. p5}, Lcom/instagram/creation/video/gl/d;->b(Lcom/instagram/creation/video/gl/a;IIII)V

    goto :goto_4

    :cond_2b
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private a(Lcom/instagram/creation/video/gl/e;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->o:Lcom/instagram/creation/video/gl/e;

    iput-object v0, p1, Lcom/instagram/creation/video/gl/e;->c:Lcom/instagram/creation/video/gl/e;

    iput-object p1, p0, Lcom/instagram/creation/video/gl/d;->o:Lcom/instagram/creation/video/gl/e;

    return-void
.end method

.method private static a(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .registers 5

    const v0, 0x8d40

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v1

    const v0, 0x8cd5

    if-eq v1, v0, :cond_47

    const-string v0, ""

    packed-switch v1, :pswitch_data_48

    :goto_11
    :pswitch_11
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_32
    const-string v0, "FRAMEBUFFER_FORMATS"

    goto :goto_11

    :pswitch_35
    const-string v0, "FRAMEBUFFER_ATTACHMENT"

    goto :goto_11

    :pswitch_38
    const-string v0, "FRAMEBUFFER_MISSING_ATTACHMENT"

    goto :goto_11

    :pswitch_3b
    const-string v0, "FRAMEBUFFER_DRAW_BUFFER"

    goto :goto_11

    :pswitch_3e
    const-string v0, "FRAMEBUFFER_READ_BUFFER"

    goto :goto_11

    :pswitch_41
    const-string v0, "FRAMEBUFFER_UNSUPPORTED"

    goto :goto_11

    :pswitch_44
    const-string v0, "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_11

    :cond_47
    return-void

    :pswitch_data_48
    .packed-switch 0x8cd6
        :pswitch_35
        :pswitch_38
        :pswitch_11
        :pswitch_44
        :pswitch_32
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
    .end packed-switch
.end method

.method static synthetic a(Lcom/instagram/creation/video/gl/d;)[F
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    return-object v0
.end method

.method private a([FIIII)[F
    .registers 12

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->h:[F

    const/4 v1, 0x0

    aget v1, p1, v1

    int-to-float v2, p2

    mul-float/2addr v1, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-float v3, p3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p1, v2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p1, v3

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p1, v3

    add-float/2addr v2, v3

    const/4 v3, 0x3

    aget v3, p1, v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p1, v4

    int-to-float v5, p3

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xf

    aget v4, p1, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    div-float/2addr v1, v3

    aput v1, v0, v4

    const/4 v1, 0x1

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    int-to-float v2, p4

    mul-float/2addr v1, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-float v3, p5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p1, v2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-float v3, p4

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p1, v3

    int-to-float v4, p5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p1, v3

    add-float/2addr v2, v3

    const/4 v3, 0x3

    aget v3, p1, v3

    int-to-float v4, p4

    mul-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p1, v4

    int-to-float v5, p5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xf

    aget v4, p1, v4

    add-float/2addr v3, v4

    const/4 v4, 0x2

    div-float/2addr v1, v3

    aput v1, v0, v4

    const/4 v1, 0x3

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method private static b(I)Ljava/nio/ByteBuffer;
    .registers 3

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private b(FFFF)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/d;->i()V

    invoke-virtual {p0, p1, p2}, Lcom/instagram/creation/video/gl/d;->a(FF)V

    invoke-virtual {p0, p3, p4}, Lcom/instagram/creation/video/gl/d;->b(FF)V

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/d;->j()V

    iget v0, p0, Lcom/instagram/creation/video/gl/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/creation/video/gl/d;->b:I

    return-void
.end method

.method private b(Lcom/instagram/creation/video/gl/a;IIII)V
    .registers 14

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v6, 0x3f00

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    invoke-static {v0}, Lcom/instagram/creation/video/gl/d;->b([F)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->f()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->d()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->e()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->b()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->d()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->c()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->e()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/instagram/creation/video/gl/d;->c(FFFF)V

    :goto_3d
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/instagram/creation/video/gl/d;->b(FFFF)V

    :cond_44
    :goto_44
    return-void

    :cond_45
    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->d()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->e()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/instagram/creation/video/gl/d;->c(FFFF)V

    goto :goto_3d

    :cond_5f
    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/instagram/creation/video/gl/d;->a([FIIII)[F

    move-result-object v0

    aget v1, v0, v7

    add-float/2addr v1, v6

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    add-float/2addr v3, v6

    float-to-int v3, v3

    sub-int v4, v3, v1

    const/4 v3, 0x3

    aget v0, v0, v3

    add-float/2addr v0, v6

    float-to-int v0, v0

    sub-int v5, v0, v2

    if-lez v4, :cond_44

    if-lez v5, :cond_44

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v3, v7

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    iget v0, p0, Lcom/instagram/creation/video/gl/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/creation/video/gl/d;->c:I

    goto :goto_44
.end method

.method private b(Lcom/instagram/creation/video/gl/x;)V
    .registers 8

    const/4 v3, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/d;->y:Lcom/instagram/creation/video/gl/x;

    if-nez v2, :cond_1b

    if-eqz p1, :cond_1b

    iget-object v2, p0, Lcom/instagram/creation/video/gl/d;->x:[I

    invoke-static {v3, v2}, Lcom/instagram/creation/video/gl/h;->b(I[I)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/d;->x:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    :cond_1b
    iget-object v2, p0, Lcom/instagram/creation/video/gl/d;->y:Lcom/instagram/creation/video/gl/x;

    if-eqz v2, :cond_29

    if-nez p1, :cond_29

    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/d;->x:[I

    invoke-interface {v0, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    :cond_29
    iput-object p1, p0, Lcom/instagram/creation/video/gl/d;->y:Lcom/instagram/creation/video/gl/x;

    if-nez p1, :cond_35

    iget v0, p0, Lcom/instagram/creation/video/gl/d;->u:I

    iget v1, p0, Lcom/instagram/creation/video/gl/d;->v:I

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/video/gl/d;->a(II)V

    :goto_34
    return-void

    :cond_35
    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/x;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/x;->c()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/instagram/creation/video/gl/d;->a(II)V

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/x;->h()Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {p1, p0}, Lcom/instagram/creation/video/gl/x;->c(Lcom/instagram/creation/video/gl/c;)V

    :cond_49
    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/x;->a()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    invoke-static {v0}, Lcom/instagram/creation/video/gl/d;->a(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    goto :goto_34
.end method

.method private b(Lcom/instagram/creation/video/gl/a;)Z
    .registers 5

    invoke-virtual {p1, p0}, Lcom/instagram/creation/video/gl/a;->b(Lcom/instagram/creation/video/gl/c;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->g()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->k:Lcom/instagram/creation/video/gl/f;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/gl/f;->a(I)V

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->a()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static b([F)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const v4, 0x3727c5ac

    const/4 v2, 0x4

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_2a

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_2a

    aget v2, p0, v0

    const v3, -0x48d83a54

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2a

    const/4 v2, 0x5

    aget v2, p0, v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2b

    :cond_2a
    move v0, v1

    :cond_2b
    return v0
.end method

.method private c(FFFF)V
    .registers 10

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->g:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->g:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->g:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->g:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->g:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->g:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->g:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    return-void
.end method

.method private c([F)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    return-void
.end method

.method private g()V
    .registers 10

    const v8, 0x8892

    const/4 v7, 0x1

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v1, Lcom/instagram/creation/video/gl/d;->d:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Lcom/instagram/creation/video/gl/d;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v2, Lcom/instagram/creation/video/gl/d;->d:[F

    sget-object v3, Lcom/instagram/creation/video/gl/d;->d:[F

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v2, v7, [I

    invoke-static {v7, v2}, Lcom/instagram/creation/video/gl/h;->b(I[I)V

    aget v2, v2, v4

    iput v2, p0, Lcom/instagram/creation/video/gl/d;->j:I

    iget v2, p0, Lcom/instagram/creation/video/gl/d;->j:I

    invoke-interface {v0, v8, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    const v3, 0x88e4

    invoke-interface {v0, v8, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-interface {v0, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    invoke-interface {v0, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    const v1, 0x84c1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    invoke-interface {v0, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    const v1, 0x84c0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    return-void
.end method

.method private h()Lcom/instagram/creation/video/gl/e;
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->o:Lcom/instagram/creation/video/gl/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->o:Lcom/instagram/creation/video/gl/e;

    iget-object v1, v0, Lcom/instagram/creation/video/gl/e;->c:Lcom/instagram/creation/video/gl/e;

    iput-object v1, p0, Lcom/instagram/creation/video/gl/d;->o:Lcom/instagram/creation/video/gl/e;

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/instagram/creation/video/gl/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/gl/e;-><init>(B)V

    goto :goto_a
.end method

.method private i()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->r:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private j()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->r:[F

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/d;->m:F

    return v0
.end method

.method public final a(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/instagram/creation/video/l/m;->a(Z)V

    iput p1, p0, Lcom/instagram/creation/video/gl/d;->m:F

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final a(FF)V
    .registers 8

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xd

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xe

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xf

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public final a(FFFF)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->k:Lcom/instagram/creation/video/gl/f;

    const/high16 v1, -0x100

    iget v2, p0, Lcom/instagram/creation/video/gl/d;->m:F

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/gl/f;->a(IF)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/d;->i()V

    invoke-virtual {p0, p1, p2}, Lcom/instagram/creation/video/gl/d;->a(FF)V

    invoke-virtual {p0, p3, p4}, Lcom/instagram/creation/video/gl/d;->b(FF)V

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/d;->j()V

    iget v0, p0, Lcom/instagram/creation/video/gl/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/creation/video/gl/d;->a:I

    return-void
.end method

.method public final a(I)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/d;->h()Lcom/instagram/creation/video/gl/e;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/instagram/creation/video/gl/d;->m:F

    iput v1, v0, Lcom/instagram/creation/video/gl/e;->a:F

    :goto_d
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    iget-object v2, v0, Lcom/instagram/creation/video/gl/e;->b:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1a
    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_20
    const/high16 v1, -0x4080

    iput v1, v0, Lcom/instagram/creation/video/gl/e;->a:F

    goto :goto_d

    :cond_25
    iget-object v1, v0, Lcom/instagram/creation/video/gl/e;->b:[F

    const/high16 v2, -0x80

    aput v2, v1, v4

    goto :goto_1a
.end method

.method public final a(II)V
    .registers 9

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-ltz p1, :cond_43

    if-ltz p2, :cond_43

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/instagram/creation/video/l/m;->a(Z)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->y:Lcom/instagram/creation/video/gl/x;

    if-nez v0, :cond_14

    iput p1, p0, Lcom/instagram/creation/video/gl/d;->u:I

    iput p2, p0, Lcom/instagram/creation/video/gl/d;->v:I

    :cond_14
    iput v5, p0, Lcom/instagram/creation/video/gl/d;->m:F

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1, v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-static {v0, v4, v2, v4, v3}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/d;->y:Lcom/instagram/creation/video/gl/x;

    if-nez v2, :cond_42

    int-to-float v2, p2

    invoke-static {v0, v1, v4, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v2, -0x4080

    invoke-static {v0, v1, v5, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_42
    return-void

    :cond_43
    move v0, v1

    goto :goto_9
.end method

.method public final a(Lcom/instagram/creation/video/gl/a;IIII)V
    .registers 13

    iget v6, p0, Lcom/instagram/creation/video/gl/d;->m:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/instagram/creation/video/gl/d;->a(Lcom/instagram/creation/video/gl/a;IIIIF)V

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/a;[FIIII)V
    .registers 11

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->k:Lcom/instagram/creation/video/gl/f;

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/d;->w:Z

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->m()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/instagram/creation/video/gl/d;->m:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_20

    :cond_15
    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/gl/f;->a(Z)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/gl/d;->b(Lcom/instagram/creation/video/gl/a;)Z

    move-result v0

    if-nez v0, :cond_22

    :goto_1f
    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_16

    :cond_22
    invoke-direct {p0, p2}, Lcom/instagram/creation/video/gl/d;->c([F)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->k:Lcom/instagram/creation/video/gl/f;

    iget v1, p0, Lcom/instagram/creation/video/gl/d;->m:F

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/f;->a(F)V

    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/instagram/creation/video/gl/d;->b(FFFF)V

    goto :goto_1f
.end method

.method public final a(Lcom/instagram/creation/video/gl/x;)V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/d;->b()V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->y:Lcom/instagram/creation/video/gl/x;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/gl/d;->b(Lcom/instagram/creation/video/gl/x;)V

    return-void
.end method

.method public final a([F)V
    .registers 7

    const/4 v2, 0x0

    if-eqz p1, :cond_20

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    :goto_18
    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    goto :goto_18
.end method

.method public final a(Lcom/instagram/creation/video/gl/a;)Z
    .registers 5

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->s:Lcom/instagram/creation/video/l/d;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/instagram/creation/video/gl/a;->h()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    monitor-exit v1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->s:Lcom/instagram/creation/video/l/d;

    iget v2, p1, Lcom/instagram/creation/video/gl/a;->a:I

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/l/d;->a(I)V

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    goto :goto_b

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/gl/d;->a(I)V

    return-void
.end method

.method public final b(F)V
    .registers 11

    const/16 v8, 0x10

    const/4 v3, 0x0

    const/4 v1, 0x0

    cmpl-float v0, p1, v3

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->r:[F

    const/high16 v5, 0x3f80

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v4, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8
.end method

.method public final b(FF)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->f:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, p1, p2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/e;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/gl/e;->a(Lcom/instagram/creation/video/gl/d;)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/gl/d;->a(Lcom/instagram/creation/video/gl/e;)V

    return-void
.end method

.method public final d()Ljavax/microedition/khronos/opengles/GL11;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public final e()V
    .registers 6

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->s:Lcom/instagram/creation/video/l/d;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->s:Lcom/instagram/creation/video/l/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/d;->a()I

    move-result v2

    if-lez v2, :cond_1b

    iget-object v2, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/d;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/d;->b()[I

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/instagram/creation/video/gl/h;->a(Ljavax/microedition/khronos/opengles/GL11;I[I)V

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/d;->c()V

    :cond_1b
    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->t:Lcom/instagram/creation/video/l/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/d;->a()I

    move-result v2

    if-lez v2, :cond_33

    iget-object v2, p0, Lcom/instagram/creation/video/gl/d;->e:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/d;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/d;->b()[I

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/instagram/creation/video/gl/h;->b(Ljavax/microedition/khronos/opengles/GL11;I[I)V

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/d;->c()V

    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/d;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/x;

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/gl/d;->b(Lcom/instagram/creation/video/gl/x;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/d;->c()V

    return-void
.end method
