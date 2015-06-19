.class public Lorg/apache/b/a/c/e/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/b/a/c/e/b;
.field public static final a:I = -0x1
.field private static x:[I
.field private A:I
.field public b:Lorg/apache/b/a/c/e/c;
.field  c:Lorg/apache/b/a/c/e/e;
.field public d:Lorg/apache/b/a/c/e/f;
.field public e:Lorg/apache/b/a/c/e/f;
.field private s:I
.field private t:I
.field private u:I
.field private v:I
.field private final w:[I
.field private y:Ljava/util/Vector;
.field private z:[I
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lorg/apache/b/a/c/e/a;->j()V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lorg/apache/b/a/c/e/a;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
const/4 v0, 0x0
const/4 v5, 0x1
const/4 v4, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v4, p0, Lorg/apache/b/a/c/e/a;->s:I
iput v4, p0, Lorg/apache/b/a/c/e/a;->t:I
new-array v1, v5, [I
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->w:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->y:Ljava/util/Vector;
iput v4, p0, Lorg/apache/b/a/c/e/a;->A:I
:try_start_17
new-instance v1, Lorg/apache/b/a/c/e/e;
const/4 v2, 0x1
const/4 v3, 0x1
invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/b/a/c/e/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->c:Lorg/apache/b/a/c/e/e;
:try_end_20
.catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_20} :catch_3d
new-instance v1, Lorg/apache/b/a/c/e/c;
iget-object v2, p0, Lorg/apache/b/a/c/e/a;->c:Lorg/apache/b/a/c/e/e;
invoke-direct {v1, v2}, Lorg/apache/b/a/c/e/c;-><init>(Lorg/apache/b/a/c/e/e;)V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->b:Lorg/apache/b/a/c/e/c;
new-instance v1, Lorg/apache/b/a/c/e/f;
invoke-direct {v1}, Lorg/apache/b/a/c/e/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iput v4, p0, Lorg/apache/b/a/c/e/a;->u:I
iput v0, p0, Lorg/apache/b/a/c/e/a;->v:I
:goto_34
if-ge v0, v5, :cond_44
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->w:[I
aput v4, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_34
:catch_3d
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_44
return-void
.end method
.method public constructor <init>(Ljava/io/Reader;)V
.registers 7
const/4 v0, 0x0
const/4 v4, 0x1
const/4 v3, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v3, p0, Lorg/apache/b/a/c/e/a;->s:I
iput v3, p0, Lorg/apache/b/a/c/e/a;->t:I
new-array v1, v4, [I
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->w:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->y:Ljava/util/Vector;
iput v3, p0, Lorg/apache/b/a/c/e/a;->A:I
new-instance v1, Lorg/apache/b/a/c/e/e;
invoke-direct {v1, p1, v4, v4}, Lorg/apache/b/a/c/e/e;-><init>(Ljava/io/Reader;II)V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->c:Lorg/apache/b/a/c/e/e;
new-instance v1, Lorg/apache/b/a/c/e/c;
iget-object v2, p0, Lorg/apache/b/a/c/e/a;->c:Lorg/apache/b/a/c/e/e;
invoke-direct {v1, v2}, Lorg/apache/b/a/c/e/c;-><init>(Lorg/apache/b/a/c/e/e;)V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->b:Lorg/apache/b/a/c/e/c;
new-instance v1, Lorg/apache/b/a/c/e/f;
invoke-direct {v1}, Lorg/apache/b/a/c/e/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iput v3, p0, Lorg/apache/b/a/c/e/a;->u:I
iput v0, p0, Lorg/apache/b/a/c/e/a;->v:I
:goto_32
if-ge v0, v4, :cond_3b
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->w:[I
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_32
:cond_3b
return-void
.end method
.method public constructor <init>(Lorg/apache/b/a/c/e/c;)V
.registers 6
const/4 v3, 0x1
const/4 v0, 0x0
const/4 v2, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v2, p0, Lorg/apache/b/a/c/e/a;->s:I
iput v2, p0, Lorg/apache/b/a/c/e/a;->t:I
new-array v1, v3, [I
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->w:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->y:Ljava/util/Vector;
iput v2, p0, Lorg/apache/b/a/c/e/a;->A:I
iput-object p1, p0, Lorg/apache/b/a/c/e/a;->b:Lorg/apache/b/a/c/e/c;
new-instance v1, Lorg/apache/b/a/c/e/f;
invoke-direct {v1}, Lorg/apache/b/a/c/e/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iput v2, p0, Lorg/apache/b/a/c/e/a;->u:I
iput v0, p0, Lorg/apache/b/a/c/e/a;->v:I
:goto_24
if-ge v0, v3, :cond_2d
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->w:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_2d
return-void
.end method
.method private final b(I)Lorg/apache/b/a/c/e/f;
.registers 5
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iget-object v1, v0, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;
if-eqz v1, :cond_1e
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iget-object v1, v1, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
:goto_c
const/4 v1, -0x1
iput v1, p0, Lorg/apache/b/a/c/e/a;->u:I
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iget v1, v1, Lorg/apache/b/a/c/e/f;->a:I
if-ne v1, p1, :cond_2b
iget v0, p0, Lorg/apache/b/a/c/e/a;->v:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/e/a;->v:I
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
return-object v0
:cond_1e
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iget-object v2, p0, Lorg/apache/b/a/c/e/a;->b:Lorg/apache/b/a/c/e/c;
invoke-virtual {v2}, Lorg/apache/b/a/c/e/c;->b()Lorg/apache/b/a/c/e/f;
move-result-object v2
iput-object v2, v1, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;
iput-object v2, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
goto :goto_c
:cond_2b
iput-object v0, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iput p1, p0, Lorg/apache/b/a/c/e/a;->A:I
invoke-virtual {p0}, Lorg/apache/b/a/c/e/a;->g()Lorg/apache/b/a/c/e/d;
move-result-object v0
throw v0
.end method
.method private static j()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const/4 v2, 0x2
aput v2, v0, v1
sput-object v0, Lorg/apache/b/a/c/e/a;->x:[I
return-void
.end method
.method private final k()I
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iget-object v0, v0, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;
iput-object v0, p0, Lorg/apache/b/a/c/e/a;->e:Lorg/apache/b/a/c/e/f;
if-nez v0, :cond_17
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->b:Lorg/apache/b/a/c/e/c;
invoke-virtual {v1}, Lorg/apache/b/a/c/e/c;->b()Lorg/apache/b/a/c/e/f;
move-result-object v1
iput-object v1, v0, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;
iget v0, v1, Lorg/apache/b/a/c/e/f;->a:I
iput v0, p0, Lorg/apache/b/a/c/e/a;->u:I
:goto_16
return v0
:cond_17
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->e:Lorg/apache/b/a/c/e/f;
iget v0, v0, Lorg/apache/b/a/c/e/f;->a:I
iput v0, p0, Lorg/apache/b/a/c/e/a;->u:I
goto :goto_16
.end method
.method public a()I
.registers 2
iget v0, p0, Lorg/apache/b/a/c/e/a;->t:I
return v0
.end method
.method public final a(I)Lorg/apache/b/a/c/e/f;
.registers 5
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
const/4 v0, 0x0
move-object v2, v1
move v1, v0
:goto_5
if-ge v1, p1, :cond_1a
iget-object v0, v2, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;
if-eqz v0, :cond_11
iget-object v0, v2, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;
:goto_d
add-int/lit8 v1, v1, 0x1
move-object v2, v0
goto :goto_5
:cond_11
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->b:Lorg/apache/b/a/c/e/c;
invoke-virtual {v0}, Lorg/apache/b/a/c/e/c;->b()Lorg/apache/b/a/c/e/f;
move-result-object v0
iput-object v0, v2, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;
goto :goto_d
:cond_1a
return-object v2
.end method
.method public a(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lorg/apache/b/a/c/e/a;->a(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
const/4 v0, 0x0
const/4 v5, -0x1
const/4 v4, 0x1
:try_start_3
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->c:Lorg/apache/b/a/c/e/e;
const/4 v2, 0x1
const/4 v3, 0x1
invoke-virtual {v1, p1, p2, v2, v3}, Lorg/apache/b/a/c/e/e;->a(Ljava/io/InputStream;Ljava/lang/String;II)V
:try_end_a
.catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_a} :catch_25
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->b:Lorg/apache/b/a/c/e/c;
iget-object v2, p0, Lorg/apache/b/a/c/e/a;->c:Lorg/apache/b/a/c/e/e;
invoke-virtual {v1, v2}, Lorg/apache/b/a/c/e/c;->a(Lorg/apache/b/a/c/e/e;)V
new-instance v1, Lorg/apache/b/a/c/e/f;
invoke-direct {v1}, Lorg/apache/b/a/c/e/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iput v5, p0, Lorg/apache/b/a/c/e/a;->u:I
iput v0, p0, Lorg/apache/b/a/c/e/a;->v:I
:goto_1c
if-ge v0, v4, :cond_2c
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->w:[I
aput v5, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:catch_25
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_2c
return-void
.end method
.method public a(Ljava/io/Reader;)V
.registers 7
const/4 v0, 0x0
const/4 v4, -0x1
const/4 v3, 0x1
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->c:Lorg/apache/b/a/c/e/e;
invoke-virtual {v1, p1, v3, v3}, Lorg/apache/b/a/c/e/e;->a(Ljava/io/Reader;II)V
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->b:Lorg/apache/b/a/c/e/c;
iget-object v2, p0, Lorg/apache/b/a/c/e/a;->c:Lorg/apache/b/a/c/e/e;
invoke-virtual {v1, v2}, Lorg/apache/b/a/c/e/c;->a(Lorg/apache/b/a/c/e/e;)V
new-instance v1, Lorg/apache/b/a/c/e/f;
invoke-direct {v1}, Lorg/apache/b/a/c/e/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iput v4, p0, Lorg/apache/b/a/c/e/a;->u:I
iput v0, p0, Lorg/apache/b/a/c/e/a;->v:I
:goto_1a
if-ge v0, v3, :cond_23
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->w:[I
aput v4, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1a
:cond_23
return-void
.end method
.method public a(Lorg/apache/b/a/c/e/c;)V
.registers 5
const/4 v0, 0x0
const/4 v2, -0x1
iput-object p1, p0, Lorg/apache/b/a/c/e/a;->b:Lorg/apache/b/a/c/e/c;
new-instance v1, Lorg/apache/b/a/c/e/f;
invoke-direct {v1}, Lorg/apache/b/a/c/e/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iput v2, p0, Lorg/apache/b/a/c/e/a;->u:I
iput v0, p0, Lorg/apache/b/a/c/e/a;->v:I
:goto_f
const/4 v1, 0x1
if-ge v0, v1, :cond_19
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->w:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_19
return-void
.end method
.method public b()I
.registers 2
iget v0, p0, Lorg/apache/b/a/c/e/a;->s:I
return v0
.end method
.method public final c()V
.registers 4
invoke-virtual {p0}, Lorg/apache/b/a/c/e/a;->e()V
iget v0, p0, Lorg/apache/b/a/c/e/a;->u:I
const/4 v1, -0x1
if-ne v0, v1, :cond_1b
invoke-direct {p0}, Lorg/apache/b/a/c/e/a;->k()I
move-result v0
:goto_c
packed-switch v0, :pswitch_data_24
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->w:[I
const/4 v1, 0x0
iget v2, p0, Lorg/apache/b/a/c/e/a;->v:I
aput v2, v0, v1
:goto_16
const/4 v0, 0x2
invoke-direct {p0, v0}, Lorg/apache/b/a/c/e/a;->b(I)Lorg/apache/b/a/c/e/f;
return-void
:cond_1b
iget v0, p0, Lorg/apache/b/a/c/e/a;->u:I
goto :goto_c
:pswitch_1e
const/4 v0, 0x1
invoke-direct {p0, v0}, Lorg/apache/b/a/c/e/a;->b(I)Lorg/apache/b/a/c/e/f;
goto :goto_16
nop
:pswitch_data_24
.packed-switch 0x1
:pswitch_1e
.end packed-switch
.end method
.method public final d()V
.registers 2
invoke-virtual {p0}, Lorg/apache/b/a/c/e/a;->e()V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lorg/apache/b/a/c/e/a;->b(I)Lorg/apache/b/a/c/e/f;
return-void
.end method
.method public final e()V
.registers 4
const/16 v2, 0x11
invoke-direct {p0, v2}, Lorg/apache/b/a/c/e/a;->b(I)Lorg/apache/b/a/c/e/f;
move-result-object v0
const/16 v1, 0x12
invoke-direct {p0, v1}, Lorg/apache/b/a/c/e/a;->b(I)Lorg/apache/b/a/c/e/f;
invoke-direct {p0, v2}, Lorg/apache/b/a/c/e/a;->b(I)Lorg/apache/b/a/c/e/f;
move-result-object v1
:try_start_f
iget-object v0, v0, Lorg/apache/b/a/c/e/f;->f:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lorg/apache/b/a/c/e/a;->s:I
iget-object v0, v1, Lorg/apache/b/a/c/e/f;->f:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lorg/apache/b/a/c/e/a;->t:I
:try_end_1f
.catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1f} :catch_20
return-void
:catch_20
move-exception v0
new-instance v1, Lorg/apache/b/a/c/e/d;
invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lorg/apache/b/a/c/e/d;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public final f()Lorg/apache/b/a/c/e/f;
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iget-object v0, v0, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;
if-eqz v0, :cond_18
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iget-object v0, v0, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;
iput-object v0, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
:goto_c
const/4 v0, -0x1
iput v0, p0, Lorg/apache/b/a/c/e/a;->u:I
iget v0, p0, Lorg/apache/b/a/c/e/a;->v:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/e/a;->v:I
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
return-object v0
:cond_18
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->b:Lorg/apache/b/a/c/e/c;
invoke-virtual {v1}, Lorg/apache/b/a/c/e/c;->b()Lorg/apache/b/a/c/e/f;
move-result-object v1
iput-object v1, v0, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;
iput-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
goto :goto_c
.end method
.method public g()Lorg/apache/b/a/c/e/d;
.registers 9
const/16 v7, 0x15
const/4 v6, 0x1
const/4 v0, 0x0
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->y:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V
new-array v3, v7, [Z
move v1, v0
:goto_c
if-ge v1, v7, :cond_13
aput-boolean v0, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_13
iget v1, p0, Lorg/apache/b/a/c/e/a;->A:I
if-ltz v1, :cond_1e
iget v1, p0, Lorg/apache/b/a/c/e/a;->A:I
aput-boolean v6, v3, v1
const/4 v1, -0x1
iput v1, p0, Lorg/apache/b/a/c/e/a;->A:I
:cond_1e
move v2, v0
:goto_1f
if-ge v2, v6, :cond_40
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->w:[I
aget v1, v1, v2
iget v4, p0, Lorg/apache/b/a/c/e/a;->v:I
if-ne v1, v4, :cond_3c
move v1, v0
:goto_2a
const/16 v4, 0x20
if-ge v1, v4, :cond_3c
sget-object v4, Lorg/apache/b/a/c/e/a;->x:[I
aget v4, v4, v2
shl-int v5, v6, v1
and-int/2addr v4, v5
if-eqz v4, :cond_39
aput-boolean v6, v3, v1
:cond_39
add-int/lit8 v1, v1, 0x1
goto :goto_2a
:cond_3c
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_1f
:cond_40
move v1, v0
:goto_41
if-ge v1, v7, :cond_59
aget-boolean v2, v3, v1
if-eqz v2, :cond_56
new-array v2, v6, [I
iput-object v2, p0, Lorg/apache/b/a/c/e/a;->z:[I
iget-object v2, p0, Lorg/apache/b/a/c/e/a;->z:[I
aput v1, v2, v0
iget-object v2, p0, Lorg/apache/b/a/c/e/a;->y:Ljava/util/Vector;
iget-object v4, p0, Lorg/apache/b/a/c/e/a;->z:[I
invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_56
add-int/lit8 v1, v1, 0x1
goto :goto_41
:cond_59
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->y:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v1
new-array v2, v1, [[I
move v1, v0
:goto_62
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->y:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-ge v1, v0, :cond_7a
iget-object v0, p0, Lorg/apache/b/a/c/e/a;->y:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
check-cast v0, [I
aput-object v0, v2, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_62
:cond_7a
new-instance v0, Lorg/apache/b/a/c/e/d;
iget-object v1, p0, Lorg/apache/b/a/c/e/a;->d:Lorg/apache/b/a/c/e/f;
sget-object v3, Lorg/apache/b/a/c/e/a;->r:[Ljava/lang/String;
invoke-direct {v0, v1, v2, v3}, Lorg/apache/b/a/c/e/d;-><init>(Lorg/apache/b/a/c/e/f;[[I[Ljava/lang/String;)V
return-object v0
.end method
.method public final h()V
.registers 1
return-void
.end method
.method public final i()V
.registers 1
return-void
.end method