.class public Lorg/apache/b/a/c/f/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/b/a/c/f/d;
.field private static v:[I
.field public a:Lorg/apache/b/a/c/f/e;
.field  b:Lorg/apache/b/a/c/f/b;
.field public c:Lorg/apache/b/a/c/f/f;
.field public d:Lorg/apache/b/a/c/f/f;
.field private r:Z
.field private s:I
.field private t:I
.field private final u:[I
.field private w:Ljava/util/Vector;
.field private x:[I
.field private y:I
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lorg/apache/b/a/c/f/c;->h()V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lorg/apache/b/a/c/f/c;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
const/4 v5, 0x2
const/4 v0, 0x0
const/4 v4, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lorg/apache/b/a/c/f/c;->r:Z
new-array v1, v5, [I
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->u:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->w:Ljava/util/Vector;
iput v4, p0, Lorg/apache/b/a/c/f/c;->y:I
:try_start_15
new-instance v1, Lorg/apache/b/a/c/f/b;
const/4 v2, 0x1
const/4 v3, 0x1
invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/b/a/c/f/b;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->b:Lorg/apache/b/a/c/f/b;
:try_end_1e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1e} :catch_3b
new-instance v1, Lorg/apache/b/a/c/f/e;
iget-object v2, p0, Lorg/apache/b/a/c/f/c;->b:Lorg/apache/b/a/c/f/b;
invoke-direct {v1, v2}, Lorg/apache/b/a/c/f/e;-><init>(Lorg/apache/b/a/c/f/b;)V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->a:Lorg/apache/b/a/c/f/e;
new-instance v1, Lorg/apache/b/a/c/f/f;
invoke-direct {v1}, Lorg/apache/b/a/c/f/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iput v4, p0, Lorg/apache/b/a/c/f/c;->s:I
iput v0, p0, Lorg/apache/b/a/c/f/c;->t:I
:goto_32
if-ge v0, v5, :cond_42
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->u:[I
aput v4, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_32
:catch_3b
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_42
return-void
.end method
.method public constructor <init>(Ljava/io/Reader;)V
.registers 7
const/4 v4, 0x2
const/4 v2, 0x1
const/4 v0, 0x0
const/4 v3, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lorg/apache/b/a/c/f/c;->r:Z
new-array v1, v4, [I
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->u:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->w:Ljava/util/Vector;
iput v3, p0, Lorg/apache/b/a/c/f/c;->y:I
new-instance v1, Lorg/apache/b/a/c/f/b;
invoke-direct {v1, p1, v2, v2}, Lorg/apache/b/a/c/f/b;-><init>(Ljava/io/Reader;II)V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->b:Lorg/apache/b/a/c/f/b;
new-instance v1, Lorg/apache/b/a/c/f/e;
iget-object v2, p0, Lorg/apache/b/a/c/f/c;->b:Lorg/apache/b/a/c/f/b;
invoke-direct {v1, v2}, Lorg/apache/b/a/c/f/e;-><init>(Lorg/apache/b/a/c/f/b;)V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->a:Lorg/apache/b/a/c/f/e;
new-instance v1, Lorg/apache/b/a/c/f/f;
invoke-direct {v1}, Lorg/apache/b/a/c/f/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iput v3, p0, Lorg/apache/b/a/c/f/c;->s:I
iput v0, p0, Lorg/apache/b/a/c/f/c;->t:I
:goto_31
if-ge v0, v4, :cond_3a
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->u:[I
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_31
:cond_3a
return-void
.end method
.method public constructor <init>(Lorg/apache/b/a/c/f/e;)V
.registers 6
const/4 v3, 0x2
const/4 v0, 0x0
const/4 v2, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lorg/apache/b/a/c/f/c;->r:Z
new-array v1, v3, [I
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->u:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->w:Ljava/util/Vector;
iput v2, p0, Lorg/apache/b/a/c/f/c;->y:I
iput-object p1, p0, Lorg/apache/b/a/c/f/c;->a:Lorg/apache/b/a/c/f/e;
new-instance v1, Lorg/apache/b/a/c/f/f;
invoke-direct {v1}, Lorg/apache/b/a/c/f/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iput v2, p0, Lorg/apache/b/a/c/f/c;->s:I
iput v0, p0, Lorg/apache/b/a/c/f/c;->t:I
:goto_22
if-ge v0, v3, :cond_2b
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->u:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_22
:cond_2b
return-void
.end method
.method private final b(I)Lorg/apache/b/a/c/f/f;
.registers 5
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iget-object v1, v0, Lorg/apache/b/a/c/f/f;->g:Lorg/apache/b/a/c/f/f;
if-eqz v1, :cond_1e
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iget-object v1, v1, Lorg/apache/b/a/c/f/f;->g:Lorg/apache/b/a/c/f/f;
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
:goto_c
const/4 v1, -0x1
iput v1, p0, Lorg/apache/b/a/c/f/c;->s:I
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iget v1, v1, Lorg/apache/b/a/c/f/f;->a:I
if-ne v1, p1, :cond_2b
iget v0, p0, Lorg/apache/b/a/c/f/c;->t:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/f/c;->t:I
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
return-object v0
:cond_1e
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iget-object v2, p0, Lorg/apache/b/a/c/f/c;->a:Lorg/apache/b/a/c/f/e;
invoke-virtual {v2}, Lorg/apache/b/a/c/f/e;->b()Lorg/apache/b/a/c/f/f;
move-result-object v2
iput-object v2, v1, Lorg/apache/b/a/c/f/f;->g:Lorg/apache/b/a/c/f/f;
iput-object v2, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
goto :goto_c
:cond_2b
iput-object v0, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iput p1, p0, Lorg/apache/b/a/c/f/c;->y:I
invoke-virtual {p0}, Lorg/apache/b/a/c/f/c;->d()Lorg/apache/b/a/c/f/a;
move-result-object v0
throw v0
.end method
.method private final g()Ljava/lang/String;
.registers 8
const/4 v1, 0x1
const/4 v6, -0x1
const/4 v3, 0x0
new-instance v5, Ljava/lang/StringBuffer;
const/16 v0, 0x32
invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V
move v0, v1
move v2, v3
:goto_c
:cond_c
iget v4, p0, Lorg/apache/b/a/c/f/c;->s:I
if-ne v4, v6, :cond_22
invoke-direct {p0}, Lorg/apache/b/a/c/f/c;->i()I
move-result v4
:goto_14
packed-switch v4, :pswitch_data_96
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->u:[I
iget v1, p0, Lorg/apache/b/a/c/f/c;->t:I
aput v1, v0, v3
invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_22
iget v4, p0, Lorg/apache/b/a/c/f/c;->s:I
goto :goto_14
:pswitch_25
iget v4, p0, Lorg/apache/b/a/c/f/c;->s:I
if-ne v4, v6, :cond_3f
invoke-direct {p0}, Lorg/apache/b/a/c/f/c;->i()I
move-result v4
:goto_2d
packed-switch v4, :pswitch_data_a4
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->u:[I
iget v2, p0, Lorg/apache/b/a/c/f/c;->t:I
aput v2, v0, v1
invoke-direct {p0, v6}, Lorg/apache/b/a/c/f/c;->b(I)Lorg/apache/b/a/c/f/f;
new-instance v0, Lorg/apache/b/a/c/f/a;
invoke-direct {v0}, Lorg/apache/b/a/c/f/a;-><init>()V
throw v0
:cond_3f
iget v4, p0, Lorg/apache/b/a/c/f/c;->s:I
goto :goto_2d
:pswitch_42
const/16 v4, 0xf
invoke-direct {p0, v4}, Lorg/apache/b/a/c/f/c;->b(I)Lorg/apache/b/a/c/f/f;
move-result-object v4
if-eqz v0, :cond_51
move v0, v3
:goto_4b
:cond_4b
iget-object v4, v4, Lorg/apache/b/a/c/f/f;->f:Ljava/lang/String;
invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_c
:cond_51
if-eqz v2, :cond_4b
const-string v2, " "
invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v2, v3
goto :goto_4b
:pswitch_5a
const/16 v4, 0xb
invoke-direct {p0, v4}, Lorg/apache/b/a/c/f/c;->b(I)Lorg/apache/b/a/c/f/f;
move-result-object v4
iget-object v4, v4, Lorg/apache/b/a/c/f/f;->f:Ljava/lang/String;
invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_c
:pswitch_66
const/16 v4, 0xd
invoke-direct {p0, v4}, Lorg/apache/b/a/c/f/c;->b(I)Lorg/apache/b/a/c/f/f;
move-result-object v4
if-eqz v0, :cond_75
move v0, v3
:goto_6f
:cond_6f
iget-object v4, v4, Lorg/apache/b/a/c/f/f;->f:Ljava/lang/String;
invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_c
:cond_75
if-eqz v2, :cond_6f
const-string v2, " "
invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v2, v3
goto :goto_6f
:pswitch_7e
const/16 v4, 0xc
invoke-direct {p0, v4}, Lorg/apache/b/a/c/f/c;->b(I)Lorg/apache/b/a/c/f/f;
iget-boolean v4, p0, Lorg/apache/b/a/c/f/c;->r:Z
if-eqz v4, :cond_c
const-string v4, "\r\n"
invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_c
:pswitch_8d
const/16 v2, 0xe
invoke-direct {p0, v2}, Lorg/apache/b/a/c/f/c;->b(I)Lorg/apache/b/a/c/f/f;
move v2, v1
goto/16 :goto_c
nop
:pswitch_data_a4
.packed-switch 0xb
:pswitch_5a
:pswitch_7e
:pswitch_66
:pswitch_8d
:pswitch_42
.end packed-switch
:pswitch_data_96
.packed-switch 0xb
:pswitch_25
:pswitch_25
:pswitch_25
:pswitch_25
:pswitch_25
.end packed-switch
.end method
.method private static h()V
.registers 1
const/4 v0, 0x2
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lorg/apache/b/a/c/f/c;->v:[I
return-void
nop
:array_a
.array-data 0x4
0x0t 0xf8t 0x0t 0x0t
0x0t 0xf8t 0x0t 0x0t
.end array-data
.end method
.method private final i()I
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iget-object v0, v0, Lorg/apache/b/a/c/f/f;->g:Lorg/apache/b/a/c/f/f;
iput-object v0, p0, Lorg/apache/b/a/c/f/c;->d:Lorg/apache/b/a/c/f/f;
if-nez v0, :cond_17
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->a:Lorg/apache/b/a/c/f/e;
invoke-virtual {v1}, Lorg/apache/b/a/c/f/e;->b()Lorg/apache/b/a/c/f/f;
move-result-object v1
iput-object v1, v0, Lorg/apache/b/a/c/f/f;->g:Lorg/apache/b/a/c/f/f;
iget v0, v1, Lorg/apache/b/a/c/f/f;->a:I
iput v0, p0, Lorg/apache/b/a/c/f/c;->s:I
:goto_16
return v0
:cond_17
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->d:Lorg/apache/b/a/c/f/f;
iget v0, v0, Lorg/apache/b/a/c/f/f;->a:I
iput v0, p0, Lorg/apache/b/a/c/f/c;->s:I
goto :goto_16
.end method
.method public final a(I)Lorg/apache/b/a/c/f/f;
.registers 5
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
const/4 v0, 0x0
move-object v2, v1
move v1, v0
:goto_5
if-ge v1, p1, :cond_1a
iget-object v0, v2, Lorg/apache/b/a/c/f/f;->g:Lorg/apache/b/a/c/f/f;
if-eqz v0, :cond_11
iget-object v0, v2, Lorg/apache/b/a/c/f/f;->g:Lorg/apache/b/a/c/f/f;
:goto_d
add-int/lit8 v1, v1, 0x1
move-object v2, v0
goto :goto_5
:cond_11
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->a:Lorg/apache/b/a/c/f/e;
invoke-virtual {v0}, Lorg/apache/b/a/c/f/e;->b()Lorg/apache/b/a/c/f/f;
move-result-object v0
iput-object v0, v2, Lorg/apache/b/a/c/f/f;->g:Lorg/apache/b/a/c/f/f;
goto :goto_d
:cond_1a
return-object v2
.end method
.method public a(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lorg/apache/b/a/c/f/c;->a(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 8
const/4 v0, 0x0
const/4 v4, -0x1
:try_start_2
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->b:Lorg/apache/b/a/c/f/b;
const/4 v2, 0x1
const/4 v3, 0x1
invoke-virtual {v1, p1, p2, v2, v3}, Lorg/apache/b/a/c/f/b;->a(Ljava/io/InputStream;Ljava/lang/String;II)V
:try_end_9
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_25
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->a:Lorg/apache/b/a/c/f/e;
iget-object v2, p0, Lorg/apache/b/a/c/f/c;->b:Lorg/apache/b/a/c/f/b;
invoke-virtual {v1, v2}, Lorg/apache/b/a/c/f/e;->a(Lorg/apache/b/a/c/f/b;)V
new-instance v1, Lorg/apache/b/a/c/f/f;
invoke-direct {v1}, Lorg/apache/b/a/c/f/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iput v4, p0, Lorg/apache/b/a/c/f/c;->s:I
iput v0, p0, Lorg/apache/b/a/c/f/c;->t:I
:goto_1b
const/4 v1, 0x2
if-ge v0, v1, :cond_2c
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->u:[I
aput v4, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:catch_25
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_2c
return-void
.end method
.method public a(Ljava/io/Reader;)V
.registers 6
const/4 v2, 0x1
const/4 v0, 0x0
const/4 v3, -0x1
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->b:Lorg/apache/b/a/c/f/b;
invoke-virtual {v1, p1, v2, v2}, Lorg/apache/b/a/c/f/b;->a(Ljava/io/Reader;II)V
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->a:Lorg/apache/b/a/c/f/e;
iget-object v2, p0, Lorg/apache/b/a/c/f/c;->b:Lorg/apache/b/a/c/f/b;
invoke-virtual {v1, v2}, Lorg/apache/b/a/c/f/e;->a(Lorg/apache/b/a/c/f/b;)V
new-instance v1, Lorg/apache/b/a/c/f/f;
invoke-direct {v1}, Lorg/apache/b/a/c/f/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iput v3, p0, Lorg/apache/b/a/c/f/c;->s:I
iput v0, p0, Lorg/apache/b/a/c/f/c;->t:I
:goto_1a
const/4 v1, 0x2
if-ge v0, v1, :cond_24
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->u:[I
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1a
:cond_24
return-void
.end method
.method public a(Lorg/apache/b/a/c/f/e;)V
.registers 5
const/4 v0, 0x0
const/4 v2, -0x1
iput-object p1, p0, Lorg/apache/b/a/c/f/c;->a:Lorg/apache/b/a/c/f/e;
new-instance v1, Lorg/apache/b/a/c/f/f;
invoke-direct {v1}, Lorg/apache/b/a/c/f/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iput v2, p0, Lorg/apache/b/a/c/f/c;->s:I
iput v0, p0, Lorg/apache/b/a/c/f/c;->t:I
:goto_f
const/4 v1, 0x2
if-ge v0, v1, :cond_19
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->u:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_19
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/b/a/c/f/c;->r:Z
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/b/a/c/f/c;->r:Z
return v0
.end method
.method public b()Ljava/lang/String;
.registers 3
:try_start_0
invoke-direct {p0}, Lorg/apache/b/a/c/f/c;->g()Ljava/lang/String;
:try_end_3
.catch Lorg/apache/b/a/c/f/g; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Lorg/apache/b/a/c/f/a;
invoke-direct {v1, v0}, Lorg/apache/b/a/c/f/a;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final c()Lorg/apache/b/a/c/f/f;
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iget-object v0, v0, Lorg/apache/b/a/c/f/f;->g:Lorg/apache/b/a/c/f/f;
if-eqz v0, :cond_18
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iget-object v0, v0, Lorg/apache/b/a/c/f/f;->g:Lorg/apache/b/a/c/f/f;
iput-object v0, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
:goto_c
const/4 v0, -0x1
iput v0, p0, Lorg/apache/b/a/c/f/c;->s:I
iget v0, p0, Lorg/apache/b/a/c/f/c;->t:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/f/c;->t:I
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
return-object v0
:cond_18
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->a:Lorg/apache/b/a/c/f/e;
invoke-virtual {v1}, Lorg/apache/b/a/c/f/e;->b()Lorg/apache/b/a/c/f/f;
move-result-object v1
iput-object v1, v0, Lorg/apache/b/a/c/f/f;->g:Lorg/apache/b/a/c/f/f;
iput-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
goto :goto_c
.end method
.method public d()Lorg/apache/b/a/c/f/a;
.registers 9
const/16 v7, 0x12
const/4 v6, 0x1
const/4 v0, 0x0
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->w:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V
new-array v3, v7, [Z
move v1, v0
:goto_c
if-ge v1, v7, :cond_13
aput-boolean v0, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_13
iget v1, p0, Lorg/apache/b/a/c/f/c;->y:I
if-ltz v1, :cond_1e
iget v1, p0, Lorg/apache/b/a/c/f/c;->y:I
aput-boolean v6, v3, v1
const/4 v1, -0x1
iput v1, p0, Lorg/apache/b/a/c/f/c;->y:I
:cond_1e
move v2, v0
:goto_1f
const/4 v1, 0x2
if-ge v2, v1, :cond_41
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->u:[I
aget v1, v1, v2
iget v4, p0, Lorg/apache/b/a/c/f/c;->t:I
if-ne v1, v4, :cond_3d
move v1, v0
:goto_2b
const/16 v4, 0x20
if-ge v1, v4, :cond_3d
sget-object v4, Lorg/apache/b/a/c/f/c;->v:[I
aget v4, v4, v2
shl-int v5, v6, v1
and-int/2addr v4, v5
if-eqz v4, :cond_3a
aput-boolean v6, v3, v1
:cond_3a
add-int/lit8 v1, v1, 0x1
goto :goto_2b
:cond_3d
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_1f
:cond_41
move v1, v0
:goto_42
if-ge v1, v7, :cond_5a
aget-boolean v2, v3, v1
if-eqz v2, :cond_57
new-array v2, v6, [I
iput-object v2, p0, Lorg/apache/b/a/c/f/c;->x:[I
iget-object v2, p0, Lorg/apache/b/a/c/f/c;->x:[I
aput v1, v2, v0
iget-object v2, p0, Lorg/apache/b/a/c/f/c;->w:Ljava/util/Vector;
iget-object v4, p0, Lorg/apache/b/a/c/f/c;->x:[I
invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_57
add-int/lit8 v1, v1, 0x1
goto :goto_42
:cond_5a
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->w:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v1
new-array v2, v1, [[I
move v1, v0
:goto_63
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->w:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-ge v1, v0, :cond_7b
iget-object v0, p0, Lorg/apache/b/a/c/f/c;->w:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
check-cast v0, [I
aput-object v0, v2, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_63
:cond_7b
new-instance v0, Lorg/apache/b/a/c/f/a;
iget-object v1, p0, Lorg/apache/b/a/c/f/c;->c:Lorg/apache/b/a/c/f/f;
sget-object v3, Lorg/apache/b/a/c/f/c;->q:[Ljava/lang/String;
invoke-direct {v0, v1, v2, v3}, Lorg/apache/b/a/c/f/a;-><init>(Lorg/apache/b/a/c/f/f;[[I[Ljava/lang/String;)V
return-object v0
.end method
.method public final e()V
.registers 1
return-void
.end method
.method public final f()V
.registers 1
return-void
.end method