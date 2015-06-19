.class public Lcom/twidroid/ui/themes/r;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static aQ:Z = false
.field public static final aS:I = 0x66000000
.field private static c:Ljava/lang/String;
.field public A:I
.field public B:I
.field public C:[I
.field public D:I
.field public E:I
.field public F:I
.field public G:I
.field public H:I
.field public I:I
.field public J:I
.field public K:I
.field public L:I
.field public M:I
.field public N:[I
.field public O:I
.field public P:I
.field public Q:I
.field public R:I
.field public S:I
.field public T:[I
.field public U:I
.field public V:I
.field public W:I
.field public X:I
.field public Y:I
.field public Z:I
.field private a:Z
.field public aA:Z
.field public aB:Z
.field public aC:Z
.field public aD:I
.field public aE:I
.field public aF:I
.field public aG:I
.field public aH:Ljava/lang/String;
.field public aI:Ljava/lang/String;
.field public aJ:Ljava/lang/String;
.field public aK:Ljava/lang/String;
.field public aL:Ljava/lang/String;
.field public aM:Ljava/lang/String;
.field public aN:Ljava/lang/String;
.field public aO:Ljava/lang/String;
.field public aP:Ljava/lang/String;
.field  aR:Landroid/text/style/ForegroundColorSpan;
.field public aa:I
.field public ab:Z
.field public ac:I
.field public ad:[I
.field public ae:I
.field public af:I
.field public ag:I
.field public ah:I
.field public ai:I
.field public aj:I
.field public ak:I
.field public al:I
.field public am:I
.field public an:I
.field public ao:I
.field public ap:I
.field public aq:I
.field public ar:I
.field public as:I
.field public at:I
.field public au:Z
.field public av:[I
.field public aw:[I
.field public ax:I
.field public ay:I
.field public az:Z
.field private b:I
.field private d:Landroid/text/style/StyleSpan;
.field public z:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/twidroid/ui/themes/r;->aQ:Z
const-string v0, "bright"
sput-object v0, Lcom/twidroid/ui/themes/r;->c:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/16 v1, 0xe
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/twidroid/ui/themes/r;->aB:Z
iput-boolean v0, p0, Lcom/twidroid/ui/themes/r;->aC:Z
const/16 v0, 0x12
iput v0, p0, Lcom/twidroid/ui/themes/r;->aD:I
iput v1, p0, Lcom/twidroid/ui/themes/r;->aE:I
const/16 v0, 0xa
iput v0, p0, Lcom/twidroid/ui/themes/r;->aF:I
iput v1, p0, Lcom/twidroid/ui/themes/r;->aG:I
return-void
.end method
.method public constructor <init>(Lcom/twidroid/d/v;)V
.registers 13
const/4 v10, 0x0
const/4 v9, 0x2
const/4 v8, 0x1
const/4 v7, 0x0
const/4 v6, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v10, p0, Lcom/twidroid/ui/themes/r;->aB:Z
iput-boolean v10, p0, Lcom/twidroid/ui/themes/r;->aC:Z
const/16 v0, 0x12
iput v0, p0, Lcom/twidroid/ui/themes/r;->aD:I
const/16 v0, 0xe
iput v0, p0, Lcom/twidroid/ui/themes/r;->aE:I
const/16 v0, 0xa
iput v0, p0, Lcom/twidroid/ui/themes/r;->aF:I
const/16 v0, 0xe
iput v0, p0, Lcom/twidroid/ui/themes/r;->aG:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->h()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/ui/themes/r;->c:Ljava/lang/String;
invoke-virtual {p1}, Lcom/twidroid/d/v;->p()Ljava/lang/String;
move-result-object v0
const-string v1, "bubble"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/ui/themes/r;->aB:Z
invoke-virtual {p1}, Lcom/twidroid/d/v;->bb()Z
move-result v0
sput-boolean v0, Lcom/twidroid/ui/themes/r;->aQ:Z
invoke-virtual {p1}, Lcom/twidroid/d/v;->l()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->F:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->l()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->B:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->l()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->ar:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->l()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->as:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->k()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->M:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->k()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->ak:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->g()I
move-result v0
invoke-virtual {p1}, Lcom/twidroid/d/v;->l()I
move-result v1
invoke-static {v0, v1}, Lcom/twidroid/ui/themes/r;->a(II)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->O:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->g()I
move-result v0
invoke-virtual {p1}, Lcom/twidroid/d/v;->l()I
move-result v1
invoke-static {v0, v1}, Lcom/twidroid/ui/themes/r;->a(II)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->al:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->k()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->J:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->k()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->aj:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->az()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->aE:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->k()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->K:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->k()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->ae:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->k()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->A:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->k()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->I:I
invoke-virtual {p1}, Lcom/twidroid/d/v;->g()I
move-result v2
const/4 v0, 0x3
new-array v3, v0, [F
invoke-static {v2}, Landroid/graphics/Color;->red(I)I
move-result v0
invoke-static {v2}, Landroid/graphics/Color;->green(I)I
move-result v1
invoke-static {v2}, Landroid/graphics/Color;->blue(I)I
move-result v4
invoke-static {v0, v1, v4, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V
invoke-virtual {v3}, [F->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [F
invoke-virtual {v3}, [F->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, [F
aget v4, v3, v9
const v5, 0x3f333333
mul-float/2addr v4, v5
aput v4, v0, v9
aget v4, v0, v9
const v5, 0x3f333333
mul-float/2addr v4, v5
aput v4, v1, v9
const/4 v4, 0x3
new-array v4, v4, [I
iput-object v4, p0, Lcom/twidroid/ui/themes/r;->C:[I
iget-object v4, p0, Lcom/twidroid/ui/themes/r;->C:[I
invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I
move-result v3
aput v3, v4, v10
iget-object v3, p0, Lcom/twidroid/ui/themes/r;->C:[I
invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I
move-result v0
aput v0, v3, v8
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->C:[I
invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I
move-result v1
aput v1, v0, v9
const/4 v0, 0x6
new-array v0, v0, [I
fill-array-data v0, :array_196
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->T:[I
invoke-direct {p0, v2}, Lcom/twidroid/ui/themes/r;->c(I)V
iput-boolean v8, p0, Lcom/twidroid/ui/themes/r;->au:Z
iput-boolean v10, p0, Lcom/twidroid/ui/themes/r;->ab:Z
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/r;->a(I)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->am:I
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/r;->a(I)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->ap:I
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/r;->a(I)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->aq:I
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/r;->a(I)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->an:I
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/r;->a(I)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->ao:I
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->P:I
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->q()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->aa:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->V:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->X:I
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->C:[I
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->av:[I
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->C:[I
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->aw:[I
iput v6, p0, Lcom/twidroid/ui/themes/r;->ax:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->ay:I
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->C:[I
aget v0, v0, v8
iput v0, p0, Lcom/twidroid/ui/themes/r;->S:I
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->C:[I
aget v0, v0, v8
iput v0, p0, Lcom/twidroid/ui/themes/r;->ar:I
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->C:[I
aget v0, v0, v8
iput v0, p0, Lcom/twidroid/ui/themes/r;->as:I
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->C:[I
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->N:[I
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->C:[I
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->ad:[I
iput v6, p0, Lcom/twidroid/ui/themes/r;->ai:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->Q:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->R:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->Z:I
const/4 v0, 0x5
iput v0, p0, Lcom/twidroid/ui/themes/r;->ac:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->D:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->E:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->L:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->U:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->W:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->Y:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->af:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->ag:I
iput v6, p0, Lcom/twidroid/ui/themes/r;->ah:I
iput-object v7, p0, Lcom/twidroid/ui/themes/r;->aH:Ljava/lang/String;
iput-object v7, p0, Lcom/twidroid/ui/themes/r;->aI:Ljava/lang/String;
iput-object v7, p0, Lcom/twidroid/ui/themes/r;->aJ:Ljava/lang/String;
iput-object v7, p0, Lcom/twidroid/ui/themes/r;->aK:Ljava/lang/String;
iput-object v7, p0, Lcom/twidroid/ui/themes/r;->aL:Ljava/lang/String;
iput-object v7, p0, Lcom/twidroid/ui/themes/r;->aM:Ljava/lang/String;
iput-object v7, p0, Lcom/twidroid/ui/themes/r;->aN:Ljava/lang/String;
const v0, -0xff9967
iput v0, p0, Lcom/twidroid/ui/themes/r;->at:I
return-void
nop
:array_196
.array-data 0x4
0x7et 0x48t 0xc8t 0xfft
0x4bt 0x0t 0x0t 0x0t
0x7et 0x48t 0xc8t 0xfft
0x28t 0x0t 0x0t 0x0t
0x7et 0x48t 0xc8t 0xfft
0xat 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>(Ljava/lang/String;II[IIIIIIIIIII[IIIIII[IIIIIIIIZI[IIIIIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[I[IIII)V
.registers 62
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/twidroid/ui/themes/r;->aB:Z
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/twidroid/ui/themes/r;->aC:Z
const/16 v1, 0x12
iput v1, p0, Lcom/twidroid/ui/themes/r;->aD:I
const/16 v1, 0xe
iput v1, p0, Lcom/twidroid/ui/themes/r;->aE:I
const/16 v1, 0xa
iput v1, p0, Lcom/twidroid/ui/themes/r;->aF:I
const/16 v1, 0xe
iput v1, p0, Lcom/twidroid/ui/themes/r;->aG:I
iput-object p1, p0, Lcom/twidroid/ui/themes/r;->z:Ljava/lang/String;
iput p2, p0, Lcom/twidroid/ui/themes/r;->A:I
iput p3, p0, Lcom/twidroid/ui/themes/r;->B:I
iput-object p4, p0, Lcom/twidroid/ui/themes/r;->C:[I
iput p5, p0, Lcom/twidroid/ui/themes/r;->D:I
iput p6, p0, Lcom/twidroid/ui/themes/r;->E:I
iput p7, p0, Lcom/twidroid/ui/themes/r;->F:I
iput p8, p0, Lcom/twidroid/ui/themes/r;->G:I
iput p9, p0, Lcom/twidroid/ui/themes/r;->H:I
iput p10, p0, Lcom/twidroid/ui/themes/r;->I:I
iput p11, p0, Lcom/twidroid/ui/themes/r;->J:I
iput p12, p0, Lcom/twidroid/ui/themes/r;->K:I
iput p13, p0, Lcom/twidroid/ui/themes/r;->L:I
move/from16 v0, p14
iput v0, p0, Lcom/twidroid/ui/themes/r;->M:I
move-object/from16 v0, p15
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->N:[I
move/from16 v0, p16
iput v0, p0, Lcom/twidroid/ui/themes/r;->O:I
move/from16 v0, p17
iput v0, p0, Lcom/twidroid/ui/themes/r;->P:I
move/from16 v0, p18
iput v0, p0, Lcom/twidroid/ui/themes/r;->Q:I
move/from16 v0, p19
iput v0, p0, Lcom/twidroid/ui/themes/r;->R:I
move/from16 v0, p20
iput v0, p0, Lcom/twidroid/ui/themes/r;->S:I
move-object/from16 v0, p21
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->T:[I
move/from16 v0, p22
iput v0, p0, Lcom/twidroid/ui/themes/r;->U:I
move/from16 v0, p23
iput v0, p0, Lcom/twidroid/ui/themes/r;->V:I
move/from16 v0, p24
iput v0, p0, Lcom/twidroid/ui/themes/r;->W:I
move/from16 v0, p25
iput v0, p0, Lcom/twidroid/ui/themes/r;->X:I
move/from16 v0, p26
iput v0, p0, Lcom/twidroid/ui/themes/r;->Y:I
move/from16 v0, p27
iput v0, p0, Lcom/twidroid/ui/themes/r;->Z:I
move/from16 v0, p28
iput v0, p0, Lcom/twidroid/ui/themes/r;->aa:I
move/from16 v0, p29
iput-boolean v0, p0, Lcom/twidroid/ui/themes/r;->ab:Z
move/from16 v0, p30
iput v0, p0, Lcom/twidroid/ui/themes/r;->ac:I
move-object/from16 v0, p31
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->ad:[I
move/from16 v0, p32
iput v0, p0, Lcom/twidroid/ui/themes/r;->ae:I
move/from16 v0, p33
iput v0, p0, Lcom/twidroid/ui/themes/r;->af:I
move/from16 v0, p34
iput v0, p0, Lcom/twidroid/ui/themes/r;->ag:I
move/from16 v0, p35
iput v0, p0, Lcom/twidroid/ui/themes/r;->ah:I
move/from16 v0, p36
iput v0, p0, Lcom/twidroid/ui/themes/r;->ai:I
move/from16 v0, p37
iput v0, p0, Lcom/twidroid/ui/themes/r;->aj:I
move/from16 v0, p38
iput v0, p0, Lcom/twidroid/ui/themes/r;->ak:I
move/from16 v0, p39
iput v0, p0, Lcom/twidroid/ui/themes/r;->al:I
move/from16 v0, p40
iput v0, p0, Lcom/twidroid/ui/themes/r;->am:I
move/from16 v0, p41
iput v0, p0, Lcom/twidroid/ui/themes/r;->an:I
move/from16 v0, p42
iput v0, p0, Lcom/twidroid/ui/themes/r;->ao:I
move/from16 v0, p43
iput v0, p0, Lcom/twidroid/ui/themes/r;->ap:I
move/from16 v0, p44
iput v0, p0, Lcom/twidroid/ui/themes/r;->aq:I
move/from16 v0, p45
iput v0, p0, Lcom/twidroid/ui/themes/r;->ar:I
move/from16 v0, p46
iput v0, p0, Lcom/twidroid/ui/themes/r;->as:I
move-object/from16 v0, p47
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->aH:Ljava/lang/String;
move-object/from16 v0, p48
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->aI:Ljava/lang/String;
move-object/from16 v0, p49
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->aJ:Ljava/lang/String;
move-object/from16 v0, p50
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->aK:Ljava/lang/String;
move-object/from16 v0, p51
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->aL:Ljava/lang/String;
move-object/from16 v0, p52
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->aM:Ljava/lang/String;
move-object/from16 v0, p53
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->aN:Ljava/lang/String;
move/from16 v0, p54
iput-boolean v0, p0, Lcom/twidroid/ui/themes/r;->au:Z
move-object/from16 v0, p55
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->av:[I
move-object/from16 v0, p56
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->aw:[I
move/from16 v0, p57
iput v0, p0, Lcom/twidroid/ui/themes/r;->ax:I
move/from16 v0, p58
iput v0, p0, Lcom/twidroid/ui/themes/r;->ay:I
move/from16 v0, p59
iput v0, p0, Lcom/twidroid/ui/themes/r;->at:I
return-void
.end method
.method public static G()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/twidroid/ui/themes/r;->c:Ljava/lang/String;
return-object v0
.end method
.method private a(I)I
.registers 6
sget-boolean v0, Lcom/twidroid/ui/themes/r;->aQ:Z
if-eqz v0, :cond_7
const/high16 v0, 0x6600
:goto_6
return v0
:cond_7
const/4 v0, 0x3
new-array v0, v0, [F
invoke-static {p1}, Landroid/graphics/Color;->red(I)I
move-result v1
invoke-static {p1}, Landroid/graphics/Color;->green(I)I
move-result v2
invoke-static {p1}, Landroid/graphics/Color;->blue(I)I
move-result v3
invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V
const/4 v1, 0x1
const v2, 0x3e19999a
aput v2, v0, v1
invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I
move-result v0
goto :goto_6
.end method
.method public static a(II)I
.registers 12
const v9, 0x3f6147ae
const v5, 0x3f333333
const/high16 v8, 0x3f80
const/4 v7, 0x1
const/4 v6, 0x2
const/4 v0, 0x3
new-array v3, v0, [F
invoke-static {p0}, Landroid/graphics/Color;->red(I)I
move-result v0
invoke-static {p0}, Landroid/graphics/Color;->green(I)I
move-result v1
invoke-static {p0}, Landroid/graphics/Color;->blue(I)I
move-result v2
invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V
invoke-virtual {v3}, [F->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [F
invoke-virtual {v3}, [F->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, [F
invoke-virtual {v3}, [F->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, [F
aget v4, v3, v6
mul-float/2addr v4, v5
aput v4, v0, v6
aget v0, v0, v6
mul-float/2addr v0, v5
aput v0, v1, v6
const/4 v0, 0x3
new-array v0, v0, [F
invoke-static {p1}, Landroid/graphics/Color;->red(I)I
move-result v1
invoke-static {p1}, Landroid/graphics/Color;->green(I)I
move-result v4
invoke-static {p1}, Landroid/graphics/Color;->blue(I)I
move-result v5
invoke-static {v1, v4, v5, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V
aget v0, v0, v7
float-to-double v0, v0
const-wide/high16 v4, 0x3fe0
cmpg-double v0, v0, v4
if-gez v0, :cond_7c
aget v0, v3, v7
mul-float/2addr v0, v9
invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F
move-result v0
aput v0, v2, v7
aget v0, v3, v6
const v1, 0x3f8f5c29
mul-float/2addr v0, v1
invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F
move-result v0
aput v0, v2, v6
aget v0, v2, v7
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-nez v0, :cond_77
aget v0, v2, v6
const v1, 0x3f9c28f6
mul-float/2addr v0, v1
aput v0, v2, v6
:goto_77
:cond_77
invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I
move-result v0
return v0
:cond_7c
aget v0, v3, v7
const v1, 0x3f8a3d71
mul-float/2addr v0, v1
invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F
move-result v0
aput v0, v2, v7
aget v0, v3, v6
mul-float/2addr v0, v9
aput v0, v2, v6
goto :goto_77
.end method
.method public static a(Ljava/lang/String;)Z
.registers 2
:try_start_0
invoke-static {p0}, Lcom/twidroid/ui/themes/r;->d(Ljava/lang/String;)I
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5
const/4 v0, 0x0
:goto_4
return v0
:catch_5
move-exception v0
const/4 v0, 0x1
goto :goto_4
.end method
.method private a(IZ)[I
.registers 11
const/4 v0, 0x3
const/4 v7, 0x1
const/4 v6, 0x2
new-array v2, v0, [F
new-array v3, v0, [I
invoke-static {p1}, Landroid/graphics/Color;->red(I)I
move-result v0
invoke-static {p1}, Landroid/graphics/Color;->green(I)I
move-result v1
invoke-static {p1}, Landroid/graphics/Color;->blue(I)I
move-result v4
invoke-static {v0, v1, v4, v2}, Landroid/graphics/Color;->RGBToHSV(III[F)V
invoke-virtual {v2}, [F->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [F
invoke-virtual {v2}, [F->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, [F
if-eqz p2, :cond_35
const/4 v1, -0x1
aput v1, v3, v7
:goto_27
const/4 v1, 0x0
invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I
move-result v0
aput v0, v3, v1
invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I
move-result v0
aput v0, v3, v6
return-object v3
:cond_35
aget v4, v2, v6
const/high16 v5, 0x3fc0
mul-float/2addr v4, v5
const/high16 v5, 0x3f80
invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F
move-result v4
aput v4, v1, v6
invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I
move-result v1
aput v1, v3, v7
goto :goto_27
.end method
.method public static b(Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x0
:try_start_1
invoke-static {p0}, Lcom/twidroid/ui/themes/r;->d(Ljava/lang/String;)I
:try_end_4
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_a
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_9
const/4 v0, 0x1
:cond_9
:goto_9
return v0
:catch_a
move-exception v1
goto :goto_9
.end method
.method private c(I)V
.registers 9
const/high16 v6, 0x3f80
const/4 v5, 0x1
const/4 v4, 0x2
const/4 v0, 0x3
new-array v0, v0, [F
invoke-static {p1}, Landroid/graphics/Color;->red(I)I
move-result v1
invoke-static {p1}, Landroid/graphics/Color;->green(I)I
move-result v2
invoke-static {p1}, Landroid/graphics/Color;->blue(I)I
move-result v3
invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V
const v1, 0x3eb33333
aput v1, v0, v5
aget v1, v0, v4
const v2, 0x3f8f5c29
mul-float/2addr v1, v2
invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F
move-result v1
aput v1, v0, v4
invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I
move-result v1
iput v1, p0, Lcom/twidroid/ui/themes/r;->G:I
aget v1, v0, v5
const v2, 0x3f970a3d
mul-float/2addr v1, v2
invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F
move-result v1
aput v1, v0, v5
aget v1, v0, v4
const v2, 0x3f6147ae
mul-float/2addr v1, v2
aput v1, v0, v4
invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/themes/r;->H:I
return-void
.end method
.method public static c(Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
:try_start_2
invoke-static {p0}, Lcom/twidroid/ui/themes/r;->d(Ljava/lang/String;)I
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_b
move-result v2
if-lt v2, v0, :cond_9
:goto_8
return v0
:cond_9
move v0, v1
goto :goto_8
:catch_b
move-exception v0
move v0, v1
goto :goto_8
.end method
.method public static d(Ljava/lang/String;)I
.registers 2
invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static e(Ljava/lang/String;)Ljava/lang/String;
.registers 3
:try_start_0
invoke-static {p0}, Lcom/twidroid/ui/themes/r;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_18
sget-object v0, Lcom/twidroid/ui/themes/s;->o:[Lcom/twidroid/ui/themes/n;
invoke-static {p0}, Lcom/twidroid/ui/themes/r;->d(Ljava/lang/String;)I
move-result v1
add-int/lit8 v1, v1, -0x1
aget-object v0, v0, v1
invoke-virtual {v0}, Lcom/twidroid/ui/themes/n;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
:try_end_17
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19
move-result-object p0
:goto_18
:cond_18
return-object p0
:catch_19
move-exception v0
const-string p0, "unknown theme"
goto :goto_18
.end method
.method public A()I
.registers 2
iget v0, p0, Lcom/twidroid/ui/themes/r;->b:I
return v0
.end method
.method public B()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/ui/themes/r;->a:Z
return v0
.end method
.method public C()Landroid/graphics/drawable/Drawable;
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Landroid/graphics/drawable/LayerDrawable;
const/4 v1, 0x2
new-array v1, v1, [Landroid/graphics/drawable/Drawable;
new-instance v2, Landroid/graphics/drawable/ColorDrawable;
iget-object v3, p0, Lcom/twidroid/ui/themes/r;->C:[I
aget v3, v3, v4
invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
aput-object v2, v1, v4
new-instance v2, Landroid/graphics/drawable/ClipDrawable;
new-instance v3, Landroid/graphics/drawable/ColorDrawable;
const v4, -0xff6634
invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
const/4 v4, 0x3
invoke-direct {v2, v3, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V
aput-object v2, v1, v5
invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
return-object v0
.end method
.method public D()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->H()Z
move-result v0
if-eqz v0, :cond_9
iget v0, p0, Lcom/twidroid/ui/themes/r;->aj:I
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/twidroid/ui/themes/r;->J:I
goto :goto_8
.end method
.method public E()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->H()Z
move-result v0
if-eqz v0, :cond_9
iget v0, p0, Lcom/twidroid/ui/themes/r;->ae:I
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/twidroid/ui/themes/r;->K:I
goto :goto_8
.end method
.method public F()I
.registers 2
iget v0, p0, Lcom/twidroid/ui/themes/r;->W:I
return v0
.end method
.method public H()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/ui/themes/r;->au:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-boolean v0, p0, Lcom/twidroid/ui/themes/r;->aB:Z
goto :goto_5
.end method
.method public I()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->q()I
move-result v0
return v0
.end method
.method public J()I
.registers 2
iget v0, p0, Lcom/twidroid/ui/themes/r;->D:I
return v0
.end method
.method public K()Landroid/graphics/drawable/Drawable;
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->av:[I
if-nez v0, :cond_e
new-instance v0, Landroid/graphics/drawable/GradientDrawable;
sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;
iget-object v2, p0, Lcom/twidroid/ui/themes/r;->C:[I
invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
:goto_d
return-object v0
:cond_e
new-instance v0, Landroid/graphics/drawable/GradientDrawable;
sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;
iget-object v2, p0, Lcom/twidroid/ui/themes/r;->av:[I
invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
goto :goto_d
.end method
.method public L()I
.registers 2
iget v0, p0, Lcom/twidroid/ui/themes/r;->V:I
return v0
.end method
.method public M()Landroid/graphics/drawable/StateListDrawable;
.registers 5
new-instance v1, Landroid/graphics/drawable/StateListDrawable;
invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V
new-instance v2, Landroid/graphics/drawable/GradientDrawable;
sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->H()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->ad:[I
:goto_11
invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I
invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
return-object v1
:cond_1a
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->N:[I
goto :goto_11
.end method
.method public N()Landroid/graphics/drawable/Drawable;
.registers 3
new-instance v0, Landroid/graphics/drawable/ColorDrawable;
const v1, 0x2233b5e5
invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
return-object v0
.end method
.method public O()Landroid/graphics/drawable/Drawable;
.registers 3
new-instance v0, Landroid/graphics/drawable/ColorDrawable;
const v1, 0x22a8d324
invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
return-object v0
.end method
.method public P()Landroid/graphics/drawable/Drawable;
.registers 3
new-instance v0, Landroid/graphics/drawable/ColorDrawable;
const v1, 0x22ffb61c
invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
return-object v0
.end method
.method public Q()Landroid/graphics/drawable/Drawable;
.registers 5
new-instance v0, Landroid/graphics/drawable/GradientDrawable;
sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v2
const/4 v3, 0x0
invoke-direct {p0, v2, v3}, Lcom/twidroid/ui/themes/r;->a(IZ)[I
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
return-object v0
.end method
.method public R()I
.registers 7
const/4 v5, 0x1
const/4 v0, 0x3
new-array v0, v0, [F
iget v1, p0, Lcom/twidroid/ui/themes/r;->B:I
invoke-static {v1}, Landroid/graphics/Color;->red(I)I
move-result v1
iget v2, p0, Lcom/twidroid/ui/themes/r;->B:I
invoke-static {v2}, Landroid/graphics/Color;->green(I)I
move-result v2
iget v3, p0, Lcom/twidroid/ui/themes/r;->B:I
invoke-static {v3}, Landroid/graphics/Color;->blue(I)I
move-result v3
invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V
aget v1, v0, v5
float-to-double v1, v1
const-wide/high16 v3, 0x3fe0
cmpg-double v1, v1, v3
if-gez v1, :cond_35
const/high16 v1, 0x3f80
aget v2, v0, v5
const v3, 0x3fa66666
mul-float/2addr v2, v3
invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F
move-result v1
aput v1, v0, v5
:goto_30
invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I
move-result v0
return v0
:cond_35
aget v1, v0, v5
const v2, 0x3f4ccccd
mul-float/2addr v1, v2
aput v1, v0, v5
goto :goto_30
.end method
.method public S()I
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->C:[I
const/4 v1, 0x0
aget v0, v0, v1
return v0
.end method
.method public T()I
.registers 2
iget v0, p0, Lcom/twidroid/ui/themes/r;->at:I
return v0
.end method
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/ui/themes/r;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method protected a(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
if-nez p2, :cond_3
:goto_2
return-void
:cond_3
:try_start_3
invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/ui/themes/r;->a(Landroid/content/res/AssetFileDescriptor;)V
:try_end_e
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_f
goto :goto_2
:catch_f
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_2
.end method
.method protected a(Landroid/content/res/AssetFileDescriptor;)V
.registers 8
new-instance v0, Landroid/media/MediaPlayer;
invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J
move-result-wide v2
invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J
move-result-wide v4
invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v1
invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
new-instance v1, Lcom/twidroid/ui/themes/r$1;
invoke-direct {v1, p0}, Lcom/twidroid/ui/themes/r$1;-><init>(Lcom/twidroid/ui/themes/r;)V
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
return-void
.end method
.method public a(Landroid/view/View;)V
.registers 3
iget v0, p0, Lcom/twidroid/ui/themes/r;->P:I
invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V
return-void
.end method
.method public a(Landroid/widget/TextView;)V
.registers 4
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->q()I
move-result v0
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V
const/4 v0, 0x1
iget v1, p0, Lcom/twidroid/ui/themes/r;->aE:I
int-to-float v1, v1
invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V
return-void
.end method
.method public a(Lcom/twidroid/d/v;)V
.registers 4
iget-boolean v0, p0, Lcom/twidroid/ui/themes/r;->au:Z
if-eqz v0, :cond_11
invoke-virtual {p1}, Lcom/twidroid/d/v;->p()Ljava/lang/String;
move-result-object v0
const-string v1, "bubble"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/ui/themes/r;->aB:Z
:goto_10
return-void
:cond_11
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/ui/themes/r;->aB:Z
goto :goto_10
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/ui/themes/r;->a:Z
return-void
.end method
.method public varargs a([Landroid/widget/TextView;)V
.registers 6
array-length v1, p1
const/4 v0, 0x0
:goto_2
if-ge v0, v1, :cond_e
aget-object v2, p1, v0
iget v3, p0, Lcom/twidroid/ui/themes/r;->A:I
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_e
return-void
.end method
.method public b()Landroid/graphics/drawable/Drawable;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 5
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->B()Z
move-result v0
if-eqz v0, :cond_8
if-nez p1, :cond_13
:cond_8
new-instance v0, Landroid/graphics/drawable/ColorDrawable;
iget-object v1, p0, Lcom/twidroid/ui/themes/r;->C:[I
const/4 v2, 0x0
aget v1, v1, v2
invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
:goto_12
return-object v0
:cond_13
:try_start_13
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->A()I
move-result v1
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_20
move-result-object v0
goto :goto_12
:catch_20
move-exception v0
new-instance v0, Landroid/graphics/drawable/GradientDrawable;
sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;
iget-object v2, p0, Lcom/twidroid/ui/themes/r;->C:[I
invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
goto :goto_12
.end method
.method public b(I)V
.registers 2
iput p1, p0, Lcom/twidroid/ui/themes/r;->b:I
return-void
.end method
.method public b(Landroid/view/View;)V
.registers 3
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v0
invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V
return-void
.end method
.method public b(Landroid/widget/TextView;)V
.registers 4
iget v0, p0, Lcom/twidroid/ui/themes/r;->aa:I
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V
const/4 v0, 0x1
iget v1, p0, Lcom/twidroid/ui/themes/r;->aE:I
int-to-float v1, v1
invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V
return-void
.end method
.method public c()Ljava/lang/String;
.registers 2
const-string v0, "None"
return-object v0
.end method
.method public c(Landroid/content/Context;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->aJ:Ljava/lang/String;
invoke-virtual {p0, p1, v0}, Lcom/twidroid/ui/themes/r;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public d(Landroid/content/Context;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->aK:Ljava/lang/String;
invoke-virtual {p0, p1, v0}, Lcom/twidroid/ui/themes/r;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public e(Landroid/content/Context;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->aM:Ljava/lang/String;
invoke-virtual {p0, p1, v0}, Lcom/twidroid/ui/themes/r;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public f(Landroid/content/Context;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->aN:Ljava/lang/String;
invoke-virtual {p0, p1, v0}, Lcom/twidroid/ui/themes/r;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public g(Landroid/content/Context;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->aL:Ljava/lang/String;
invoke-virtual {p0, p1, v0}, Lcom/twidroid/ui/themes/r;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public h(Landroid/content/Context;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->aO:Ljava/lang/String;
invoke-virtual {p0, p1, v0}, Lcom/twidroid/ui/themes/r;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public i(Landroid/content/Context;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->aP:Ljava/lang/String;
invoke-virtual {p0, p1, v0}, Lcom/twidroid/ui/themes/r;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public j()Landroid/graphics/drawable/Drawable;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public o()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->H()Z
move-result v0
if-eqz v0, :cond_9
iget v0, p0, Lcom/twidroid/ui/themes/r;->ak:I
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/twidroid/ui/themes/r;->M:I
goto :goto_8
.end method
.method public p()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->H()Z
move-result v0
if-eqz v0, :cond_9
iget v0, p0, Lcom/twidroid/ui/themes/r;->al:I
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/twidroid/ui/themes/r;->O:I
goto :goto_8
.end method
.method public q()I
.registers 2
iget v0, p0, Lcom/twidroid/ui/themes/r;->A:I
return v0
.end method
.method public s()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->H()Z
move-result v0
if-eqz v0, :cond_9
iget v0, p0, Lcom/twidroid/ui/themes/r;->F:I
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/twidroid/ui/themes/r;->B:I
goto :goto_8
.end method
.method public t()Landroid/text/style/StyleSpan;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->d:Landroid/text/style/StyleSpan;
if-nez v0, :cond_c
new-instance v0, Landroid/text/style/StyleSpan;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V
iput-object v0, p0, Lcom/twidroid/ui/themes/r;->d:Landroid/text/style/StyleSpan;
:cond_c
iget-object v0, p0, Lcom/twidroid/ui/themes/r;->d:Landroid/text/style/StyleSpan;
return-object v0
.end method
.method public u()Landroid/text/style/ForegroundColorSpan;
.registers 3
new-instance v0, Landroid/text/style/ForegroundColorSpan;
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->E()I
move-result v1
invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
return-object v0
.end method
.method public v()Landroid/graphics/drawable/Drawable;
.registers 5
new-instance v0, Landroid/graphics/drawable/GradientDrawable;
sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;
invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v2
const/4 v3, 0x0
invoke-direct {p0, v2, v3}, Lcom/twidroid/ui/themes/r;->a(IZ)[I
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
return-object v0
.end method
.method public y()Z
.registers 2
sget-boolean v0, Lcom/twidroid/ui/themes/r;->aQ:Z
return v0
.end method