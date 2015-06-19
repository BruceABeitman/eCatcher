.class public Lcom/bbm/ui/e/au;
.super Landroid/widget/BaseAdapter;
.source "MessagesDelegateAdapter.java"
.implements Landroid/widget/ListAdapter;
.field private static v:Lcom/bbm/d/ec;
.field private final A:Lcom/bbm/ui/e/bh;
.field private final B:Lcom/bbm/ui/e/bg;
.field private C:Z
.field private final D:I
.field private E:Lcom/bbm/ui/e/bd;
.field public final a:Lcom/bbm/j/a;
.field public final b:Lcom/bbm/util/cr;
.field public final c:Lcom/bbm/j/a;
.field public d:Landroid/view/View$OnTouchListener;
.field public e:Lcom/bbm/ui/e/bh;
.field public f:Lcom/bbm/ui/e/bi;
.field public g:Lcom/bbm/ui/e/bg;
.field public h:Lcom/bbm/ui/e/cc;
.field public i:Lcom/bbm/util/b/i;
.field public j:Lcom/bbm/util/b/i;
.field public k:Lcom/bbm/util/b/i;
.field  l:Lcom/bbm/ui/e/cf;
.field  m:Z
.field final n:Landroid/os/Handler;
.field final o:Ljava/lang/Runnable;
.field public final p:Lcom/bbm/util/fj;
.field private final q:Lcom/bbm/ui/activities/xo;
.field private final r:Landroid/content/Context;
.field private final s:Lcom/bbm/d/a;
.field private final t:Ljava/lang/String;
.field private final u:Ljava/lang/String;
.field private final w:Landroid/view/LayoutInflater;
.field private x:Z
.field private y:J
.field private z:J
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/bbm/d/ec;
invoke-direct {v0}, Lcom/bbm/d/ec;-><init>()V
sput-object v0, Lcom/bbm/ui/e/au;->v:Lcom/bbm/d/ec;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d/a;Ljava/lang/String;)V
.registers 9
const-wide/16 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Lcom/bbm/ui/activities/xo;
invoke-direct {v0}, Lcom/bbm/ui/activities/xo;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
new-instance v0, Lcom/bbm/util/cr;
const-string v1, ""
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/ui/e/au;->b:Lcom/bbm/util/cr;
new-instance v0, Lcom/bbm/ui/e/av;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/av;-><init>(Lcom/bbm/ui/e/au;)V
iput-object v0, p0, Lcom/bbm/ui/e/au;->c:Lcom/bbm/j/a;
iput-object v2, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
iput-object v2, p0, Lcom/bbm/ui/e/au;->e:Lcom/bbm/ui/e/bh;
iput-object v2, p0, Lcom/bbm/ui/e/au;->f:Lcom/bbm/ui/e/bi;
iput-object v2, p0, Lcom/bbm/ui/e/au;->g:Lcom/bbm/ui/e/bg;
iput-object v2, p0, Lcom/bbm/ui/e/au;->h:Lcom/bbm/ui/e/cc;
iput-object v2, p0, Lcom/bbm/ui/e/au;->i:Lcom/bbm/util/b/i;
iput-object v2, p0, Lcom/bbm/ui/e/au;->j:Lcom/bbm/util/b/i;
iput-object v2, p0, Lcom/bbm/ui/e/au;->k:Lcom/bbm/util/b/i;
iput-wide v3, p0, Lcom/bbm/ui/e/au;->y:J
iput-wide v3, p0, Lcom/bbm/ui/e/au;->z:J
new-instance v0, Lcom/bbm/ui/e/aw;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/aw;-><init>(Lcom/bbm/ui/e/au;)V
iput-object v0, p0, Lcom/bbm/ui/e/au;->A:Lcom/bbm/ui/e/bh;
new-instance v0, Lcom/bbm/ui/e/ax;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/ax;-><init>(Lcom/bbm/ui/e/au;)V
iput-object v0, p0, Lcom/bbm/ui/e/au;->B:Lcom/bbm/ui/e/bg;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/bbm/ui/e/au;->n:Landroid/os/Handler;
new-instance v0, Lcom/bbm/ui/e/ay;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/ay;-><init>(Lcom/bbm/ui/e/au;)V
iput-object v0, p0, Lcom/bbm/ui/e/au;->o:Ljava/lang/Runnable;
new-instance v0, Lcom/bbm/util/fj;
invoke-direct {v0}, Lcom/bbm/util/fj;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/e/au;->p:Lcom/bbm/util/fj;
const/16 v0, 0x12c
iput v0, p0, Lcom/bbm/ui/e/au;->D:I
new-instance v0, Lcom/bbm/ui/e/bd;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/bd;-><init>(Lcom/bbm/ui/e/au;)V
iput-object v0, p0, Lcom/bbm/ui/e/au;->E:Lcom/bbm/ui/e/bd;
iput-object p1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iput-object p3, p0, Lcom/bbm/ui/e/au;->u:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/e/au;->u:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/e/au;->t:Ljava/lang/String;
const-string v0, "layout_inflater"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
iput-object v0, p0, Lcom/bbm/ui/e/au;->w:Landroid/view/LayoutInflater;
const-wide/16 v0, -0x1
invoke-virtual {p0, v3, v4, v0, v1}, Lcom/bbm/ui/e/au;->a(JJ)V
new-instance v0, Lcom/bbm/ui/e/az;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/az;-><init>(Lcom/bbm/ui/e/au;)V
iput-object v0, p0, Lcom/bbm/ui/e/au;->a:Lcom/bbm/j/a;
new-instance v0, Lcom/bbm/ui/e/cf;
invoke-direct {v0, p1}, Lcom/bbm/ui/e/cf;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/af;->a()Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/e/au;->x:Z
return-void
.end method
.method static synthetic a()Lcom/bbm/d/ec;
.registers 1
sget-object v0, Lcom/bbm/ui/e/au;->v:Lcom/bbm/d/ec;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/e/au;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/au;->u:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/d/fg;Lcom/bbm/d/fg;)Z
.registers 3
invoke-static {p0, p1}, Lcom/bbm/ui/e/au;->b(Lcom/bbm/d/fg;Lcom/bbm/d/fg;)Z
move-result v0
return v0
.end method
.method private static a(Lcom/bbm/d/fk;)Z
.registers 2
sget-object v0, Lcom/bbm/d/fk;->a:Lcom/bbm/d/fk;
if-ne p0, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method static synthetic b(Lcom/bbm/ui/e/au;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
return-object v0
.end method
.method private static b(Lcom/bbm/d/fg;Lcom/bbm/d/fg;)Z
.registers 7
const/4 v0, 0x1
iget-object v1, p0, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
iget-object v2, p1, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
iget-object v3, p0, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v3, v4, :cond_11
iget-object v3, p1, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v3, v4, :cond_12
:goto_11
:cond_11
return v0
:cond_12
if-ne v1, v2, :cond_45
invoke-static {v1}, Lcom/bbm/ui/e/au;->a(Lcom/bbm/d/fk;)Z
move-result v1
if-eqz v1, :cond_45
invoke-static {p0}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/fg;)Z
move-result v1
if-nez v1, :cond_45
invoke-static {p1}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/fg;)Z
move-result v1
if-nez v1, :cond_45
iget-object v1, p0, Lcom/bbm/d/fg;->o:Ljava/lang/String;
iget-object v2, p1, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_45
iget-boolean v1, p0, Lcom/bbm/d/fg;->j:Z
iget-boolean v2, p1, Lcom/bbm/d/fg;->j:Z
if-ne v1, v2, :cond_45
iget-wide v1, p0, Lcom/bbm/d/fg;->s:J
iget-wide v3, p1, Lcom/bbm/d/fg;->s:J
sub-long/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J
move-result-wide v1
const-wide/16 v3, 0x12c
cmp-long v1, v1, v3
if-ltz v1, :cond_11
:cond_45
const/4 v0, 0x0
goto :goto_11
.end method
.method static synthetic c(Lcom/bbm/ui/e/au;)Lcom/bbm/ui/e/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/au;->e:Lcom/bbm/ui/e/bh;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/e/au;)Lcom/bbm/ui/e/bg;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/au;->g:Lcom/bbm/ui/e/bg;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/e/au;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/e/au;->m:Z
return v0
.end method
.method static synthetic f(Lcom/bbm/ui/e/au;)J
.registers 3
iget-wide v0, p0, Lcom/bbm/ui/e/au;->y:J
return-wide v0
.end method
.method static synthetic g(Lcom/bbm/ui/e/au;)J
.registers 3
iget-wide v0, p0, Lcom/bbm/ui/e/au;->z:J
return-wide v0
.end method
.method static synthetic h(Lcom/bbm/ui/e/au;)Lcom/bbm/util/fj;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/au;->p:Lcom/bbm/util/fj;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/e/au;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/e/au;->C:Z
return v0
.end method
.method static synthetic j(Lcom/bbm/ui/e/au;)Lcom/bbm/j/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/au;->a:Lcom/bbm/j/a;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/e/au;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/au;->t:Ljava/lang/String;
return-object v0
.end method
.method static synthetic l(Lcom/bbm/ui/e/au;)Lcom/bbm/util/cr;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/au;->b:Lcom/bbm/util/cr;
return-object v0
.end method
.method static synthetic m(Lcom/bbm/ui/e/au;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/au;->n:Landroid/os/Handler;
return-object v0
.end method
.method public final a(Lcom/bbm/d/fg;Z)I
.registers 9
const/4 v1, 0x5
const/4 v0, 0x2
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v4, p1, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v4, v5, :cond_b
:goto_a
return v0
:cond_b
iget-object v4, p1, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v4, v5, :cond_13
move v0, v1
goto :goto_a
:cond_13
sget-object v4, Lcom/bbm/ui/e/bc;->a:[I
iget-object v5, p1, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
invoke-virtual {v5}, Lcom/bbm/d/fk;->ordinal()I
move-result v5
aget v4, v4, v5
packed-switch v4, :pswitch_data_d8
goto :goto_a
:pswitch_21
invoke-static {p1}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/fg;)Z
move-result v0
if-eqz v0, :cond_31
iget-boolean v0, p1, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_2e
const/16 v0, 0x11
goto :goto_a
:cond_2e
const/16 v0, 0x12
goto :goto_a
:cond_31
:pswitch_31
if-eqz p2, :cond_36
const/16 v0, 0x10
goto :goto_a
:cond_36
iget-boolean v0, p1, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_3c
move v0, v2
goto :goto_a
:cond_3c
move v0, v3
goto :goto_a
:pswitch_3e
const/4 v0, 0x6
goto :goto_a
:pswitch_40
const/4 v0, 0x3
goto :goto_a
:pswitch_42
const/16 v0, 0xc
goto :goto_a
:pswitch_45
invoke-static {p1}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/fg;)Z
move-result v0
if-eqz v0, :cond_4e
const/16 v0, 0x13
goto :goto_a
:cond_4e
:pswitch_4e
const/4 v0, 0x4
goto :goto_a
:pswitch_50
const/16 v0, 0xf
goto :goto_a
:pswitch_53
const/4 v0, 0x7
goto :goto_a
:pswitch_55
iget-boolean v0, p1, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_5c
const/16 v0, 0x8
goto :goto_a
:cond_5c
const/16 v0, 0x9
goto :goto_a
:pswitch_5f
iget-object v0, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v4, p1, Lcom/bbm/d/fg;->r:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/bbm/d/a;->p(Ljava/lang/String;)Lcom/bbm/d/gm;
move-result-object v0
iget-object v4, v0, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v4, v5, :cond_6f
move v0, v1
goto :goto_a
:cond_6f
iget-object v1, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v4, Lcom/bbm/d/gn;->f:Lcom/bbm/d/gn;
if-ne v1, v4, :cond_78
const/16 v0, 0xd
goto :goto_a
:cond_78
iget-object v1, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v4, Lcom/bbm/d/gn;->e:Lcom/bbm/d/gn;
if-ne v1, v4, :cond_81
const/16 v0, 0xe
goto :goto_a
:cond_81
iget-object v1, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v4, Lcom/bbm/d/gn;->a:Lcom/bbm/d/gn;
if-eq v1, v4, :cond_99
iget-object v1, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v4, Lcom/bbm/d/gn;->b:Lcom/bbm/d/gn;
if-eq v1, v4, :cond_99
iget-object v1, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v4, Lcom/bbm/d/gn;->c:Lcom/bbm/d/gn;
if-eq v1, v4, :cond_99
iget-object v1, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v4, Lcom/bbm/d/gn;->d:Lcom/bbm/d/gn;
if-ne v1, v4, :cond_a5
:cond_99
iget-boolean v0, p1, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_a1
const/16 v0, 0xa
goto/16 :goto_a
:cond_a1
const/16 v0, 0xb
goto/16 :goto_a
:cond_a5
iget-object v1, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v4, Lcom/bbm/d/gn;->h:Lcom/bbm/d/gn;
if-ne v1, v4, :cond_b7
iget-boolean v0, p1, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_b3
const/16 v0, 0x16
goto/16 :goto_a
:cond_b3
const/16 v0, 0x17
goto/16 :goto_a
:cond_b7
iget-object v0, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v1, Lcom/bbm/d/gn;->i:Lcom/bbm/d/gn;
if-ne v0, v1, :cond_c1
const/16 v0, 0x18
goto/16 :goto_a
:cond_c1
iget-boolean v0, p1, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_c8
move v0, v2
goto/16 :goto_a
:cond_c8
move v0, v3
goto/16 :goto_a
:pswitch_cb
iget-boolean v0, p1, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_d3
const/16 v0, 0x14
goto/16 :goto_a
:cond_d3
const/16 v0, 0x15
goto/16 :goto_a
nop
:pswitch_data_d8
.packed-switch 0x1
:pswitch_21
:pswitch_31
:pswitch_31
:pswitch_3e
:pswitch_40
:pswitch_42
:pswitch_45
:pswitch_4e
:pswitch_4e
:pswitch_50
:pswitch_53
:pswitch_55
:pswitch_5f
:pswitch_cb
.end packed-switch
.end method
.method public final a(I)Lcom/bbm/d/fg;
.registers 8
if-gtz p1, :cond_8
new-instance v0, Lcom/bbm/d/fg;
invoke-direct {v0}, Lcom/bbm/d/fg;-><init>()V
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/e/au;->t:Ljava/lang/String;
iget-wide v2, p0, Lcom/bbm/ui/e/au;->y:J
int-to-long v4, p1
add-long/2addr v2, v4
const-wide/16 v4, 0x1
sub-long/2addr v2, v4
invoke-virtual {v0, v1, v2, v3}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;
move-result-object v0
goto :goto_7
.end method
.method public final a(JJ)V
.registers 11
iget-wide v0, p0, Lcom/bbm/ui/e/au;->y:J
cmp-long v0, v0, p1
if-nez v0, :cond_d
iget-wide v0, p0, Lcom/bbm/ui/e/au;->z:J
cmp-long v0, v0, p3
if-nez v0, :cond_d
:goto_c
return-void
:cond_d
iput-wide p1, p0, Lcom/bbm/ui/e/au;->y:J
iput-wide p3, p0, Lcom/bbm/ui/e/au;->z:J
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/bbm/ui/e/au;->p:Lcom/bbm/util/fj;
iget-object v1, v1, Lcom/bbm/util/fj;->a:Ljava/util/WeakHashMap;
invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_25
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_40
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/e/bj;
iget-wide v2, v0, Lcom/bbm/ui/e/bj;->c:J
iget-object v4, v0, Lcom/bbm/ui/e/bj;->h:Lcom/bbm/ui/e/au;
iget-wide v4, v4, Lcom/bbm/ui/e/au;->y:J
sub-long/2addr v2, v4
const-wide/16 v4, 0x1
add-long/2addr v2, v4
long-to-int v2, v2
invoke-virtual {v0, v2}, Lcom/bbm/ui/e/bj;->a(I)V
goto :goto_25
:cond_40
invoke-virtual {p0}, Lcom/bbm/ui/e/au;->notifyDataSetChanged()V
goto :goto_c
.end method
.method public getCount()I
.registers 7
const-wide/16 v4, 0x1
iget-wide v0, p0, Lcom/bbm/ui/e/au;->z:J
iget-wide v2, p0, Lcom/bbm/ui/e/au;->y:J
sub-long/2addr v0, v2
add-long/2addr v0, v4
add-long/2addr v0, v4
long-to-int v0, v0
return v0
.end method
.method public synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/bbm/ui/e/au;->a(I)Lcom/bbm/d/fg;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 6
iget-wide v0, p0, Lcom/bbm/ui/e/au;->y:J
int-to-long v2, p1
add-long/2addr v0, v2
const-wide/16 v2, 0x1
sub-long/2addr v0, v2
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
if-gtz p1, :cond_7
const/16 v0, 0x19
:goto_6
return v0
:cond_7
invoke-virtual {p0, p1}, Lcom/bbm/ui/e/au;->a(I)Lcom/bbm/d/fg;
move-result-object v2
if-ne v1, p1, :cond_2c
:goto_d
if-nez v1, :cond_27
iget-object v1, v2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
invoke-static {v1}, Lcom/bbm/ui/e/au;->a(Lcom/bbm/d/fk;)Z
move-result v1
if-eqz v1, :cond_27
invoke-static {v2}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/fg;)Z
move-result v1
if-nez v1, :cond_27
add-int/lit8 v0, p1, -0x1
invoke-virtual {p0, v0}, Lcom/bbm/ui/e/au;->a(I)Lcom/bbm/d/fg;
move-result-object v0
invoke-static {v0, v2}, Lcom/bbm/ui/e/au;->b(Lcom/bbm/d/fg;Lcom/bbm/d/fg;)Z
move-result v0
:cond_27
invoke-virtual {p0, v2, v0}, Lcom/bbm/ui/e/au;->a(Lcom/bbm/d/fg;Z)I
move-result v0
goto :goto_6
:cond_2c
move v1, v0
goto :goto_d
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 14
if-nez p2, :cond_6c
new-instance v9, Lcom/bbm/ui/e/bj;
invoke-direct {v9, p0}, Lcom/bbm/ui/e/bj;-><init>(Lcom/bbm/ui/e/au;)V
invoke-virtual {p0, p1}, Lcom/bbm/ui/e/au;->getItemViewType(I)I
move-result v0
iput v0, v9, Lcom/bbm/ui/e/bj;->f:I
iget v0, v9, Lcom/bbm/ui/e/bj;->f:I
packed-switch v0, :pswitch_data_228
:pswitch_12
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unrecognized message type: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/bbm/ui/e/au;->a(I)Lcom/bbm/d/fg;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
invoke-virtual {v1}, Lcom/bbm/d/fk;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", message: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0, p1}, Lcom/bbm/ui/e/au;->a(I)Lcom/bbm/d/fg;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Lcom/bbm/ui/e/bl;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
iget-object v3, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/ui/e/bl;-><init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;Lcom/bbm/d/a;)V
:goto_4c
iput-object v0, v9, Lcom/bbm/ui/e/bj;->a:Lcom/bbm/ui/e/at;
iget-object v0, v9, Lcom/bbm/ui/e/bj;->a:Lcom/bbm/ui/e/at;
iget-object v1, p0, Lcom/bbm/ui/e/au;->w:Landroid/view/LayoutInflater;
invoke-interface {v0, v1, p3}, Lcom/bbm/ui/e/at;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v0, Lcom/bbm/ui/e/bb;
invoke-direct {v0, p0, v9}, Lcom/bbm/ui/e/bb;-><init>(Lcom/bbm/ui/e/au;Lcom/bbm/ui/e/bj;)V
iput-object v0, v9, Lcom/bbm/ui/e/bj;->b:Lcom/bbm/j/a;
invoke-virtual {v9, p1}, Lcom/bbm/ui/e/bj;->a(I)V
invoke-virtual {p2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
:cond_6c
const v0, 0x7f0a0025
invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/k;
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/ui/e/bj;
invoke-virtual {v1, p1}, Lcom/bbm/ui/e/bj;->a(I)V
if-lez p1, :cond_99
if-nez v0, :cond_90
new-instance v0, Lcom/bbm/ui/e/ba;
invoke-direct {v0, p0, p2}, Lcom/bbm/ui/e/ba;-><init>(Lcom/bbm/ui/e/au;Landroid/view/View;)V
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/bbm/ui/e/au;->C:Z
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/bbm/ui/e/au;->C:Z
:cond_90
invoke-virtual {v0}, Lcom/bbm/j/k;->d_()V
const v1, 0x7f0a0025
invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
:cond_99
return-object p2
:pswitch_9a
new-instance v0, Lcom/bbm/ui/e/ce;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget v2, v9, Lcom/bbm/ui/e/bj;->f:I
const/4 v3, 0x1
if-ne v2, v3, :cond_b4
const/4 v2, 0x1
:goto_a4
iget-object v3, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v4, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
iget-object v5, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
iget-object v6, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
iget-boolean v7, p0, Lcom/bbm/ui/e/au;->x:Z
iget-object v8, p0, Lcom/bbm/ui/e/au;->c:Lcom/bbm/j/a;
invoke-direct/range {v0 .. v8}, Lcom/bbm/ui/e/ce;-><init>(Landroid/content/Context;ZLcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;Landroid/view/View$OnTouchListener;ZLcom/bbm/j/r;)V
goto :goto_4c
:cond_b4
const/4 v2, 0x0
goto :goto_a4
:pswitch_b6
new-instance v0, Lcom/bbm/ui/e/as;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v3, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
iget-object v4, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
iget-object v5, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
iget-boolean v6, p0, Lcom/bbm/ui/e/au;->x:Z
invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/e/as;-><init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;Landroid/view/View$OnTouchListener;Z)V
goto :goto_4c
:pswitch_c8
new-instance v0, Lcom/bbm/ui/e/m;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget v2, v9, Lcom/bbm/ui/e/bj;->f:I
const/16 v3, 0x11
if-ne v2, v3, :cond_e0
const/4 v2, 0x1
:goto_d3
iget-object v3, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
iget-object v4, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
iget-object v5, p0, Lcom/bbm/ui/e/au;->b:Lcom/bbm/util/cr;
iget-object v6, p0, Lcom/bbm/ui/e/au;->E:Lcom/bbm/ui/e/bd;
invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/e/m;-><init>(Landroid/content/Context;ZLcom/bbm/ui/e/cf;Landroid/view/View$OnTouchListener;Lcom/bbm/util/cr;Lcom/bbm/ui/e/bd;)V
goto/16 :goto_4c
:cond_e0
const/4 v2, 0x0
goto :goto_d3
:pswitch_e2
new-instance v0, Lcom/bbm/ui/e/j;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/e/j;-><init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;)V
goto/16 :goto_4c
:pswitch_ed
new-instance v0, Lcom/bbm/ui/e/ak;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v3, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/ui/e/ak;-><init>(Landroid/content/Context;Lcom/bbm/d/a;Landroid/view/View$OnTouchListener;)V
goto/16 :goto_4c
:pswitch_fa
new-instance v0, Lcom/bbm/ui/e/bp;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v3, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/ui/e/bp;-><init>(Landroid/content/Context;Lcom/bbm/d/a;Landroid/view/View$OnTouchListener;)V
goto/16 :goto_4c
:pswitch_107
new-instance v0, Lcom/bbm/ui/e/d;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v3, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
iget-object v4, p0, Lcom/bbm/ui/e/au;->B:Lcom/bbm/ui/e/bg;
iget-object v5, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
iget-object v6, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/e/d;-><init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/bg;Landroid/view/View$OnTouchListener;Lcom/bbm/ui/e/cf;)V
goto/16 :goto_4c
:pswitch_11a
new-instance v0, Lcom/bbm/ui/e/s;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v3, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
iget-object v4, p0, Lcom/bbm/ui/e/au;->i:Lcom/bbm/util/b/i;
iget-object v5, p0, Lcom/bbm/ui/e/au;->A:Lcom/bbm/ui/e/bh;
iget-object v6, p0, Lcom/bbm/ui/e/au;->f:Lcom/bbm/ui/e/bi;
invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/e/s;-><init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/activities/xo;Lcom/bbm/util/b/i;Lcom/bbm/ui/e/bh;Lcom/bbm/ui/e/bi;)V
iget-object v1, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
iput-object v1, v0, Lcom/bbm/ui/e/s;->i:Landroid/view/View$OnTouchListener;
goto/16 :goto_4c
:pswitch_131
new-instance v0, Lcom/bbm/ui/e/bk;
invoke-direct {v0}, Lcom/bbm/ui/e/bk;-><init>()V
goto/16 :goto_4c
:pswitch_138
new-instance v0, Lcom/bbm/ui/e/bx;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v3, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
iget-object v4, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
iget-object v5, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/e/bx;-><init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;Landroid/view/View$OnTouchListener;)V
goto/16 :goto_4c
:pswitch_149
new-instance v0, Lcom/bbm/ui/e/bm;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v3, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
iget-object v4, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/e/bm;-><init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;)V
goto/16 :goto_4c
:pswitch_158
iget-object v0, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/e/au;->u:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/es;->r:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_18d
iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
new-instance v0, Lcom/bbm/ui/e/cg;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget v2, v9, Lcom/bbm/ui/e/bj;->f:I
const/16 v3, 0xa
if-ne v2, v3, :cond_18b
const/4 v2, 0x1
:goto_17c
iget-object v3, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v4, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
iget-object v5, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
iget-object v6, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
iget-boolean v8, p0, Lcom/bbm/ui/e/au;->x:Z
invoke-direct/range {v0 .. v8}, Lcom/bbm/ui/e/cg;-><init>(Landroid/content/Context;ZLcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;Landroid/view/View$OnTouchListener;Ljava/lang/String;Z)V
goto/16 :goto_4c
:cond_18b
const/4 v2, 0x0
goto :goto_17c
:cond_18d
new-instance v0, Lcom/bbm/ui/e/ce;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget v2, v9, Lcom/bbm/ui/e/bj;->f:I
const/4 v3, 0x1
if-ne v2, v3, :cond_1a8
const/4 v2, 0x1
:goto_197
iget-object v3, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v4, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
iget-object v5, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
iget-object v6, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
iget-boolean v7, p0, Lcom/bbm/ui/e/au;->x:Z
iget-object v8, p0, Lcom/bbm/ui/e/au;->c:Lcom/bbm/j/a;
invoke-direct/range {v0 .. v8}, Lcom/bbm/ui/e/ce;-><init>(Landroid/content/Context;ZLcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;Landroid/view/View$OnTouchListener;ZLcom/bbm/j/r;)V
goto/16 :goto_4c
:cond_1a8
const/4 v2, 0x0
goto :goto_197
:pswitch_1aa
new-instance v0, Lcom/bbm/ui/e/aj;
invoke-direct {v0}, Lcom/bbm/ui/e/aj;-><init>()V
goto/16 :goto_4c
:pswitch_1b1
new-instance v0, Lcom/bbm/ui/e/an;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v3, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
iget-object v4, p0, Lcom/bbm/ui/e/au;->i:Lcom/bbm/util/b/i;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/e/an;-><init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/activities/xo;Lcom/bbm/util/b/i;)V
goto/16 :goto_4c
:pswitch_1c0
new-instance v0, Lcom/bbm/ui/e/c;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
iget-object v3, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/ui/e/c;-><init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;Lcom/bbm/d/a;)V
goto/16 :goto_4c
:pswitch_1cd
new-instance v0, Lcom/bbm/ui/e/bz;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget v2, v9, Lcom/bbm/ui/e/bj;->f:I
const/16 v3, 0x8
if-ne v2, v3, :cond_1e5
const/4 v2, 0x1
:goto_1d8
iget-object v3, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v4, p0, Lcom/bbm/ui/e/au;->j:Lcom/bbm/util/b/i;
iget-object v5, p0, Lcom/bbm/ui/e/au;->h:Lcom/bbm/ui/e/cc;
iget-object v6, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/e/bz;-><init>(Landroid/content/Context;ZLcom/bbm/d/a;Lcom/bbm/util/b/i;Lcom/bbm/ui/e/cc;Lcom/bbm/ui/e/cf;)V
goto/16 :goto_4c
:cond_1e5
const/4 v2, 0x0
goto :goto_1d8
:pswitch_1e7
new-instance v0, Lcom/bbm/ui/e/bt;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget v2, v9, Lcom/bbm/ui/e/bj;->f:I
const/16 v3, 0x14
if-ne v2, v3, :cond_1fd
const/4 v2, 0x1
:goto_1f2
iget-object v3, p0, Lcom/bbm/ui/e/au;->k:Lcom/bbm/util/b/i;
iget-object v4, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
iget-object v5, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/e/bt;-><init>(Landroid/content/Context;ZLcom/bbm/util/b/i;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/cf;)V
goto/16 :goto_4c
:cond_1fd
const/4 v2, 0x0
goto :goto_1f2
:pswitch_1ff
new-instance v0, Lcom/bbm/ui/e/g;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget v2, v9, Lcom/bbm/ui/e/bj;->f:I
iget-object v2, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v3, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
iget-object v4, p0, Lcom/bbm/ui/e/au;->d:Landroid/view/View$OnTouchListener;
iget-object v5, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/e/g;-><init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/activities/xo;Landroid/view/View$OnTouchListener;Lcom/bbm/ui/e/cf;)V
goto/16 :goto_4c
:pswitch_212
const-string v0, "TPA: tpaContent type received"
const-class v1, Lcom/bbm/ui/e/au;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
new-instance v0, Lcom/bbm/ui/e/ch;
iget-object v1, p0, Lcom/bbm/ui/e/au;->r:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/au;->s:Lcom/bbm/d/a;
iget-object v3, p0, Lcom/bbm/ui/e/au;->l:Lcom/bbm/ui/e/cf;
iget-object v4, p0, Lcom/bbm/ui/e/au;->q:Lcom/bbm/ui/activities/xo;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/e/ch;-><init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;)V
goto/16 :goto_4c
:pswitch_data_228
.packed-switch 0x0
:pswitch_9a
:pswitch_9a
:pswitch_12
:pswitch_ed
:pswitch_11a
:pswitch_131
:pswitch_fa
:pswitch_1b1
:pswitch_1cd
:pswitch_1cd
:pswitch_158
:pswitch_158
:pswitch_107
:pswitch_138
:pswitch_149
:pswitch_1c0
:pswitch_b6
:pswitch_c8
:pswitch_c8
:pswitch_e2
:pswitch_1e7
:pswitch_1e7
:pswitch_1ff
:pswitch_1ff
:pswitch_212
:pswitch_1aa
.end packed-switch
.end method
.method public getViewTypeCount()I
.registers 2
const/16 v0, 0x1a
return v0
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method