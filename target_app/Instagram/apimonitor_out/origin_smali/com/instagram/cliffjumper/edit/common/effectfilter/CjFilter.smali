.class public Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
.super Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;
.source "CjFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Z

.field private final d:Ljava/nio/IntBuffer;

.field private final e:Ljava/nio/IntBuffer;

.field private final f:Ljava/nio/IntBuffer;

.field private final g:Ljava/nio/FloatBuffer;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/instagram/cliffjumper/util/Matrix3;

.field private l:Z

.field private m:I

.field private n:I

.field private o:F

.field private p:I

.field private q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

.field private r:Ljava/nio/FloatBuffer;

.field private s:Ljava/nio/FloatBuffer;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/b;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/b;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>()V

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->d:Ljava/nio/IntBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->e:Ljava/nio/IntBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->f:Ljava/nio/IntBuffer;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g:Ljava/nio/FloatBuffer;

    new-instance v0, Lcom/instagram/cliffjumper/util/Matrix3;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/util/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k:Lcom/instagram/cliffjumper/util/Matrix3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->r:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->s:Ljava/nio/FloatBuffer;

    iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h:I

    iput-object p3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j:Ljava/util/List;

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->i:Ljava/lang/String;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    invoke-virtual {p0, v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>(Landroid/os/Parcel;)V

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->d:Ljava/nio/IntBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->e:Ljava/nio/IntBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->f:Ljava/nio/IntBuffer;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g:Ljava/nio/FloatBuffer;

    new-instance v0, Lcom/instagram/cliffjumper/util/Matrix3;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/util/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k:Lcom/instagram/cliffjumper/util/Matrix3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->r:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->s:Ljava/nio/FloatBuffer;

    iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j:Ljava/util/List;

    sget-object v3, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_85

    move v0, v1

    :goto_72
    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_87

    move v0, v1

    :goto_7c
    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a_(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    return-void

    :cond_85
    move v0, v2

    goto :goto_72

    :cond_87
    move v0, v2

    goto :goto_7c
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .registers 3

    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->o:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l:Z

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n()V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l:Z

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a:Z

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n()V

    return-void
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    return-void
.end method

.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
    .registers 11

    const/4 v1, 0x0

    const/high16 v6, -0x4080

    const/4 v5, 0x0

    const/high16 v3, 0x3f80

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l:Z

    if-eqz v0, :cond_1a

    iput-boolean v5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l:Z

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->o:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k:Lcom/instagram/cliffjumper/util/Matrix3;

    invoke-static {v0, v2}, Lcom/instagram/cliffjumper/util/c;->a(FLcom/instagram/cliffjumper/util/Matrix3;)V

    :cond_1a
    const-string v0, "u_enableTextureTransform"

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    const-string v0, "u_textureTransform"

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k:Lcom/instagram/cliffjumper/util/Matrix3;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/util/Matrix3;->b()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    const-string v0, "u_filterStrength"

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    const-string v0, "u_mirrored"

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->e:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    const-string v0, "u_flipped"

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->f:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    const-string v0, "image"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->d:Z

    if-eqz v0, :cond_53

    :goto_52
    return-void

    :cond_53
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a()F

    move-result v2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b()F

    move-result v0

    cmpl-float v4, v2, v6

    if-eqz v4, :cond_6f

    cmpl-float v4, v0, v6

    if-nez v4, :cond_ab

    :cond_6f
    move v0, v1

    move v1, v3

    :goto_71
    sub-float v2, v1, v0

    div-float v2, v3, v2

    const/high16 v4, 0x4040

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->r:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    mul-float v4, v1, v2

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    sget-object v4, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    sget-object v2, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    sget-object v2, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    sget-object v1, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    const-string v0, "brightness_correction_mult"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->r:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    const-string v0, "brightness_correction_add"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    goto :goto_52

    :cond_ab
    move v1, v2

    goto :goto_71

    :cond_ad
    move v0, v1

    move v1, v3

    goto :goto_71
.end method

.method public final a_(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    return-void
.end method

.method protected final b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
    .registers 6

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Lcom/instagram/filterkit/b/b;

    invoke-direct {v1, v0}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;

    iget-object v3, v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    goto :goto_15

    :cond_31
    const-string v0, "noop"

    const-string v2, "shared/noop.png"

    invoke-virtual {p1, p0, v2}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_9
.end method

.method public final b(I)V
    .registers 3

    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l:Z

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n()V

    return-void
.end method

.method public final b(Z)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a:Z

    iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a:Z

    if-eqz v2, :cond_23

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_14

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_20

    :cond_14
    move v2, v1

    :goto_15
    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v1, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->f:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1, v0}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    return-void

    :cond_20
    move v2, v0

    move v0, v1

    goto :goto_15

    :cond_23
    move v0, v1

    move v2, v1

    goto :goto_15
.end method

.method public final c(I)V
    .registers 6

    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->p:I

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n()V

    return-void
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n:I

    return v0
.end method

.method public final h()F
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->o:F

    return v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    return v0
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a:Z

    return v0
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->p:I

    return v0
.end method

.method public final l()Z
    .registers 3

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->p:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->p:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final m()I
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h:I

    return v0
.end method

.method protected final u_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final v_()V
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n:I

    add-int/lit8 v0, v0, -0x5a

    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->o:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a:Z

    if-eqz v0, :cond_38

    move v0, v1

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    if-eqz v0, :cond_3a

    :goto_34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_38
    move v0, v2

    goto :goto_2d

    :cond_3a
    move v1, v2

    goto :goto_34
.end method
