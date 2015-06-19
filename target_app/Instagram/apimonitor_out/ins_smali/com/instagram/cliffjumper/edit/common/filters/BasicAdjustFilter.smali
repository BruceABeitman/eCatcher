.class public Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;
.super Lcom/instagram/filterkit/filter/BaseCachingFilter;
.source "BasicAdjustFilter.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private static final a:Ljava/lang/Class;
.field private static final c:Lcom/instagram/cliffjumper/util/a;
.field private static final d:[F
.field private static final e:[F
.field private A:Lcom/instagram/filterkit/e/b;
.field private B:Lcom/instagram/filterkit/e/a;
.field private C:Z
.field private final f:Ljava/nio/FloatBuffer;
.field private final g:Ljava/nio/FloatBuffer;
.field private final h:Ljava/nio/FloatBuffer;
.field private final i:Ljava/nio/FloatBuffer;
.field private final j:Ljava/nio/FloatBuffer;
.field private final k:Ljava/nio/FloatBuffer;
.field private final l:Ljava/nio/FloatBuffer;
.field private final m:Ljava/nio/FloatBuffer;
.field private final n:Ljava/nio/FloatBuffer;
.field private o:I
.field private p:I
.field private q:I
.field private r:I
.field private s:I
.field private t:I
.field private u:I
.field private v:I
.field private w:Lcom/instagram/filterkit/b/b;
.field private x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
.field private y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
.field private z:Lcom/instagram/filterkit/e/b;
.method static constructor <clinit>()V
.registers 5
const/16 v1, 0xe
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/e;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/filters/e;-><init>()V
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->CREATOR:Landroid/os/Parcelable$Creator;
const-class v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a:Ljava/lang/Class;
invoke-static {}, Lcom/instagram/cliffjumper/util/e;->a()Lcom/instagram/cliffjumper/util/a;
move-result-object v0
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c:Lcom/instagram/cliffjumper/util/a;
new-array v0, v1, [F
fill-array-data v0, :array_42
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d:[F
new-array v0, v1, [F
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e:[F
const/4 v0, 0x0
:goto_1f
const/4 v1, 0x7
if-ge v0, v1, :cond_41
sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e:[F
mul-int/lit8 v2, v0, 0x2
sget-object v3, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d:[F
mul-int/lit8 v4, v0, 0x2
add-int/lit8 v4, v4, 0x1
aget v3, v3, v4
aput v3, v1, v2
sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e:[F
mul-int/lit8 v2, v0, 0x2
add-int/lit8 v2, v2, 0x1
sget-object v3, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d:[F
mul-int/lit8 v4, v0, 0x2
aget v3, v3, v4
aput v3, v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_1f
:cond_41
return-void
:array_42
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x6bt 0xe6t 0x7at 0x3dt
0x1ct 0xd1t 0x3dt 0x3et
0xcft 0xbdt 0x27t 0x3et
0x56t 0x46t 0xbbt 0x3et
0x37t 0x54t 0xa4t 0x3et
0xcct 0xct 0x7t 0x3ft
0x41t 0x63t 0xfet 0x3et
0xc2t 0xc3t 0x28t 0x3ft
0xdt 0xc1t 0x35t 0x3ft
0x48t 0xc4t 0x4ct 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
.end array-data
.end method
.method public constructor <init>()V
.registers 4
const/4 v1, 0x1
invoke-direct {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>()V
invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f:Ljava/nio/FloatBuffer;
invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g:Ljava/nio/FloatBuffer;
invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h:Ljava/nio/FloatBuffer;
invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i:Ljava/nio/FloatBuffer;
invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->j:Ljava/nio/FloatBuffer;
invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->k:Ljava/nio/FloatBuffer;
invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->l:Ljava/nio/FloatBuffer;
invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->m:Ljava/nio/FloatBuffer;
invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n:Ljava/nio/FloatBuffer;
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
const v2, 0x3c1374bc
invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
const v1, 0x3f4ccccd
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(F)V
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 6
const/4 v1, 0x0
const/4 v0, 0x1
invoke-direct {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>(Landroid/os/Parcel;)V
invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v2
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f:Ljava/nio/FloatBuffer;
invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v2
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g:Ljava/nio/FloatBuffer;
invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v2
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h:Ljava/nio/FloatBuffer;
invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v2
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i:Ljava/nio/FloatBuffer;
invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v2
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->j:Ljava/nio/FloatBuffer;
invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v2
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->k:Ljava/nio/FloatBuffer;
invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v2
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->l:Ljava/nio/FloatBuffer;
invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v2
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->m:Ljava/nio/FloatBuffer;
invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v2
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n:Ljava/nio/FloatBuffer;
new-instance v2, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-direct {v2}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;-><init>()V
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
new-instance v2, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-direct {v2}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;-><init>()V
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n:Ljava/nio/FloatBuffer;
const v3, 0x3c1374bc
invoke-virtual {v2, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
const v3, 0x3f4ccccd
invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(F)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
if-ne v2, v0, :cond_9b
:goto_5f
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b_(Z)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a(I)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b(I)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c(I)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d(I)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e(I)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f(I)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g(I)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h(I)V
return-void
:cond_9b
move v0, v1
goto :goto_5f
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method private a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
.registers 9
const v3, 0x3c1374bc
const-string v0, "brightness"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f:Ljava/nio/FloatBuffer;
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
const-string v0, "contrast"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g:Ljava/nio/FloatBuffer;
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
const-string v0, "saturation"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h:Ljava/nio/FloatBuffer;
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
const-string v0, "temperature"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i:Ljava/nio/FloatBuffer;
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
const-string v0, "vignette"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->j:Ljava/nio/FloatBuffer;
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
const-string v0, "highlights"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->k:Ljava/nio/FloatBuffer;
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
const-string v0, "shadows"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->l:Ljava/nio/FloatBuffer;
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
const-string v0, "sharpen"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->m:Ljava/nio/FloatBuffer;
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
const-string v0, "TOOL_ON_EPSILON"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n:Ljava/nio/FloatBuffer;
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
const-string v0, "image"
invoke-interface {p3}, Lcom/instagram/filterkit/e/a;->b()I
move-result v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V
instance-of v0, p3, Lcom/instagram/filterkit/e/b;
if-eqz v0, :cond_55
move-object v0, p3
check-cast v0, Lcom/instagram/filterkit/e/b;
invoke-virtual {p2, v0, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)Z
:cond_55
invoke-direct {p0, p2, p3, p4}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/b;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->z:Lcom/instagram/filterkit/e/b;
const-string v0, "sharpenBlur"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->z:Lcom/instagram/filterkit/e/b;
invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->b()I
move-result v1
sget-object v2, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;
invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->u:I
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
int-to-float v0, v0
cmpl-float v0, v0, v3
if-gtz v0, :cond_7e
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->t:I
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
int-to-float v0, v0
cmpl-float v0, v0, v3
if-lez v0, :cond_9a
:cond_7e
invoke-direct {p0, p2, p3, p4}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/b;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->A:Lcom/instagram/filterkit/e/b;
const-string v0, "shadowsBlur"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->A:Lcom/instagram/filterkit/e/b;
invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->b()I
move-result v1
sget-object v2, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;
invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V
const-string v0, "splines"
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->l()I
move-result v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V
:cond_9a
instance-of v0, p3, Lcom/instagram/filterkit/e/b;
if-eqz v0, :cond_a3
check-cast p3, Lcom/instagram/filterkit/e/b;
invoke-virtual {p2, p3, p0}, Lcom/instagram/filterkit/d/c;->b(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)Z
:cond_a3
return-void
.end method
.method private b(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/b;
.registers 7
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c()Lcom/instagram/filterkit/e/b;
move-result-object v0
if-eqz v0, :cond_12
invoke-interface {v0}, Lcom/instagram/filterkit/e/b;->c()I
move-result v1
invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I
move-result v2
if-eq v1, v2, :cond_22
:cond_12
invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I
move-result v0
invoke-static {v0}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;
move-result-object v0
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-virtual {v1, p1, p2, v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/e/b;
:cond_22
return-object v0
.end method
.method private c(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/b;
.registers 8
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c()Lcom/instagram/filterkit/e/b;
move-result-object v0
if-eqz v0, :cond_20
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->y_()Z
move-result v1
if-eqz v1, :cond_1a
invoke-interface {v0}, Lcom/instagram/filterkit/e/b;->c()I
move-result v1
invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I
move-result v2
if-eq v1, v2, :cond_20
:cond_1a
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a_(Lcom/instagram/filterkit/d/c;)V
const/4 v0, 0x0
:cond_20
if-eqz v0, :cond_2a
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->z_()Z
move-result v1
if-eqz v1, :cond_4e
:cond_2a
invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I
move-result v0
invoke-static {v0}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;
move-result-object v0
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
const v2, 0x3f99999a
invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I
move-result v3
int-to-float v3, v3
mul-float/2addr v2, v3
invoke-static {}, Lcom/instagram/creation/a/a;->a()I
move-result v3
int-to-float v3, v3
div-float/2addr v2, v3
invoke-virtual {v1, v2}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(F)V
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-virtual {v1, p1, p2, v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/e/b;
:cond_4e
return-object v0
.end method
.method private l()I
.registers 4
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;
if-nez v0, :cond_2c
const/16 v0, 0x200
invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v0
new-instance v1, Lcom/instagram/cliffjumper/edit/common/filters/i;
sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d:[F
invoke-direct {v1, v2}, Lcom/instagram/cliffjumper/edit/common/filters/i;-><init>([F)V
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/instagram/cliffjumper/edit/common/filters/i;->a(Ljava/nio/ByteBuffer;I)V
new-instance v1, Lcom/instagram/cliffjumper/edit/common/filters/i;
sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e:[F
invoke-direct {v1, v2}, Lcom/instagram/cliffjumper/edit/common/filters/i;-><init>([F)V
const/16 v2, 0x100
invoke-virtual {v1, v0, v2}, Lcom/instagram/cliffjumper/edit/common/filters/i;->a(Ljava/nio/ByteBuffer;I)V
new-instance v1, Lcom/instagram/filterkit/d/b;
invoke-direct {v1}, Lcom/instagram/filterkit/d/b;-><init>()V
invoke-static {v0}, Lcom/instagram/filterkit/d/b;->a(Ljava/nio/Buffer;)Lcom/instagram/filterkit/e/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;
:cond_2c
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;
invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->b()I
move-result v0
return v0
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->o:I
return v0
.end method
.method public final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
.registers 9
const/4 v4, 0x0
const/4 v3, 0x0
invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;)Z
move-result v0
if-nez v0, :cond_22
const-string v0, "BasicAdjust"
invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_18
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Could not compile Basic Adjust program."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
new-instance v1, Lcom/instagram/filterkit/b/b;
invoke-direct {v1, v0}, Lcom/instagram/filterkit/b/b;-><init>(I)V
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;
invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->b(Lcom/instagram/filterkit/d/e;)V
:cond_22
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;
invoke-direct {p0, v0, p1, p2, p3}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
const-string v0, "BasicAdjustFilter.render:setFilterParams"
invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;
const-string v1, "position"
sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c:Lcom/instagram/cliffjumper/util/a;
iget-object v2, v2, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;
const-string v1, "transformedTextureCoordinate"
sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c:Lcom/instagram/cliffjumper/util/a;
iget-object v2, v2, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;
const-string v1, "staticTextureCoordinate"
sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c:Lcom/instagram/cliffjumper/util/a;
iget-object v2, v2, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z
const-string v0, "BasicAdjustFilter.render:setCoordinates"
invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z
invoke-virtual {p0, p1, p3}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/filterkit/e/c;->c()I
move-result v1
invoke-interface {v0}, Lcom/instagram/filterkit/e/c;->d()I
move-result v2
invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V
const-string v1, "BasicAdjustFilter.render:glViewport"
invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z
const v1, 0x8d40
invoke-interface {v0}, Lcom/instagram/filterkit/e/c;->a()I
move-result v2
invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V
const-string v1, "BasicAdjustFilter.render:glBindFramebuffer"
invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;
invoke-virtual {v1}, Lcom/instagram/filterkit/b/b;->b()V
const-string v1, "BasicAdjustFilter.render:prepareToRender"
invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z
const/4 v1, 0x5
const/4 v2, 0x4
invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V
const-string v1, "BasicAdjustFilter.render:glDrawArrays"
invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->z:Lcom/instagram/filterkit/e/b;
invoke-virtual {p1, v1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->A:Lcom/instagram/filterkit/e/b;
invoke-virtual {p1, v1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V
iput-object v4, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->z:Lcom/instagram/filterkit/e/b;
iput-object v4, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->A:Lcom/instagram/filterkit/e/b;
invoke-virtual {p1, p2, v4}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V
return-object v0
.end method
.method public final a(I)V
.registers 6
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->o:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
int-to-float v2, p1
const/high16 v3, 0x42c8
div-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V
return-void
.end method
.method public final a(Lcom/instagram/filterkit/d/c;)V
.registers 4
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a(Lcom/instagram/filterkit/d/c;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;
if-eqz v0, :cond_16
invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;
invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I
move-result v0
invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;
:cond_16
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;
if-eqz v0, :cond_2a
new-instance v0, Lcom/instagram/filterkit/d/b;
invoke-direct {v0}, Lcom/instagram/filterkit/d/b;-><init>()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;
invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->b()I
move-result v0
invoke-static {v0}, Lcom/instagram/filterkit/d/b;->a(I)V
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;
:cond_2a
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->p:I
return v0
.end method
.method public final b(I)V
.registers 6
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->p:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
int-to-float v2, p1
const/high16 v3, 0x42c8
div-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V
return-void
.end method
.method public final b_(Z)V
.registers 3
iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->C:Z
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(Z)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(Z)V
return-void
.end method
.method public final c(I)V
.registers 6
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->q:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
int-to-float v2, p1
const/high16 v3, 0x42c8
div-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V
return-void
.end method
.method public final d(I)V
.registers 6
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->r:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
int-to-float v2, p1
const/high16 v3, 0x42c8
div-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V
return-void
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->r:I
return v0
.end method
.method public final e(I)V
.registers 6
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->s:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->j:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
int-to-float v2, p1
const/high16 v3, 0x42c8
div-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V
return-void
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->s:I
return v0
.end method
.method public final f(I)V
.registers 6
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->t:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->k:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
int-to-float v2, p1
const/high16 v3, 0x42c8
div-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V
return-void
.end method
.method public final g()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->t:I
return v0
.end method
.method public final g(I)V
.registers 6
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->u:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->l:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
int-to-float v2, p1
const/high16 v3, 0x42c8
div-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V
return-void
.end method
.method public final h()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->u:I
return v0
.end method
.method public final h(I)V
.registers 6
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->v:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->m:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
int-to-float v2, p1
const/high16 v3, 0x42c8
div-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V
return-void
.end method
.method public final i()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->v:I
return v0
.end method
.method public final j()Z
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->o:I
if-nez v0, :cond_20
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->p:I
if-nez v0, :cond_20
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->q:I
if-nez v0, :cond_20
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->r:I
if-nez v0, :cond_20
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->s:I
if-nez v0, :cond_20
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->t:I
if-nez v0, :cond_20
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->u:I
if-nez v0, :cond_20
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->v:I
if-eqz v0, :cond_22
:cond_20
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method public final w_()V
.registers 2
invoke-super {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->w_()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->w_()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->w_()V
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->writeToParcel(Landroid/os/Parcel;I)V
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->C:Z
if-eqz v0, :cond_34
const/4 v0, 0x1
:goto_8
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->o:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->p:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->q:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->r:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->s:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->t:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->u:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->v:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
:cond_34
const/4 v0, 0x0
goto :goto_8
.end method
.method public final x_()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->q:I
return v0
.end method