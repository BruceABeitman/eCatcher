.class public Lcom/instagram/filterkit/b/e;
.super Ljava/lang/Object;
.source "IgGLShaderVariable.java"
.field private static a:I
.field private static b:I
.field private static c:I
.field private static d:I
.field private static e:I
.field private static f:I
.field private static g:I
.field private static h:I
.field private static i:I
.field private static j:I
.field private static k:I
.field private static l:I
.field private static m:I
.field private static n:I
.field private static o:I
.field private static p:I
.field private static q:I
.field private r:Ljava/lang/String;
.field private s:I
.field private t:I
.field private u:I
.field private v:I
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x3
const/4 v2, 0x2
const/4 v0, 0x4
const/4 v1, 0x1
sput v1, Lcom/instagram/filterkit/b/e;->a:I
sput v2, Lcom/instagram/filterkit/b/e;->b:I
sput v3, Lcom/instagram/filterkit/b/e;->c:I
sput v0, Lcom/instagram/filterkit/b/e;->d:I
sput v1, Lcom/instagram/filterkit/b/e;->e:I
sput v2, Lcom/instagram/filterkit/b/e;->f:I
sput v3, Lcom/instagram/filterkit/b/e;->g:I
sput v0, Lcom/instagram/filterkit/b/e;->h:I
sput v1, Lcom/instagram/filterkit/b/e;->i:I
sput v2, Lcom/instagram/filterkit/b/e;->j:I
sput v3, Lcom/instagram/filterkit/b/e;->k:I
sput v0, Lcom/instagram/filterkit/b/e;->l:I
sput v0, Lcom/instagram/filterkit/b/e;->m:I
const/16 v0, 0x9
sput v0, Lcom/instagram/filterkit/b/e;->n:I
const/16 v0, 0x10
sput v0, Lcom/instagram/filterkit/b/e;->o:I
sput v1, Lcom/instagram/filterkit/b/e;->p:I
sput v1, Lcom/instagram/filterkit/b/e;->q:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;III)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/filterkit/b/e;->r:Ljava/lang/String;
iput p2, p0, Lcom/instagram/filterkit/b/e;->s:I
iput p3, p0, Lcom/instagram/filterkit/b/e;->t:I
iput p4, p0, Lcom/instagram/filterkit/b/e;->u:I
iget v0, p0, Lcom/instagram/filterkit/b/e;->u:I
invoke-static {v0}, Lcom/instagram/filterkit/b/e;->a(I)I
move-result v0
iput v0, p0, Lcom/instagram/filterkit/b/e;->v:I
return-void
.end method
.method private static a(I)I
.registers 2
const/4 v0, 0x0
sparse-switch p0, :sswitch_data_38
:goto_4
return v0
:sswitch_5
sget v0, Lcom/instagram/filterkit/b/e;->a:I
goto :goto_4
:sswitch_8
sget v0, Lcom/instagram/filterkit/b/e;->b:I
goto :goto_4
:sswitch_b
sget v0, Lcom/instagram/filterkit/b/e;->c:I
goto :goto_4
:sswitch_e
sget v0, Lcom/instagram/filterkit/b/e;->d:I
goto :goto_4
:sswitch_11
sget v0, Lcom/instagram/filterkit/b/e;->e:I
goto :goto_4
:sswitch_14
sget v0, Lcom/instagram/filterkit/b/e;->f:I
goto :goto_4
:sswitch_17
sget v0, Lcom/instagram/filterkit/b/e;->g:I
goto :goto_4
:sswitch_1a
sget v0, Lcom/instagram/filterkit/b/e;->h:I
goto :goto_4
:sswitch_1d
sget v0, Lcom/instagram/filterkit/b/e;->i:I
goto :goto_4
:sswitch_20
sget v0, Lcom/instagram/filterkit/b/e;->j:I
goto :goto_4
:sswitch_23
sget v0, Lcom/instagram/filterkit/b/e;->k:I
goto :goto_4
:sswitch_26
sget v0, Lcom/instagram/filterkit/b/e;->l:I
goto :goto_4
:sswitch_29
sget v0, Lcom/instagram/filterkit/b/e;->m:I
goto :goto_4
:sswitch_2c
sget v0, Lcom/instagram/filterkit/b/e;->n:I
goto :goto_4
:sswitch_2f
sget v0, Lcom/instagram/filterkit/b/e;->o:I
goto :goto_4
:sswitch_32
sget v0, Lcom/instagram/filterkit/b/e;->p:I
goto :goto_4
:sswitch_35
sget v0, Lcom/instagram/filterkit/b/e;->q:I
goto :goto_4
:sswitch_data_38
.sparse-switch
0x1404 -> :sswitch_11
0x1406 -> :sswitch_5
0x8b50 -> :sswitch_8
0x8b51 -> :sswitch_b
0x8b52 -> :sswitch_e
0x8b53 -> :sswitch_14
0x8b54 -> :sswitch_17
0x8b55 -> :sswitch_1a
0x8b56 -> :sswitch_1d
0x8b57 -> :sswitch_20
0x8b58 -> :sswitch_23
0x8b59 -> :sswitch_26
0x8b5a -> :sswitch_29
0x8b5b -> :sswitch_2c
0x8b5c -> :sswitch_2f
0x8b5e -> :sswitch_32
0x8b60 -> :sswitch_35
.end sparse-switch
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/instagram/filterkit/b/e;->s:I
return v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/filterkit/b/e;->u:I
return v0
.end method