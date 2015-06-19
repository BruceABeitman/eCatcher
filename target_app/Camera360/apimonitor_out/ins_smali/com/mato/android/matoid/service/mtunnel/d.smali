.class public final Lcom/mato/android/matoid/service/mtunnel/d;
.super Lcom/google/a/g;
.field private static final c:Lcom/mato/android/matoid/service/mtunnel/d;
.field private A:I
.field private B:[Ljava/lang/String;
.field private C:I
.field private D:Ljava/lang/String;
.field private E:I
.field private F:Z
.field private G:Z
.field private H:Z
.field private I:Ljava/lang/String;
.field private J:Z
.field private K:Z
.field private L:Ljava/lang/String;
.field private M:Lcom/mato/android/matoid/service/mtunnel/c;
.field private N:Ljava/lang/String;
.field private O:[Ljava/lang/String;
.field private P:I
.field private Q:I
.field private R:Z
.field private a:I
.field private b:I
.field private d:Lcom/mato/android/matoid/service/mtunnel/h;
.field private e:Ljava/lang/String;
.field private f:I
.field private g:Ljava/lang/String;
.field private h:I
.field private i:Ljava/lang/String;
.field private j:I
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Z
.field private n:Lcom/mato/android/matoid/service/mtunnel/g;
.field private o:Z
.field private p:Lcom/mato/android/matoid/service/mtunnel/e;
.field private q:I
.field private r:Z
.field private s:Z
.field private t:Lcom/mato/android/matoid/service/mtunnel/b;
.field private u:Ljava/lang/String;
.field private v:[Ljava/lang/String;
.field private w:I
.field private x:[Ljava/lang/String;
.field private y:I
.field private z:[I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/d;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/mato/android/matoid/service/mtunnel/d;-><init>(B)V
sput-object v0, Lcom/mato/android/matoid/service/mtunnel/d;->c:Lcom/mato/android/matoid/service/mtunnel/d;
invoke-direct {v0}, Lcom/mato/android/matoid/service/mtunnel/d;->bl()V
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x1
const/4 v1, 0x0
const-string/jumbo v0, "mato.mtunnel.Settings"
invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->e:Ljava/lang/String;
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->f:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->g:Ljava/lang/String;
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->h:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->i:Ljava/lang/String;
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->j:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->k:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->l:Ljava/lang/String;
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->m:Z
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->o:Z
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->q:I
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->r:Z
iput-boolean v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->s:Z
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->u:Ljava/lang/String;
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
new-array v0, v1, [I
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->D:Ljava/lang/String;
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->E:I
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->F:Z
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->G:Z
iput-boolean v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->H:Z
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->I:Ljava/lang/String;
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->J:Z
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->K:Z
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->L:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->N:Ljava/lang/String;
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->Q:I
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->R:Z
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->bl()V
return-void
.end method
.method private constructor <init>(B)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Lcom/google/a/g;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->e:Ljava/lang/String;
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->f:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->g:Ljava/lang/String;
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->h:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->i:Ljava/lang/String;
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->j:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->k:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->l:Ljava/lang/String;
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->m:Z
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->o:Z
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->q:I
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->r:Z
iput-boolean v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->s:Z
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->u:Ljava/lang/String;
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
new-array v0, v1, [I
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->D:Ljava/lang/String;
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->E:I
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->F:Z
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->G:Z
iput-boolean v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->H:Z
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->I:Ljava/lang/String;
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->J:Z
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->K:Z
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->L:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->N:Ljava/lang/String;
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->Q:I
iput-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->R:Z
return-void
.end method
.method private A()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, -0x11
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x0
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->h:I
return-void
.end method
.method private B()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->i:Ljava/lang/String;
return-object v0
.end method
.method private C()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, 0x20
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private D()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, -0x21
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->i:Ljava/lang/String;
return-void
.end method
.method private E()I
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->j:I
return v0
.end method
.method private F()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, 0x40
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private G()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, -0x41
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x0
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->j:I
return-void
.end method
.method private H()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->k:Ljava/lang/String;
return-object v0
.end method
.method private I()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, 0x80
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private J()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, -0x81
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->k:Ljava/lang/String;
return-void
.end method
.method private K()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->l:Ljava/lang/String;
return-object v0
.end method
.method private L()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, 0x100
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private M()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, -0x101
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->l:Ljava/lang/String;
return-void
.end method
.method private N()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->m:Z
return v0
.end method
.method private O()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, 0x200
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private P()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, -0x201
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->m:Z
return-void
.end method
.method private Q()Lcom/mato/android/matoid/service/mtunnel/g;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->n:Lcom/mato/android/matoid/service/mtunnel/g;
return-object v0
.end method
.method private R()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, 0x400
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private S()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, -0x401
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->a:Lcom/mato/android/matoid/service/mtunnel/g;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->n:Lcom/mato/android/matoid/service/mtunnel/g;
return-void
.end method
.method private T()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->o:Z
return v0
.end method
.method private U()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, 0x800
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private V()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, -0x801
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->o:Z
return-void
.end method
.method private W()Lcom/mato/android/matoid/service/mtunnel/e;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->p:Lcom/mato/android/matoid/service/mtunnel/e;
return-object v0
.end method
.method private X()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, 0x1000
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private Y()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, -0x1001
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/e;->a:Lcom/mato/android/matoid/service/mtunnel/e;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->p:Lcom/mato/android/matoid/service/mtunnel/e;
return-void
.end method
.method private Z()I
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->q:I
return v0
.end method
.method private static a(Ljava/io/InputStream;)Lcom/mato/android/matoid/service/mtunnel/d;
.registers 3
invoke-static {p0}, Lcom/google/a/c;->a(Ljava/io/InputStream;)Lcom/google/a/c;
move-result-object v0
new-instance v1, Lcom/mato/android/matoid/service/mtunnel/d;
invoke-direct {v1}, Lcom/mato/android/matoid/service/mtunnel/d;-><init>()V
invoke-virtual {v1, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/google/a/c;)V
return-object v1
.end method
.method private a(II)V
.registers 6
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
aget-object v0, v0, p1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
aget-object v2, v2, p2
aput-object v2, v1, p1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
aput-object v0, v1, p2
return-void
.end method
.method private a(ILjava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
aput-object p2, v0, p1
return-void
.end method
.method private a(Lcom/mato/android/matoid/service/mtunnel/c;)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_b
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, -0x8000
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->M:Lcom/mato/android/matoid/service/mtunnel/c;
return-void
.end method
.method private aA()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x80
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private aB()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x800001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x0
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->E:I
return-void
.end method
.method private aC()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->F:Z
return v0
.end method
.method private aD()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x100
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private aE()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x1000001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->F:Z
return-void
.end method
.method private aF()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->G:Z
return v0
.end method
.method private aG()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x200
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private aH()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x2000001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->G:Z
return-void
.end method
.method private aI()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x400
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private aJ()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x4000001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->H:Z
return-void
.end method
.method private aK()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->I:Ljava/lang/String;
return-object v0
.end method
.method private aL()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x800
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private aM()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x8000001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->I:Ljava/lang/String;
return-void
.end method
.method private aN()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->J:Z
return v0
.end method
.method private aO()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x1000
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private aP()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x10000001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->J:Z
return-void
.end method
.method private aQ()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->K:Z
return v0
.end method
.method private aR()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x2000
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private aS()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x20000001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->K:Z
return-void
.end method
.method private aT()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->L:Ljava/lang/String;
return-object v0
.end method
.method private aU()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x4000
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private aV()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x40000001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->L:Ljava/lang/String;
return-void
.end method
.method private aW()Lcom/mato/android/matoid/service/mtunnel/c;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->M:Lcom/mato/android/matoid/service/mtunnel/c;
return-object v0
.end method
.method private aX()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, -0x8000
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private aY()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, 0x7fffffff
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->a:Lcom/mato/android/matoid/service/mtunnel/c;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->M:Lcom/mato/android/matoid/service/mtunnel/c;
return-void
.end method
.method private aZ()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->N:Ljava/lang/String;
return-object v0
.end method
.method private aa()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, 0x2000
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private ab()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, -0x2001
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->q:I
return-void
.end method
.method private ac()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->r:Z
return v0
.end method
.method private ad()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, 0x4000
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private ae()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit16 v0, v0, -0x4001
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->r:Z
return-void
.end method
.method private af()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, 0x8000
and-int/2addr v0, v1
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private ag()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x8001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->s:Z
return-void
.end method
.method private ah()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x1
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private ai()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x10001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->c:Lcom/mato/android/matoid/service/mtunnel/b;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->t:Lcom/mato/android/matoid/service/mtunnel/b;
return-void
.end method
.method private aj()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->u:Ljava/lang/String;
return-object v0
.end method
.method private ak()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x2
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private al()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x20001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->u:Ljava/lang/String;
return-void
.end method
.method private am()I
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
return v0
.end method
.method private an()V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
if-lez v0, :cond_14
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
const-string/jumbo v2, ""
aput-object v2, v0, v1
:cond_14
return-void
.end method
.method private ao()V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
:goto_3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
if-gtz v0, :cond_8
return-void
:cond_8
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
const-string/jumbo v2, ""
aput-object v2, v0, v1
goto :goto_3
.end method
.method private ap()I
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
return v0
.end method
.method private aq()V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
if-lez v0, :cond_14
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
const-string/jumbo v2, ""
aput-object v2, v0, v1
:cond_14
return-void
.end method
.method private ar()V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
:goto_3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
if-gtz v0, :cond_8
return-void
:cond_8
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
const-string/jumbo v2, ""
aput-object v2, v0, v1
goto :goto_3
.end method
.method private as()I
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
return v0
.end method
.method private at()V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
if-lez v0, :cond_12
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
const/4 v2, 0x0
aput v2, v0, v1
:cond_12
return-void
.end method
.method private au()V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
:goto_3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
if-gtz v0, :cond_8
return-void
:cond_8
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
const/4 v2, 0x0
aput v2, v0, v1
goto :goto_3
.end method
.method private av()I
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
return v0
.end method
.method private aw()V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
if-lez v0, :cond_14
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
const-string/jumbo v2, ""
aput-object v2, v0, v1
:cond_14
return-void
.end method
.method private ax()V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
:goto_3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
if-gtz v0, :cond_8
return-void
:cond_8
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
const-string/jumbo v2, ""
aput-object v2, v0, v1
goto :goto_3
.end method
.method private ay()Z
.registers 3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x40
and-int/2addr v0, v1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private az()V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, -0x400001
and-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->D:Ljava/lang/String;
return-void
.end method
.method private static b(Lcom/google/a/c;)Lcom/mato/android/matoid/service/mtunnel/d;
.registers 2
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/d;
invoke-direct {v0}, Lcom/mato/android/matoid/service/mtunnel/d;-><init>()V
invoke-virtual {v0, p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/google/a/c;)V
return-object v0
.end method
.method private b(II)V
.registers 6
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
aget-object v0, v0, p1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
aget-object v2, v2, p2
aput-object v2, v1, p1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
aput-object v0, v1, p2
return-void
.end method
.method private b(ILjava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
aput-object p2, v0, p1
return-void
.end method
.method private ba()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private bb()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
and-int/lit8 v0, v0, -0x2
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->N:Ljava/lang/String;
return-void
.end method
.method private bc()I
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
return v0
.end method
.method private bd()V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
if-lez v0, :cond_14
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
const-string/jumbo v2, ""
aput-object v2, v0, v1
:cond_14
return-void
.end method
.method private be()V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
:goto_3
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
if-gtz v0, :cond_8
return-void
:cond_8
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
const-string/jumbo v2, ""
aput-object v2, v0, v1
goto :goto_3
.end method
.method private bf()I
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->Q:I
return v0
.end method
.method private bg()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private bh()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
and-int/lit8 v0, v0, -0x5
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
const/4 v0, 0x0
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->Q:I
return-void
.end method
.method private bi()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->R:Z
return v0
.end method
.method private bj()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private bk()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
and-int/lit8 v0, v0, -0x9
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->R:Z
return-void
.end method
.method private bl()V
.registers 2
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/h;->a:Lcom/mato/android/matoid/service/mtunnel/h;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->d:Lcom/mato/android/matoid/service/mtunnel/h;
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->a:Lcom/mato/android/matoid/service/mtunnel/g;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->n:Lcom/mato/android/matoid/service/mtunnel/g;
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/e;->a:Lcom/mato/android/matoid/service/mtunnel/e;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->p:Lcom/mato/android/matoid/service/mtunnel/e;
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->c:Lcom/mato/android/matoid/service/mtunnel/b;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->t:Lcom/mato/android/matoid/service/mtunnel/b;
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->a:Lcom/mato/android/matoid/service/mtunnel/c;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->M:Lcom/mato/android/matoid/service/mtunnel/c;
return-void
.end method
.method private c(II)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
aput p2, v0, p1
return-void
.end method
.method private c(ILjava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
aput-object p2, v0, p1
return-void
.end method
.method private d(II)V
.registers 6
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
aget v0, v0, p1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
aget v2, v2, p2
aput v2, v1, p1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
aput v0, v1, p2
return-void
.end method
.method private d(ILjava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
aput-object p2, v0, p1
return-void
.end method
.method private e(II)V
.registers 6
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
aget-object v0, v0, p1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
aget-object v2, v2, p2
aput-object v2, v1, p1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
aput-object v0, v1, p2
return-void
.end method
.method private f(I)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit8 v0, v0, 0x40
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->j:I
return-void
.end method
.method private f(II)V
.registers 6
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
aget-object v0, v0, p1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
aget-object v2, v2, p2
aput-object v2, v1, p1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
aput-object v0, v1, p2
return-void
.end method
.method private g(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
aget-object v0, v0, p1
return-object v0
.end method
.method private g(Z)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x100
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->F:Z
return-void
.end method
.method private h(I)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
array-length v0, v0
if-lt p1, v0, :cond_11
new-array v0, p1, [Ljava/lang/String;
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
:cond_11
return-void
.end method
.method private h(Z)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x200
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->G:Z
return-void
.end method
.method private i(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
aget-object v0, v0, p1
return-object v0
.end method
.method private i(Z)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x1000
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->J:Z
return-void
.end method
.method private j(I)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
array-length v0, v0
if-lt p1, v0, :cond_11
new-array v0, p1, [Ljava/lang/String;
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
:cond_11
return-void
.end method
.method private j(Z)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x2000
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->K:Z
return-void
.end method
.method private k(I)I
.registers 3
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
aget v0, v0, p1
return v0
.end method
.method private k(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit8 v0, v0, 0x20
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->i:Ljava/lang/String;
return-void
.end method
.method private static l()Lcom/mato/android/matoid/service/mtunnel/d;
.registers 1
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/d;->c:Lcom/mato/android/matoid/service/mtunnel/d;
return-object v0
.end method
.method private l(I)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
array-length v0, v0
if-lt p1, v0, :cond_11
new-array v0, p1, [I
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
:cond_11
return-void
.end method
.method private l(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
array-length v1, v1
if-lt v0, v1, :cond_18
new-array v0, v0, [Ljava/lang/String;
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
:cond_18
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
aput-object p1, v0, v1
return-void
.end method
.method private static m()Lcom/mato/android/matoid/service/mtunnel/d;
.registers 1
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/d;->c:Lcom/mato/android/matoid/service/mtunnel/d;
return-object v0
.end method
.method private m(I)V
.registers 5
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
add-int/lit8 v0, v0, 0x1
invoke-direct {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->l(I)V
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
aput p1, v0, v1
return-void
.end method
.method private m(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->N:Ljava/lang/String;
return-void
.end method
.method private n()Lcom/mato/android/matoid/service/mtunnel/h;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->d:Lcom/mato/android/matoid/service/mtunnel/h;
return-object v0
.end method
.method private n(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
aget-object v0, v0, p1
return-object v0
.end method
.method private n(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
array-length v1, v1
if-lt v0, v1, :cond_18
new-array v0, v0, [Ljava/lang/String;
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
:cond_18
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
aput-object p1, v0, v1
return-void
.end method
.method private o(I)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
array-length v0, v0
if-lt p1, v0, :cond_11
new-array v0, p1, [Ljava/lang/String;
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
:cond_11
return-void
.end method
.method private o()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private p(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
aget-object v0, v0, p1
return-object v0
.end method
.method private p()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, -0x2
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/h;->a:Lcom/mato/android/matoid/service/mtunnel/h;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->d:Lcom/mato/android/matoid/service/mtunnel/h;
return-void
.end method
.method private q()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->e:Ljava/lang/String;
return-object v0
.end method
.method private q(I)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
array-length v0, v0
if-lt p1, v0, :cond_11
new-array v0, p1, [Ljava/lang/String;
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
:cond_11
return-void
.end method
.method private r()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private s()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, -0x3
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->e:Ljava/lang/String;
return-void
.end method
.method private t()I
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->f:I
return v0
.end method
.method private u()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private v()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, -0x5
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/4 v0, 0x0
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->f:I
return-void
.end method
.method private w()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private x()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, -0x9
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->g:Ljava/lang/String;
return-void
.end method
.method private y()I
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->h:I
return v0
.end method
.method private z()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final a(I)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->f:I
return-void
.end method
.method public final a(Lcom/google/a/c;)V
.registers 7
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
:goto_4
:cond_4
invoke-virtual {p1}, Lcom/google/a/c;->a()I
move-result v0
sparse-switch v0, :sswitch_data_212
invoke-virtual {p1, v0}, Lcom/google/a/c;->a(I)Z
move-result v0
if-nez v0, :cond_4
:sswitch_11
return-void
:sswitch_12
invoke-virtual {p1}, Lcom/google/a/c;->m()I
move-result v0
invoke-static {v0}, Lcom/mato/android/matoid/service/mtunnel/h;->b(I)Lcom/mato/android/matoid/service/mtunnel/h;
move-result-object v0
if-eqz v0, :cond_4
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/mato/android/matoid/service/mtunnel/h;)V
goto :goto_4
:sswitch_20
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Ljava/lang/String;)V
goto :goto_4
:sswitch_28
invoke-virtual {p1}, Lcom/google/a/c;->f()I
move-result v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(I)V
goto :goto_4
:sswitch_30
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->b(Ljava/lang/String;)V
goto :goto_4
:sswitch_38
invoke-virtual {p1}, Lcom/google/a/c;->f()I
move-result v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->b(I)V
goto :goto_4
:sswitch_40
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit8 v1, v1, 0x20
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->i:Ljava/lang/String;
goto :goto_4
:sswitch_50
invoke-virtual {p1}, Lcom/google/a/c;->f()I
move-result v0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit8 v1, v1, 0x40
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->j:I
goto :goto_4
:sswitch_60
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->c(Ljava/lang/String;)V
goto :goto_4
:sswitch_68
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->d(Ljava/lang/String;)V
goto :goto_4
:sswitch_70
invoke-virtual {p1}, Lcom/google/a/c;->i()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Z)V
goto :goto_4
:sswitch_78
invoke-virtual {p1}, Lcom/google/a/c;->m()I
move-result v0
invoke-static {v0}, Lcom/mato/android/matoid/service/mtunnel/g;->b(I)Lcom/mato/android/matoid/service/mtunnel/g;
move-result-object v0
if-eqz v0, :cond_4
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/mato/android/matoid/service/mtunnel/g;)V
goto/16 :goto_4
:sswitch_87
invoke-virtual {p1}, Lcom/google/a/c;->i()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->b(Z)V
goto/16 :goto_4
:sswitch_90
invoke-virtual {p1}, Lcom/google/a/c;->m()I
move-result v0
invoke-static {v0}, Lcom/mato/android/matoid/service/mtunnel/e;->b(I)Lcom/mato/android/matoid/service/mtunnel/e;
move-result-object v0
if-eqz v0, :cond_4
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/mato/android/matoid/service/mtunnel/e;)V
goto/16 :goto_4
:sswitch_9f
invoke-virtual {p1}, Lcom/google/a/c;->f()I
move-result v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->c(I)V
goto/16 :goto_4
:sswitch_a8
invoke-virtual {p1}, Lcom/google/a/c;->i()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->c(Z)V
goto/16 :goto_4
:sswitch_b1
invoke-virtual {p1}, Lcom/google/a/c;->i()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->d(Z)V
goto/16 :goto_4
:sswitch_ba
invoke-virtual {p1}, Lcom/google/a/c;->m()I
move-result v0
invoke-static {v0}, Lcom/mato/android/matoid/service/mtunnel/b;->b(I)Lcom/mato/android/matoid/service/mtunnel/b;
move-result-object v0
if-eqz v0, :cond_4
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/mato/android/matoid/service/mtunnel/b;)V
goto/16 :goto_4
:sswitch_c9
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->e(Ljava/lang/String;)V
goto/16 :goto_4
:sswitch_d2
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->f(Ljava/lang/String;)V
goto/16 :goto_4
:sswitch_db
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
add-int/lit8 v1, v1, 0x1
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
array-length v2, v2
if-lt v1, v2, :cond_f6
new-array v1, v1, [Ljava/lang/String;
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
iget v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
:cond_f6
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
aput-object v0, v1, v2
goto/16 :goto_4
:sswitch_102
invoke-virtual {p1}, Lcom/google/a/c;->f()I
move-result v0
invoke-direct {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->m(I)V
goto/16 :goto_4
:sswitch_10b
invoke-virtual {p1}, Lcom/google/a/c;->r()I
move-result v0
invoke-direct {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->l(I)V
invoke-virtual {p1, v0}, Lcom/google/a/c;->b(I)I
move-result v0
:goto_116
invoke-virtual {p1}, Lcom/google/a/c;->u()I
move-result v1
if-gtz v1, :cond_121
invoke-virtual {p1, v0}, Lcom/google/a/c;->c(I)V
goto/16 :goto_4
:cond_121
invoke-virtual {p1}, Lcom/google/a/c;->f()I
move-result v1
invoke-direct {p0, v1}, Lcom/mato/android/matoid/service/mtunnel/d;->m(I)V
goto :goto_116
:sswitch_129
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->g(Ljava/lang/String;)V
goto/16 :goto_4
:sswitch_132
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->h(Ljava/lang/String;)V
goto/16 :goto_4
:sswitch_13b
invoke-virtual {p1}, Lcom/google/a/c;->f()I
move-result v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->d(I)V
goto/16 :goto_4
:sswitch_144
invoke-virtual {p1}, Lcom/google/a/c;->i()Z
move-result v0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v2, 0x100
or-int/2addr v1, v2
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->F:Z
goto/16 :goto_4
:sswitch_156
invoke-virtual {p1}, Lcom/google/a/c;->i()Z
move-result v0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v2, 0x200
or-int/2addr v1, v2
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->G:Z
goto/16 :goto_4
:sswitch_168
invoke-virtual {p1}, Lcom/google/a/c;->i()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->e(Z)V
goto/16 :goto_4
:sswitch_171
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->i(Ljava/lang/String;)V
goto/16 :goto_4
:sswitch_17a
invoke-virtual {p1}, Lcom/google/a/c;->i()Z
move-result v0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v2, 0x1000
or-int/2addr v1, v2
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->J:Z
goto/16 :goto_4
:sswitch_18c
invoke-virtual {p1}, Lcom/google/a/c;->i()Z
move-result v0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v2, 0x2000
or-int/2addr v1, v2
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->K:Z
goto/16 :goto_4
:sswitch_19e
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->j(Ljava/lang/String;)V
goto/16 :goto_4
:sswitch_1a7
invoke-virtual {p1}, Lcom/google/a/c;->m()I
move-result v0
invoke-static {v0}, Lcom/mato/android/matoid/service/mtunnel/c;->b(I)Lcom/mato/android/matoid/service/mtunnel/c;
move-result-object v0
if-eqz v0, :cond_4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
if-nez v0, :cond_1bc
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_1bc
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v2, -0x8000
or-int/2addr v1, v2
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->M:Lcom/mato/android/matoid/service/mtunnel/c;
goto/16 :goto_4
:sswitch_1c7
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
or-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->N:Ljava/lang/String;
goto/16 :goto_4
:sswitch_1d8
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
add-int/lit8 v1, v1, 0x1
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
array-length v2, v2
if-lt v1, v2, :cond_1f3
new-array v1, v1, [Ljava/lang/String;
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
iget v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
:cond_1f3
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
aput-object v0, v1, v2
goto/16 :goto_4
:sswitch_1ff
invoke-virtual {p1}, Lcom/google/a/c;->f()I
move-result v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->e(I)V
goto/16 :goto_4
:sswitch_208
invoke-virtual {p1}, Lcom/google/a/c;->i()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->f(Z)V
goto/16 :goto_4
nop
:sswitch_data_212
.sparse-switch
0x0 -> :sswitch_11
0x8 -> :sswitch_12
0x12 -> :sswitch_20
0x18 -> :sswitch_28
0x22 -> :sswitch_30
0x28 -> :sswitch_38
0x32 -> :sswitch_40
0x38 -> :sswitch_50
0x42 -> :sswitch_60
0x4a -> :sswitch_68
0x50 -> :sswitch_70
0x58 -> :sswitch_78
0x60 -> :sswitch_87
0x68 -> :sswitch_90
0x70 -> :sswitch_9f
0x78 -> :sswitch_a8
0x80 -> :sswitch_b1
0x88 -> :sswitch_ba
0x92 -> :sswitch_c9
0x9a -> :sswitch_d2
0xa2 -> :sswitch_db
0xa8 -> :sswitch_102
0xaa -> :sswitch_10b
0xb2 -> :sswitch_129
0xba -> :sswitch_132
0xc0 -> :sswitch_13b
0xc8 -> :sswitch_144
0xd0 -> :sswitch_156
0xd8 -> :sswitch_168
0xe2 -> :sswitch_171
0xe8 -> :sswitch_17a
0xf0 -> :sswitch_18c
0xfa -> :sswitch_19e
0x100 -> :sswitch_1a7
0x10a -> :sswitch_1c7
0x112 -> :sswitch_1d8
0x118 -> :sswitch_1ff
0x120 -> :sswitch_208
.end sparse-switch
.end method
.method public final a(Lcom/google/a/d;)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->o()Z
move-result v0
if-eqz v0, :cond_11
const/4 v0, 0x1
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->d:Lcom/mato/android/matoid/service/mtunnel/h;
invoke-virtual {v2}, Lcom/mato/android/matoid/service/mtunnel/h;->a()I
move-result v2
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->b(II)V
:cond_11
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->r()Z
move-result v0
if-eqz v0, :cond_1d
const/4 v0, 0x2
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->e:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
:cond_1d
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->u()Z
move-result v0
if-eqz v0, :cond_29
const/4 v0, 0x3
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->f:I
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(II)V
:cond_29
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->w()Z
move-result v0
if-eqz v0, :cond_35
const/4 v0, 0x4
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->g:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
:cond_35
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->z()Z
move-result v0
if-eqz v0, :cond_41
const/4 v0, 0x5
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->h:I
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(II)V
:cond_41
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->C()Z
move-result v0
if-eqz v0, :cond_4d
const/4 v0, 0x6
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->i:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
:cond_4d
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->F()Z
move-result v0
if-eqz v0, :cond_59
const/4 v0, 0x7
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->j:I
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(II)V
:cond_59
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->I()Z
move-result v0
if-eqz v0, :cond_66
const/16 v0, 0x8
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->k:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
:cond_66
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->L()Z
move-result v0
if-eqz v0, :cond_73
const/16 v0, 0x9
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->l:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
:cond_73
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->O()Z
move-result v0
if-eqz v0, :cond_80
const/16 v0, 0xa
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->m:Z
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(IZ)V
:cond_80
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->R()Z
move-result v0
if-eqz v0, :cond_91
const/16 v0, 0xb
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->n:Lcom/mato/android/matoid/service/mtunnel/g;
invoke-virtual {v2}, Lcom/mato/android/matoid/service/mtunnel/g;->a()I
move-result v2
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->b(II)V
:cond_91
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->U()Z
move-result v0
if-eqz v0, :cond_9e
const/16 v0, 0xc
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->o:Z
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(IZ)V
:cond_9e
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->X()Z
move-result v0
if-eqz v0, :cond_af
const/16 v0, 0xd
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->p:Lcom/mato/android/matoid/service/mtunnel/e;
invoke-virtual {v2}, Lcom/mato/android/matoid/service/mtunnel/e;->a()I
move-result v2
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->b(II)V
:cond_af
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aa()Z
move-result v0
if-eqz v0, :cond_bc
const/16 v0, 0xe
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->q:I
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(II)V
:cond_bc
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ad()Z
move-result v0
if-eqz v0, :cond_c9
const/16 v0, 0xf
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->r:Z
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(IZ)V
:cond_c9
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->af()Z
move-result v0
if-eqz v0, :cond_d6
const/16 v0, 0x10
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->s:Z
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(IZ)V
:cond_d6
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ah()Z
move-result v0
if-eqz v0, :cond_e7
const/16 v0, 0x11
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->t:Lcom/mato/android/matoid/service/mtunnel/b;
invoke-virtual {v2}, Lcom/mato/android/matoid/service/mtunnel/b;->a()I
move-result v2
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->b(II)V
:cond_e7
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ak()Z
move-result v0
if-eqz v0, :cond_f4
const/16 v0, 0x12
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->u:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
:cond_f4
move v0, v1
:goto_f5
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
if-lt v0, v2, :cond_1ba
move v0, v1
:goto_fa
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
if-lt v0, v2, :cond_1c7
move v0, v1
:goto_ff
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
if-lt v0, v2, :cond_1d4
move v0, v1
:goto_104
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
if-lt v0, v2, :cond_1e1
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ay()Z
move-result v0
if-eqz v0, :cond_115
const/16 v0, 0x17
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->D:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
:cond_115
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aA()Z
move-result v0
if-eqz v0, :cond_122
const/16 v0, 0x18
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->E:I
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(II)V
:cond_122
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aD()Z
move-result v0
if-eqz v0, :cond_12f
const/16 v0, 0x19
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->F:Z
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(IZ)V
:cond_12f
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aG()Z
move-result v0
if-eqz v0, :cond_13c
const/16 v0, 0x1a
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->G:Z
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(IZ)V
:cond_13c
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aI()Z
move-result v0
if-eqz v0, :cond_149
const/16 v0, 0x1b
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->H:Z
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(IZ)V
:cond_149
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aL()Z
move-result v0
if-eqz v0, :cond_156
const/16 v0, 0x1c
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->I:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
:cond_156
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aO()Z
move-result v0
if-eqz v0, :cond_163
const/16 v0, 0x1d
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->J:Z
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(IZ)V
:cond_163
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aR()Z
move-result v0
if-eqz v0, :cond_170
const/16 v0, 0x1e
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->K:Z
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(IZ)V
:cond_170
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aU()Z
move-result v0
if-eqz v0, :cond_17d
const/16 v0, 0x1f
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->L:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
:cond_17d
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aX()Z
move-result v0
if-eqz v0, :cond_18e
const/16 v0, 0x20
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->M:Lcom/mato/android/matoid/service/mtunnel/c;
invoke-virtual {v2}, Lcom/mato/android/matoid/service/mtunnel/c;->a()I
move-result v2
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->b(II)V
:cond_18e
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ba()Z
move-result v0
if-eqz v0, :cond_19b
const/16 v0, 0x21
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->N:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
:cond_19b
:goto_19b
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
if-lt v1, v0, :cond_1ee
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->bg()Z
move-result v0
if-eqz v0, :cond_1ac
const/16 v0, 0x23
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->Q:I
invoke-virtual {p1, v0, v1}, Lcom/google/a/d;->a(II)V
:cond_1ac
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->bj()Z
move-result v0
if-eqz v0, :cond_1b9
const/16 v0, 0x24
iget-boolean v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->R:Z
invoke-virtual {p1, v0, v1}, Lcom/google/a/d;->a(IZ)V
:cond_1b9
return-void
:cond_1ba
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
aget-object v2, v2, v0
const/16 v3, 0x13
invoke-virtual {p1, v3, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto/16 :goto_f5
:cond_1c7
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
aget-object v2, v2, v0
const/16 v3, 0x14
invoke-virtual {p1, v3, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto/16 :goto_fa
:cond_1d4
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
aget v2, v2, v0
const/16 v3, 0x15
invoke-virtual {p1, v3, v2}, Lcom/google/a/d;->a(II)V
add-int/lit8 v0, v0, 0x1
goto/16 :goto_ff
:cond_1e1
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
aget-object v2, v2, v0
const/16 v3, 0x16
invoke-virtual {p1, v3, v2}, Lcom/google/a/d;->a(ILjava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto/16 :goto_104
:cond_1ee
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
aget-object v0, v0, v1
const/16 v2, 0x22
invoke-virtual {p1, v2, v0}, Lcom/google/a/d;->a(ILjava/lang/String;)V
add-int/lit8 v1, v1, 0x1
goto :goto_19b
.end method
.method public final a(Lcom/mato/android/matoid/service/mtunnel/b;)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_b
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x1
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->t:Lcom/mato/android/matoid/service/mtunnel/b;
return-void
.end method
.method public final a(Lcom/mato/android/matoid/service/mtunnel/e;)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_b
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit16 v0, v0, 0x1000
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->p:Lcom/mato/android/matoid/service/mtunnel/e;
return-void
.end method
.method public final a(Lcom/mato/android/matoid/service/mtunnel/g;)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_b
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit16 v0, v0, 0x400
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->n:Lcom/mato/android/matoid/service/mtunnel/g;
return-void
.end method
.method public final a(Lcom/mato/android/matoid/service/mtunnel/h;)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_b
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->d:Lcom/mato/android/matoid/service/mtunnel/h;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->e:Ljava/lang/String;
return-void
.end method
.method public final a(Z)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit16 v0, v0, 0x200
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->m:Z
return-void
.end method
.method public final b(I)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit8 v0, v0, 0x10
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->h:I
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit8 v0, v0, 0x8
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->g:Ljava/lang/String;
return-void
.end method
.method public final b(Z)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit16 v0, v0, 0x800
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->o:Z
return-void
.end method
.method public final b()Z
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->r()Z
move-result v1
if-nez v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->u()Z
move-result v1
if-eqz v1, :cond_7
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->w()Z
move-result v1
if-eqz v1, :cond_7
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->z()Z
move-result v1
if-eqz v1, :cond_7
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->I()Z
move-result v1
if-eqz v1, :cond_7
const/4 v0, 0x1
goto :goto_7
.end method
.method public final c()I
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->o()Z
move-result v0
if-eqz v0, :cond_262
const/4 v0, 0x1
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->d:Lcom/mato/android/matoid/service/mtunnel/h;
invoke-virtual {v2}, Lcom/mato/android/matoid/service/mtunnel/h;->a()I
move-result v2
invoke-static {v0, v2}, Lcom/google/a/d;->d(II)I
move-result v0
add-int/lit8 v0, v0, 0x0
:goto_14
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->r()Z
move-result v2
if-eqz v2, :cond_22
const/4 v2, 0x2
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->e:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/a/d;->b(ILjava/lang/String;)I
move-result v2
add-int/2addr v0, v2
:cond_22
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->u()Z
move-result v2
if-eqz v2, :cond_30
const/4 v2, 0x3
iget v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->f:I
invoke-static {v2, v3}, Lcom/google/a/d;->c(II)I
move-result v2
add-int/2addr v0, v2
:cond_30
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->w()Z
move-result v2
if-eqz v2, :cond_3e
const/4 v2, 0x4
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->g:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/a/d;->b(ILjava/lang/String;)I
move-result v2
add-int/2addr v0, v2
:cond_3e
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->z()Z
move-result v2
if-eqz v2, :cond_4c
const/4 v2, 0x5
iget v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->h:I
invoke-static {v2, v3}, Lcom/google/a/d;->c(II)I
move-result v2
add-int/2addr v0, v2
:cond_4c
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->C()Z
move-result v2
if-eqz v2, :cond_5a
const/4 v2, 0x6
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->i:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/a/d;->b(ILjava/lang/String;)I
move-result v2
add-int/2addr v0, v2
:cond_5a
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->F()Z
move-result v2
if-eqz v2, :cond_68
const/4 v2, 0x7
iget v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->j:I
invoke-static {v2, v3}, Lcom/google/a/d;->c(II)I
move-result v2
add-int/2addr v0, v2
:cond_68
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->I()Z
move-result v2
if-eqz v2, :cond_77
const/16 v2, 0x8
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->k:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/a/d;->b(ILjava/lang/String;)I
move-result v2
add-int/2addr v0, v2
:cond_77
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->L()Z
move-result v2
if-eqz v2, :cond_86
const/16 v2, 0x9
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->l:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/a/d;->b(ILjava/lang/String;)I
move-result v2
add-int/2addr v0, v2
:cond_86
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->O()Z
move-result v2
if-eqz v2, :cond_95
const/16 v2, 0xa
iget-boolean v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->m:Z
invoke-static {v2, v3}, Lcom/google/a/d;->b(IZ)I
move-result v2
add-int/2addr v0, v2
:cond_95
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->R()Z
move-result v2
if-eqz v2, :cond_a8
const/16 v2, 0xb
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->n:Lcom/mato/android/matoid/service/mtunnel/g;
invoke-virtual {v3}, Lcom/mato/android/matoid/service/mtunnel/g;->a()I
move-result v3
invoke-static {v2, v3}, Lcom/google/a/d;->d(II)I
move-result v2
add-int/2addr v0, v2
:cond_a8
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->U()Z
move-result v2
if-eqz v2, :cond_b7
const/16 v2, 0xc
iget-boolean v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->o:Z
invoke-static {v2, v3}, Lcom/google/a/d;->b(IZ)I
move-result v2
add-int/2addr v0, v2
:cond_b7
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->X()Z
move-result v2
if-eqz v2, :cond_ca
const/16 v2, 0xd
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->p:Lcom/mato/android/matoid/service/mtunnel/e;
invoke-virtual {v3}, Lcom/mato/android/matoid/service/mtunnel/e;->a()I
move-result v3
invoke-static {v2, v3}, Lcom/google/a/d;->d(II)I
move-result v2
add-int/2addr v0, v2
:cond_ca
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aa()Z
move-result v2
if-eqz v2, :cond_d9
const/16 v2, 0xe
iget v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->q:I
invoke-static {v2, v3}, Lcom/google/a/d;->c(II)I
move-result v2
add-int/2addr v0, v2
:cond_d9
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ad()Z
move-result v2
if-eqz v2, :cond_e8
const/16 v2, 0xf
iget-boolean v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->r:Z
invoke-static {v2, v3}, Lcom/google/a/d;->b(IZ)I
move-result v2
add-int/2addr v0, v2
:cond_e8
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->af()Z
move-result v2
if-eqz v2, :cond_f7
const/16 v2, 0x10
iget-boolean v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->s:Z
invoke-static {v2, v3}, Lcom/google/a/d;->b(IZ)I
move-result v2
add-int/2addr v0, v2
:cond_f7
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ah()Z
move-result v2
if-eqz v2, :cond_10a
const/16 v2, 0x11
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->t:Lcom/mato/android/matoid/service/mtunnel/b;
invoke-virtual {v3}, Lcom/mato/android/matoid/service/mtunnel/b;->a()I
move-result v3
invoke-static {v2, v3}, Lcom/google/a/d;->d(II)I
move-result v2
add-int/2addr v0, v2
:cond_10a
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ak()Z
move-result v2
if-eqz v2, :cond_119
const/16 v2, 0x12
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->u:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/a/d;->b(ILjava/lang/String;)I
move-result v2
add-int/2addr v0, v2
:cond_119
move v2, v1
move v3, v1
:goto_11b
iget v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
if-lt v2, v4, :cond_222
add-int/2addr v0, v3
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
mul-int/lit8 v2, v2, 0x2
add-int v3, v0, v2
move v0, v1
move v2, v1
:goto_128
iget v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
if-lt v0, v4, :cond_22f
add-int v0, v3, v2
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->y:I
mul-int/lit8 v2, v2, 0x2
add-int v3, v0, v2
move v0, v1
move v2, v1
:goto_136
iget v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
if-lt v0, v4, :cond_23c
add-int v0, v3, v2
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->A:I
mul-int/lit8 v2, v2, 0x2
add-int v3, v0, v2
move v0, v1
move v2, v1
:goto_144
iget v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
if-lt v0, v4, :cond_249
add-int v0, v3, v2
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
mul-int/lit8 v2, v2, 0x2
add-int/2addr v0, v2
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ay()Z
move-result v2
if-eqz v2, :cond_15e
const/16 v2, 0x17
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->D:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/a/d;->b(ILjava/lang/String;)I
move-result v2
add-int/2addr v0, v2
:cond_15e
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aA()Z
move-result v2
if-eqz v2, :cond_16d
const/16 v2, 0x18
iget v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->E:I
invoke-static {v2, v3}, Lcom/google/a/d;->c(II)I
move-result v2
add-int/2addr v0, v2
:cond_16d
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aD()Z
move-result v2
if-eqz v2, :cond_17c
const/16 v2, 0x19
iget-boolean v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->F:Z
invoke-static {v2, v3}, Lcom/google/a/d;->b(IZ)I
move-result v2
add-int/2addr v0, v2
:cond_17c
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aG()Z
move-result v2
if-eqz v2, :cond_18b
const/16 v2, 0x1a
iget-boolean v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->G:Z
invoke-static {v2, v3}, Lcom/google/a/d;->b(IZ)I
move-result v2
add-int/2addr v0, v2
:cond_18b
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aI()Z
move-result v2
if-eqz v2, :cond_19a
const/16 v2, 0x1b
iget-boolean v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->H:Z
invoke-static {v2, v3}, Lcom/google/a/d;->b(IZ)I
move-result v2
add-int/2addr v0, v2
:cond_19a
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aL()Z
move-result v2
if-eqz v2, :cond_1a9
const/16 v2, 0x1c
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->I:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/a/d;->b(ILjava/lang/String;)I
move-result v2
add-int/2addr v0, v2
:cond_1a9
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aO()Z
move-result v2
if-eqz v2, :cond_1b8
const/16 v2, 0x1d
iget-boolean v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->J:Z
invoke-static {v2, v3}, Lcom/google/a/d;->b(IZ)I
move-result v2
add-int/2addr v0, v2
:cond_1b8
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aR()Z
move-result v2
if-eqz v2, :cond_1c7
const/16 v2, 0x1e
iget-boolean v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->K:Z
invoke-static {v2, v3}, Lcom/google/a/d;->b(IZ)I
move-result v2
add-int/2addr v0, v2
:cond_1c7
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aU()Z
move-result v2
if-eqz v2, :cond_1d6
const/16 v2, 0x1f
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->L:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/a/d;->b(ILjava/lang/String;)I
move-result v2
add-int/2addr v0, v2
:cond_1d6
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aX()Z
move-result v2
if-eqz v2, :cond_1e9
const/16 v2, 0x20
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->M:Lcom/mato/android/matoid/service/mtunnel/c;
invoke-virtual {v3}, Lcom/mato/android/matoid/service/mtunnel/c;->a()I
move-result v3
invoke-static {v2, v3}, Lcom/google/a/d;->d(II)I
move-result v2
add-int/2addr v0, v2
:cond_1e9
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ba()Z
move-result v2
if-eqz v2, :cond_1f8
const/16 v2, 0x21
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->N:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/a/d;->b(ILjava/lang/String;)I
move-result v2
add-int/2addr v0, v2
:cond_1f8
move v2, v1
:goto_1f9
iget v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
if-lt v1, v3, :cond_256
add-int/2addr v0, v2
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->P:I
mul-int/lit8 v1, v1, 0x2
add-int/2addr v0, v1
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->bg()Z
move-result v1
if-eqz v1, :cond_212
const/16 v1, 0x23
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->Q:I
invoke-static {v1, v2}, Lcom/google/a/d;->c(II)I
move-result v1
add-int/2addr v0, v1
:cond_212
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->bj()Z
move-result v1
if-eqz v1, :cond_221
const/16 v1, 0x24
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->R:Z
invoke-static {v1, v2}, Lcom/google/a/d;->b(IZ)I
move-result v1
add-int/2addr v0, v1
:cond_221
return v0
:cond_222
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
aget-object v4, v4, v2
invoke-static {v4}, Lcom/google/a/d;->b(Ljava/lang/String;)I
move-result v4
add-int/2addr v3, v4
add-int/lit8 v2, v2, 0x1
goto/16 :goto_11b
:cond_22f
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-static {v4}, Lcom/google/a/d;->b(Ljava/lang/String;)I
move-result v4
add-int/2addr v2, v4
add-int/lit8 v0, v0, 0x1
goto/16 :goto_128
:cond_23c
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
aget v4, v4, v0
invoke-static {v4}, Lcom/google/a/d;->g(I)I
move-result v4
add-int/2addr v2, v4
add-int/lit8 v0, v0, 0x1
goto/16 :goto_136
:cond_249
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-static {v4}, Lcom/google/a/d;->b(Ljava/lang/String;)I
move-result v4
add-int/2addr v2, v4
add-int/lit8 v0, v0, 0x1
goto/16 :goto_144
:cond_256
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
aget-object v3, v3, v1
invoke-static {v3}, Lcom/google/a/d;->b(Ljava/lang/String;)I
move-result v3
add-int/2addr v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_1f9
:cond_262
move v0, v1
goto/16 :goto_14
.end method
.method public final c(I)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit16 v0, v0, 0x2000
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->q:I
return-void
.end method
.method public final c(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit16 v0, v0, 0x80
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->k:Ljava/lang/String;
return-void
.end method
.method public final c(Z)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit16 v0, v0, 0x4000
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->r:Z
return-void
.end method
.method public final d()Lcom/google/a/g;
.registers 2
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/d;
invoke-direct {v0}, Lcom/mato/android/matoid/service/mtunnel/d;-><init>()V
return-object v0
.end method
.method public final d(I)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x80
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->E:I
return-void
.end method
.method public final d(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
or-int/lit16 v0, v0, 0x100
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->l:Ljava/lang/String;
return-void
.end method
.method public final d(Z)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const v1, 0x8000
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->s:Z
return-void
.end method
.method public final e(I)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
or-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
iput p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->Q:I
return-void
.end method
.method public final e(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x2
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->u:Ljava/lang/String;
return-void
.end method
.method public final e(Z)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x400
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-boolean p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->H:Z
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_6
move v1, v2
:goto_5
:cond_5
return v1
:cond_6
instance-of v0, p1, Lcom/mato/android/matoid/service/mtunnel/d;
if-eqz v0, :cond_5
check-cast p1, Lcom/mato/android/matoid/service/mtunnel/d;
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->d:Lcom/mato/android/matoid/service/mtunnel/h;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->d:Lcom/mato/android/matoid/service/mtunnel/h;
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->e:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->f:I
iget v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->f:I
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->g:Ljava/lang/String;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->g:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->h:I
iget v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->h:I
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->i:Ljava/lang/String;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->i:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->j:I
iget v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->j:I
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->k:Ljava/lang/String;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->k:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->l:Ljava/lang/String;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->l:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->m:Z
iget-boolean v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->m:Z
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->n:Lcom/mato/android/matoid/service/mtunnel/g;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->n:Lcom/mato/android/matoid/service/mtunnel/g;
if-ne v0, v3, :cond_5
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->o:Z
iget-boolean v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->o:Z
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->p:Lcom/mato/android/matoid/service/mtunnel/e;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->p:Lcom/mato/android/matoid/service/mtunnel/e;
if-ne v0, v3, :cond_5
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->q:I
iget v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->q:I
if-ne v0, v3, :cond_5
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->r:Z
iget-boolean v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->r:Z
if-ne v0, v3, :cond_5
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->s:Z
iget-boolean v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->s:Z
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->t:Lcom/mato/android/matoid/service/mtunnel/b;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->t:Lcom/mato/android/matoid/service/mtunnel/b;
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->u:Ljava/lang/String;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->u:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
array-length v0, v0
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
array-length v3, v3
if-ne v0, v3, :cond_5
move v0, v1
:goto_99
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
array-length v3, v3
if-lt v0, v3, :cond_137
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
array-length v0, v0
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
array-length v3, v3
if-ne v0, v3, :cond_5
move v0, v1
:goto_a7
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
array-length v3, v3
if-lt v0, v3, :cond_149
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
array-length v0, v0
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
array-length v3, v3
if-ne v0, v3, :cond_5
move v0, v1
:goto_b5
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
array-length v3, v3
if-lt v0, v3, :cond_15b
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
array-length v0, v0
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
array-length v3, v3
if-ne v0, v3, :cond_5
move v0, v1
:goto_c3
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
array-length v3, v3
if-lt v0, v3, :cond_169
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->D:Ljava/lang/String;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->D:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->E:I
iget v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->E:I
if-ne v0, v3, :cond_5
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->F:Z
iget-boolean v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->F:Z
if-ne v0, v3, :cond_5
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->G:Z
iget-boolean v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->G:Z
if-ne v0, v3, :cond_5
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->H:Z
iget-boolean v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->H:Z
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->I:Ljava/lang/String;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->I:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->J:Z
iget-boolean v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->J:Z
if-ne v0, v3, :cond_5
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->K:Z
iget-boolean v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->K:Z
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->L:Ljava/lang/String;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->L:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->M:Lcom/mato/android/matoid/service/mtunnel/c;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->M:Lcom/mato/android/matoid/service/mtunnel/c;
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->N:Ljava/lang/String;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->N:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
array-length v0, v0
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
array-length v3, v3
if-ne v0, v3, :cond_5
move v0, v1
:goto_123
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
array-length v3, v3
if-lt v0, v3, :cond_17b
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->Q:I
iget v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->Q:I
if-ne v0, v3, :cond_5
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->R:Z
iget-boolean v3, p1, Lcom/mato/android/matoid/service/mtunnel/d;->R:Z
if-ne v0, v3, :cond_5
move v1, v2
goto/16 :goto_5
:cond_137
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
aget-object v3, v3, v0
iget-object v4, p1, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5
add-int/lit8 v0, v0, 0x1
goto/16 :goto_99
:cond_149
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
aget-object v3, v3, v0
iget-object v4, p1, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5
add-int/lit8 v0, v0, 0x1
goto/16 :goto_a7
:cond_15b
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
aget v3, v3, v0
iget-object v4, p1, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
aget v4, v4, v0
if-ne v3, v4, :cond_5
add-int/lit8 v0, v0, 0x1
goto/16 :goto_b5
:cond_169
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
aget-object v3, v3, v0
iget-object v4, p1, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5
add-int/lit8 v0, v0, 0x1
goto/16 :goto_c3
:cond_17b
iget-object v3, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
aget-object v3, v3, v0
iget-object v4, p1, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5
add-int/lit8 v0, v0, 0x1
goto :goto_123
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->g:Ljava/lang/String;
return-object v0
.end method
.method public final f(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
array-length v1, v1
if-lt v0, v1, :cond_18
new-array v0, v0, [Ljava/lang/String;
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
:cond_18
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->w:I
aput-object p1, v0, v1
return-void
.end method
.method public final f(Z)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
or-int/lit8 v0, v0, 0x8
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->b:I
iput-boolean p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->R:Z
return-void
.end method
.method public final g(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
array-length v1, v1
if-lt v0, v1, :cond_18
new-array v0, v0, [Ljava/lang/String;
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
iget v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
:cond_18
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/mato/android/matoid/service/mtunnel/d;->C:I
aput-object p1, v0, v1
return-void
.end method
.method public final g()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->s:Z
return v0
.end method
.method public final h()Lcom/mato/android/matoid/service/mtunnel/b;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->t:Lcom/mato/android/matoid/service/mtunnel/b;
return-object v0
.end method
.method public final h(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x40
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->D:Ljava/lang/String;
return-void
.end method
.method public final hashCode()I
.registers 6
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x29
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->o()Z
move-result v1
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->d:Lcom/mato/android/matoid/service/mtunnel/h;
invoke-virtual {v1}, Lcom/mato/android/matoid/service/mtunnel/h;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x25
add-int/2addr v0, v1
:cond_1f
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->r()Z
move-result v1
if-eqz v1, :cond_2e
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->e:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x1f
add-int/2addr v0, v1
:cond_2e
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->u()Z
move-result v1
if-eqz v1, :cond_39
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->f:I
mul-int/lit8 v1, v1, 0x21
add-int/2addr v0, v1
:cond_39
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->w()Z
move-result v1
if-eqz v1, :cond_48
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->g:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x1f
add-int/2addr v0, v1
:cond_48
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->z()Z
move-result v1
if-eqz v1, :cond_53
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->h:I
mul-int/lit8 v1, v1, 0x21
add-int/2addr v0, v1
:cond_53
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->C()Z
move-result v1
if-eqz v1, :cond_62
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->i:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x1f
add-int/2addr v0, v1
:cond_62
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->F()Z
move-result v1
if-eqz v1, :cond_6d
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->j:I
mul-int/lit8 v1, v1, 0x21
add-int/2addr v0, v1
:cond_6d
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->I()Z
move-result v1
if-eqz v1, :cond_7c
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->k:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x1f
add-int/2addr v0, v1
:cond_7c
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->L()Z
move-result v1
if-eqz v1, :cond_8b
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->l:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x1f
add-int/2addr v0, v1
:cond_8b
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->O()Z
move-result v1
if-eqz v1, :cond_99
iget-boolean v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->m:Z
if-eqz v1, :cond_1de
move v1, v2
:goto_96
mul-int/lit8 v1, v1, 0x21
add-int/2addr v0, v1
:cond_99
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->R()Z
move-result v1
if-eqz v1, :cond_a8
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->n:Lcom/mato/android/matoid/service/mtunnel/g;
invoke-virtual {v1}, Lcom/mato/android/matoid/service/mtunnel/g;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x25
add-int/2addr v0, v1
:cond_a8
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->U()Z
move-result v1
if-eqz v1, :cond_b6
iget-boolean v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->o:Z
if-eqz v1, :cond_1e1
move v1, v2
:goto_b3
mul-int/lit8 v1, v1, 0x21
add-int/2addr v0, v1
:cond_b6
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->X()Z
move-result v1
if-eqz v1, :cond_c5
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->p:Lcom/mato/android/matoid/service/mtunnel/e;
invoke-virtual {v1}, Lcom/mato/android/matoid/service/mtunnel/e;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x25
add-int/2addr v0, v1
:cond_c5
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aa()Z
move-result v1
if-eqz v1, :cond_d0
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->q:I
mul-int/lit8 v1, v1, 0x21
add-int/2addr v0, v1
:cond_d0
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ad()Z
move-result v1
if-eqz v1, :cond_de
iget-boolean v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->r:Z
if-eqz v1, :cond_1e4
move v1, v2
:goto_db
mul-int/lit8 v1, v1, 0x21
add-int/2addr v0, v1
:cond_de
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->af()Z
move-result v1
if-eqz v1, :cond_ec
iget-boolean v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->s:Z
if-eqz v1, :cond_1e7
move v1, v2
:goto_e9
mul-int/lit8 v1, v1, 0x21
add-int/2addr v0, v1
:cond_ec
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ah()Z
move-result v1
if-eqz v1, :cond_fb
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->t:Lcom/mato/android/matoid/service/mtunnel/b;
invoke-virtual {v1}, Lcom/mato/android/matoid/service/mtunnel/b;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x25
add-int/2addr v0, v1
:cond_fb
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ak()Z
move-result v1
if-eqz v1, :cond_10a
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->u:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x1f
add-int/2addr v0, v1
:cond_10a
move v1, v0
move v0, v3
:goto_10c
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
array-length v4, v4
if-lt v0, v4, :cond_1ea
move v0, v3
:goto_112
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
array-length v4, v4
if-lt v0, v4, :cond_1f9
move v0, v3
:goto_118
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
array-length v4, v4
if-lt v0, v4, :cond_208
move v0, v3
:goto_11e
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
array-length v4, v4
if-lt v0, v4, :cond_213
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ay()Z
move-result v0
if-eqz v0, :cond_132
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->D:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x1f
add-int/2addr v1, v0
:cond_132
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aA()Z
move-result v0
if-eqz v0, :cond_13d
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->E:I
mul-int/lit8 v0, v0, 0x21
add-int/2addr v1, v0
:cond_13d
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aD()Z
move-result v0
if-eqz v0, :cond_14b
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->F:Z
if-eqz v0, :cond_222
move v0, v2
:goto_148
mul-int/lit8 v0, v0, 0x21
add-int/2addr v1, v0
:cond_14b
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aG()Z
move-result v0
if-eqz v0, :cond_159
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->G:Z
if-eqz v0, :cond_225
move v0, v2
:goto_156
mul-int/lit8 v0, v0, 0x21
add-int/2addr v1, v0
:cond_159
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aI()Z
move-result v0
if-eqz v0, :cond_167
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->H:Z
if-eqz v0, :cond_228
move v0, v2
:goto_164
mul-int/lit8 v0, v0, 0x21
add-int/2addr v1, v0
:cond_167
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aL()Z
move-result v0
if-eqz v0, :cond_176
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->I:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x1f
add-int/2addr v1, v0
:cond_176
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aO()Z
move-result v0
if-eqz v0, :cond_184
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->J:Z
if-eqz v0, :cond_22b
move v0, v2
:goto_181
mul-int/lit8 v0, v0, 0x21
add-int/2addr v1, v0
:cond_184
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aR()Z
move-result v0
if-eqz v0, :cond_192
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->K:Z
if-eqz v0, :cond_22e
move v0, v2
:goto_18f
mul-int/lit8 v0, v0, 0x21
add-int/2addr v1, v0
:cond_192
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aU()Z
move-result v0
if-eqz v0, :cond_1a1
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->L:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x1f
add-int/2addr v1, v0
:cond_1a1
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->aX()Z
move-result v0
if-eqz v0, :cond_1b0
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->M:Lcom/mato/android/matoid/service/mtunnel/c;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/c;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x25
add-int/2addr v1, v0
:cond_1b0
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->ba()Z
move-result v0
if-eqz v0, :cond_1bf
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->N:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x1f
add-int/2addr v1, v0
:cond_1bf
move v0, v3
:goto_1c0
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
array-length v4, v4
if-lt v0, v4, :cond_231
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->bg()Z
move-result v0
if-eqz v0, :cond_1d0
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->Q:I
mul-int/lit8 v0, v0, 0x21
add-int/2addr v1, v0
:cond_1d0
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->bj()Z
move-result v0
if-eqz v0, :cond_1dd
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->R:Z
if-eqz v0, :cond_23f
:goto_1da
mul-int/lit8 v0, v2, 0x21
add-int/2addr v1, v0
:cond_1dd
return v1
:cond_1de
move v1, v3
goto/16 :goto_96
:cond_1e1
move v1, v3
goto/16 :goto_b3
:cond_1e4
move v1, v3
goto/16 :goto_db
:cond_1e7
move v1, v3
goto/16 :goto_e9
:cond_1ea
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->v:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v4
mul-int/lit8 v4, v4, 0x13
add-int/2addr v1, v4
add-int/lit8 v0, v0, 0x1
goto/16 :goto_10c
:cond_1f9
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->x:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v4
mul-int/lit8 v4, v4, 0x13
add-int/2addr v1, v4
add-int/lit8 v0, v0, 0x1
goto/16 :goto_112
:cond_208
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->z:[I
aget v4, v4, v0
mul-int/lit8 v4, v4, 0x13
add-int/2addr v1, v4
add-int/lit8 v0, v0, 0x1
goto/16 :goto_118
:cond_213
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->B:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v4
mul-int/lit8 v4, v4, 0x13
add-int/2addr v1, v4
add-int/lit8 v0, v0, 0x1
goto/16 :goto_11e
:cond_222
move v0, v3
goto/16 :goto_148
:cond_225
move v0, v3
goto/16 :goto_156
:cond_228
move v0, v3
goto/16 :goto_164
:cond_22b
move v0, v3
goto/16 :goto_181
:cond_22e
move v0, v3
goto/16 :goto_18f
:cond_231
iget-object v4, p0, Lcom/mato/android/matoid/service/mtunnel/d;->O:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v4
mul-int/lit8 v4, v4, 0x13
add-int/2addr v1, v4
add-int/lit8 v0, v0, 0x1
goto :goto_1c0
:cond_23f
move v2, v3
goto :goto_1da
.end method
.method public final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->D:Ljava/lang/String;
return-object v0
.end method
.method public final i(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x800
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->I:Ljava/lang/String;
return-void
.end method
.method public final j()I
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->E:I
return v0
.end method
.method public final j(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/d;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
const/high16 v1, 0x4000
or-int/2addr v0, v1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/d;->L:Ljava/lang/String;
return-void
.end method
.method public final k()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/d;->H:Z
return v0
.end method