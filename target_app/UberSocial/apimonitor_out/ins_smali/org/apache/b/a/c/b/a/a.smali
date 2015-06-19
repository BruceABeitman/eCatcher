.class public Lorg/apache/b/a/c/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/b/a/c/b/a/b;
.field private static y:[I
.field private A:[I
.field private B:I
.field public a:Lorg/apache/b/a/c/b/a/c;
.field  b:Lorg/apache/b/a/c/b/a/e;
.field public c:Lorg/apache/b/a/c/b/a/f;
.field public d:Lorg/apache/b/a/c/b/a/f;
.field private r:Ljava/lang/String;
.field private s:Ljava/lang/String;
.field private t:Ljava/util/ArrayList;
.field private u:Ljava/util/ArrayList;
.field private v:I
.field private w:I
.field private final x:[I
.field private z:Ljava/util/Vector;
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lorg/apache/b/a/c/b/a/a;->n()V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lorg/apache/b/a/c/b/a/a;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
const/4 v5, 0x3
const/4 v0, 0x0
const/4 v4, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->t:Ljava/util/ArrayList;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->u:Ljava/util/ArrayList;
new-array v1, v5, [I
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->z:Ljava/util/Vector;
iput v4, p0, Lorg/apache/b/a/c/b/a/a;->B:I
:try_start_21
new-instance v1, Lorg/apache/b/a/c/b/a/e;
const/4 v2, 0x1
const/4 v3, 0x1
invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/b/a/c/b/a/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->b:Lorg/apache/b/a/c/b/a/e;
:try_end_2a
.catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_2a} :catch_47
new-instance v1, Lorg/apache/b/a/c/b/a/c;
iget-object v2, p0, Lorg/apache/b/a/c/b/a/a;->b:Lorg/apache/b/a/c/b/a/e;
invoke-direct {v1, v2}, Lorg/apache/b/a/c/b/a/c;-><init>(Lorg/apache/b/a/c/b/a/e;)V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->a:Lorg/apache/b/a/c/b/a/c;
new-instance v1, Lorg/apache/b/a/c/b/a/f;
invoke-direct {v1}, Lorg/apache/b/a/c/b/a/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iput v4, p0, Lorg/apache/b/a/c/b/a/a;->v:I
iput v0, p0, Lorg/apache/b/a/c/b/a/a;->w:I
:goto_3e
if-ge v0, v5, :cond_4e
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
aput v4, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_3e
:catch_47
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_4e
return-void
.end method
.method public constructor <init>(Ljava/io/Reader;)V
.registers 7
const/4 v4, 0x3
const/4 v2, 0x1
const/4 v0, 0x0
const/4 v3, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->t:Ljava/util/ArrayList;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->u:Ljava/util/ArrayList;
new-array v1, v4, [I
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->z:Ljava/util/Vector;
iput v3, p0, Lorg/apache/b/a/c/b/a/a;->B:I
new-instance v1, Lorg/apache/b/a/c/b/a/e;
invoke-direct {v1, p1, v2, v2}, Lorg/apache/b/a/c/b/a/e;-><init>(Ljava/io/Reader;II)V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->b:Lorg/apache/b/a/c/b/a/e;
new-instance v1, Lorg/apache/b/a/c/b/a/c;
iget-object v2, p0, Lorg/apache/b/a/c/b/a/a;->b:Lorg/apache/b/a/c/b/a/e;
invoke-direct {v1, v2}, Lorg/apache/b/a/c/b/a/c;-><init>(Lorg/apache/b/a/c/b/a/e;)V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->a:Lorg/apache/b/a/c/b/a/c;
new-instance v1, Lorg/apache/b/a/c/b/a/f;
invoke-direct {v1}, Lorg/apache/b/a/c/b/a/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iput v3, p0, Lorg/apache/b/a/c/b/a/a;->v:I
iput v0, p0, Lorg/apache/b/a/c/b/a/a;->w:I
:goto_3d
if-ge v0, v4, :cond_46
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_3d
:cond_46
return-void
.end method
.method public constructor <init>(Lorg/apache/b/a/c/b/a/c;)V
.registers 6
const/4 v3, 0x3
const/4 v0, 0x0
const/4 v2, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->t:Ljava/util/ArrayList;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->u:Ljava/util/ArrayList;
new-array v1, v3, [I
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->z:Ljava/util/Vector;
iput v2, p0, Lorg/apache/b/a/c/b/a/a;->B:I
iput-object p1, p0, Lorg/apache/b/a/c/b/a/a;->a:Lorg/apache/b/a/c/b/a/c;
new-instance v1, Lorg/apache/b/a/c/b/a/f;
invoke-direct {v1}, Lorg/apache/b/a/c/b/a/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iput v2, p0, Lorg/apache/b/a/c/b/a/a;->v:I
iput v0, p0, Lorg/apache/b/a/c/b/a/a;->w:I
:goto_2e
if-ge v0, v3, :cond_37
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_2e
:cond_37
return-void
.end method
.method public static a([Ljava/lang/String;)V
.registers 3
:goto_0
:try_start_0
new-instance v0, Lorg/apache/b/a/c/b/a/a;
sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;
invoke-direct {v0, v1}, Lorg/apache/b/a/c/b/a/a;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v0}, Lorg/apache/b/a/c/b/a/a;->e()V
:try_end_a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b
goto :goto_0
:catch_b
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
return-void
.end method
.method private final b(I)Lorg/apache/b/a/c/b/a/f;
.registers 5
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iget-object v1, v0, Lorg/apache/b/a/c/b/a/f;->g:Lorg/apache/b/a/c/b/a/f;
if-eqz v1, :cond_1e
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iget-object v1, v1, Lorg/apache/b/a/c/b/a/f;->g:Lorg/apache/b/a/c/b/a/f;
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
:goto_c
const/4 v1, -0x1
iput v1, p0, Lorg/apache/b/a/c/b/a/a;->v:I
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iget v1, v1, Lorg/apache/b/a/c/b/a/f;->a:I
if-ne v1, p1, :cond_2b
iget v0, p0, Lorg/apache/b/a/c/b/a/a;->w:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/b/a/a;->w:I
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
return-object v0
:cond_1e
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iget-object v2, p0, Lorg/apache/b/a/c/b/a/a;->a:Lorg/apache/b/a/c/b/a/c;
invoke-virtual {v2}, Lorg/apache/b/a/c/b/a/c;->b()Lorg/apache/b/a/c/b/a/f;
move-result-object v2
iput-object v2, v1, Lorg/apache/b/a/c/b/a/f;->g:Lorg/apache/b/a/c/b/a/f;
iput-object v2, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
goto :goto_c
:cond_2b
iput-object v0, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iput p1, p0, Lorg/apache/b/a/c/b/a/a;->B:I
invoke-virtual {p0}, Lorg/apache/b/a/c/b/a/a;->k()Lorg/apache/b/a/c/b/a/d;
move-result-object v0
throw v0
.end method
.method private static n()V
.registers 1
const/4 v0, 0x3
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lorg/apache/b/a/c/b/a/a;->y:[I
return-void
nop
:array_a
.array-data 0x4
0x2t 0x0t 0x0t 0x0t
0x10t 0x0t 0x0t 0x0t
0x0t 0x0t 0x38t 0x0t
.end array-data
.end method
.method private final o()I
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iget-object v0, v0, Lorg/apache/b/a/c/b/a/f;->g:Lorg/apache/b/a/c/b/a/f;
iput-object v0, p0, Lorg/apache/b/a/c/b/a/a;->d:Lorg/apache/b/a/c/b/a/f;
if-nez v0, :cond_17
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->a:Lorg/apache/b/a/c/b/a/c;
invoke-virtual {v1}, Lorg/apache/b/a/c/b/a/c;->b()Lorg/apache/b/a/c/b/a/f;
move-result-object v1
iput-object v1, v0, Lorg/apache/b/a/c/b/a/f;->g:Lorg/apache/b/a/c/b/a/f;
iget v0, v1, Lorg/apache/b/a/c/b/a/f;->a:I
iput v0, p0, Lorg/apache/b/a/c/b/a/a;->v:I
:goto_16
return v0
:cond_17
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->d:Lorg/apache/b/a/c/b/a/f;
iget v0, v0, Lorg/apache/b/a/c/b/a/f;->a:I
iput v0, p0, Lorg/apache/b/a/c/b/a/a;->v:I
goto :goto_16
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->r:Ljava/lang/String;
return-object v0
.end method
.method public final a(I)Lorg/apache/b/a/c/b/a/f;
.registers 5
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
const/4 v0, 0x0
move-object v2, v1
move v1, v0
:goto_5
if-ge v1, p1, :cond_1a
iget-object v0, v2, Lorg/apache/b/a/c/b/a/f;->g:Lorg/apache/b/a/c/b/a/f;
if-eqz v0, :cond_11
iget-object v0, v2, Lorg/apache/b/a/c/b/a/f;->g:Lorg/apache/b/a/c/b/a/f;
:goto_d
add-int/lit8 v1, v1, 0x1
move-object v2, v0
goto :goto_5
:cond_11
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->a:Lorg/apache/b/a/c/b/a/c;
invoke-virtual {v0}, Lorg/apache/b/a/c/b/a/c;->b()Lorg/apache/b/a/c/b/a/f;
move-result-object v0
iput-object v0, v2, Lorg/apache/b/a/c/b/a/f;->g:Lorg/apache/b/a/c/b/a/f;
goto :goto_d
:cond_1a
return-object v2
.end method
.method public a(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lorg/apache/b/a/c/b/a/a;->a(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 8
const/4 v0, 0x0
const/4 v4, -0x1
:try_start_2
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->b:Lorg/apache/b/a/c/b/a/e;
const/4 v2, 0x1
const/4 v3, 0x1
invoke-virtual {v1, p1, p2, v2, v3}, Lorg/apache/b/a/c/b/a/e;->a(Ljava/io/InputStream;Ljava/lang/String;II)V
:try_end_9
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_25
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->a:Lorg/apache/b/a/c/b/a/c;
iget-object v2, p0, Lorg/apache/b/a/c/b/a/a;->b:Lorg/apache/b/a/c/b/a/e;
invoke-virtual {v1, v2}, Lorg/apache/b/a/c/b/a/c;->a(Lorg/apache/b/a/c/b/a/e;)V
new-instance v1, Lorg/apache/b/a/c/b/a/f;
invoke-direct {v1}, Lorg/apache/b/a/c/b/a/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iput v4, p0, Lorg/apache/b/a/c/b/a/a;->v:I
iput v0, p0, Lorg/apache/b/a/c/b/a/a;->w:I
:goto_1b
const/4 v1, 0x3
if-ge v0, v1, :cond_2c
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
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
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->b:Lorg/apache/b/a/c/b/a/e;
invoke-virtual {v1, p1, v2, v2}, Lorg/apache/b/a/c/b/a/e;->a(Ljava/io/Reader;II)V
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->a:Lorg/apache/b/a/c/b/a/c;
iget-object v2, p0, Lorg/apache/b/a/c/b/a/a;->b:Lorg/apache/b/a/c/b/a/e;
invoke-virtual {v1, v2}, Lorg/apache/b/a/c/b/a/c;->a(Lorg/apache/b/a/c/b/a/e;)V
new-instance v1, Lorg/apache/b/a/c/b/a/f;
invoke-direct {v1}, Lorg/apache/b/a/c/b/a/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iput v3, p0, Lorg/apache/b/a/c/b/a/a;->v:I
iput v0, p0, Lorg/apache/b/a/c/b/a/a;->w:I
:goto_1a
const/4 v1, 0x3
if-ge v0, v1, :cond_24
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1a
:cond_24
return-void
.end method
.method public a(Lorg/apache/b/a/c/b/a/c;)V
.registers 5
const/4 v0, 0x0
const/4 v2, -0x1
iput-object p1, p0, Lorg/apache/b/a/c/b/a/a;->a:Lorg/apache/b/a/c/b/a/c;
new-instance v1, Lorg/apache/b/a/c/b/a/f;
invoke-direct {v1}, Lorg/apache/b/a/c/b/a/f;-><init>()V
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iput v2, p0, Lorg/apache/b/a/c/b/a/a;->v:I
iput v0, p0, Lorg/apache/b/a/c/b/a/a;->w:I
:goto_f
const/4 v1, 0x3
if-ge v0, v1, :cond_19
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_19
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->s:Ljava/lang/String;
return-object v0
.end method
.method public c()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->t:Ljava/util/ArrayList;
return-object v0
.end method
.method public d()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->u:Ljava/util/ArrayList;
return-object v0
.end method
.method public final e()V
.registers 4
invoke-virtual {p0}, Lorg/apache/b/a/c/b/a/a;->g()V
iget v0, p0, Lorg/apache/b/a/c/b/a/a;->v:I
const/4 v1, -0x1
if-ne v0, v1, :cond_1b
invoke-direct {p0}, Lorg/apache/b/a/c/b/a/a;->o()I
move-result v0
:goto_c
packed-switch v0, :pswitch_data_24
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
const/4 v1, 0x0
iget v2, p0, Lorg/apache/b/a/c/b/a/a;->w:I
aput v2, v0, v1
:goto_16
const/4 v0, 0x2
invoke-direct {p0, v0}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
return-void
:cond_1b
iget v0, p0, Lorg/apache/b/a/c/b/a/a;->v:I
goto :goto_c
:pswitch_1e
const/4 v0, 0x1
invoke-direct {p0, v0}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
goto :goto_16
nop
:pswitch_data_24
.packed-switch 0x1
:pswitch_1e
.end packed-switch
.end method
.method public final f()V
.registers 2
invoke-virtual {p0}, Lorg/apache/b/a/c/b/a/a;->g()V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
return-void
.end method
.method public final g()V
.registers 4
const/16 v2, 0x15
invoke-direct {p0, v2}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
move-result-object v0
const/4 v1, 0x3
invoke-direct {p0, v1}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
invoke-direct {p0, v2}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
move-result-object v1
iget-object v0, v0, Lorg/apache/b/a/c/b/a/f;->f:Ljava/lang/String;
iput-object v0, p0, Lorg/apache/b/a/c/b/a/a;->r:Ljava/lang/String;
iget-object v0, v1, Lorg/apache/b/a/c/b/a/f;->f:Ljava/lang/String;
iput-object v0, p0, Lorg/apache/b/a/c/b/a/a;->s:Ljava/lang/String;
:goto_16
iget v0, p0, Lorg/apache/b/a/c/b/a/a;->v:I
const/4 v1, -0x1
if-ne v0, v1, :cond_2a
invoke-direct {p0}, Lorg/apache/b/a/c/b/a/a;->o()I
move-result v0
:goto_1f
packed-switch v0, :pswitch_data_36
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
const/4 v1, 0x1
iget v2, p0, Lorg/apache/b/a/c/b/a/a;->w:I
aput v2, v0, v1
return-void
:cond_2a
iget v0, p0, Lorg/apache/b/a/c/b/a/a;->v:I
goto :goto_1f
:pswitch_2d
const/4 v0, 0x4
invoke-direct {p0, v0}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
invoke-virtual {p0}, Lorg/apache/b/a/c/b/a/a;->h()V
goto :goto_16
nop
:pswitch_data_36
.packed-switch 0x4
:pswitch_2d
.end packed-switch
.end method
.method public final h()V
.registers 4
const/16 v0, 0x15
invoke-direct {p0, v0}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
move-result-object v0
const/4 v1, 0x5
invoke-direct {p0, v1}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
invoke-virtual {p0}, Lorg/apache/b/a/c/b/a/a;->i()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lorg/apache/b/a/c/b/a/a;->t:Ljava/util/ArrayList;
iget-object v0, v0, Lorg/apache/b/a/c/b/a/f;->f:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->u:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final i()Ljava/lang/String;
.registers 5
const/4 v3, -0x1
iget v0, p0, Lorg/apache/b/a/c/b/a/a;->v:I
if-ne v0, v3, :cond_1c
invoke-direct {p0}, Lorg/apache/b/a/c/b/a/a;->o()I
move-result v0
:goto_9
packed-switch v0, :pswitch_data_36
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
const/4 v1, 0x2
iget v2, p0, Lorg/apache/b/a/c/b/a/a;->w:I
aput v2, v0, v1
invoke-direct {p0, v3}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
new-instance v0, Lorg/apache/b/a/c/b/a/d;
invoke-direct {v0}, Lorg/apache/b/a/c/b/a/d;-><init>()V
throw v0
:cond_1c
iget v0, p0, Lorg/apache/b/a/c/b/a/a;->v:I
goto :goto_9
:pswitch_1f
const/16 v0, 0x15
invoke-direct {p0, v0}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
move-result-object v0
:goto_25
iget-object v0, v0, Lorg/apache/b/a/c/b/a/f;->f:Ljava/lang/String;
return-object v0
:pswitch_28
const/16 v0, 0x14
invoke-direct {p0, v0}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
move-result-object v0
goto :goto_25
:pswitch_2f
const/16 v0, 0x13
invoke-direct {p0, v0}, Lorg/apache/b/a/c/b/a/a;->b(I)Lorg/apache/b/a/c/b/a/f;
move-result-object v0
goto :goto_25
:pswitch_data_36
.packed-switch 0x13
:pswitch_2f
:pswitch_28
:pswitch_1f
.end packed-switch
.end method
.method public final j()Lorg/apache/b/a/c/b/a/f;
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iget-object v0, v0, Lorg/apache/b/a/c/b/a/f;->g:Lorg/apache/b/a/c/b/a/f;
if-eqz v0, :cond_18
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iget-object v0, v0, Lorg/apache/b/a/c/b/a/f;->g:Lorg/apache/b/a/c/b/a/f;
iput-object v0, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
:goto_c
const/4 v0, -0x1
iput v0, p0, Lorg/apache/b/a/c/b/a/a;->v:I
iget v0, p0, Lorg/apache/b/a/c/b/a/a;->w:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/b/a/a;->w:I
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
return-object v0
:cond_18
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->a:Lorg/apache/b/a/c/b/a/c;
invoke-virtual {v1}, Lorg/apache/b/a/c/b/a/c;->b()Lorg/apache/b/a/c/b/a/f;
move-result-object v1
iput-object v1, v0, Lorg/apache/b/a/c/b/a/f;->g:Lorg/apache/b/a/c/b/a/f;
iput-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
goto :goto_c
.end method
.method public k()Lorg/apache/b/a/c/b/a/d;
.registers 9
const/16 v7, 0x18
const/4 v6, 0x1
const/4 v0, 0x0
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->z:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V
new-array v3, v7, [Z
move v1, v0
:goto_c
if-ge v1, v7, :cond_13
aput-boolean v0, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_13
iget v1, p0, Lorg/apache/b/a/c/b/a/a;->B:I
if-ltz v1, :cond_1e
iget v1, p0, Lorg/apache/b/a/c/b/a/a;->B:I
aput-boolean v6, v3, v1
const/4 v1, -0x1
iput v1, p0, Lorg/apache/b/a/c/b/a/a;->B:I
:cond_1e
move v2, v0
:goto_1f
const/4 v1, 0x3
if-ge v2, v1, :cond_41
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->x:[I
aget v1, v1, v2
iget v4, p0, Lorg/apache/b/a/c/b/a/a;->w:I
if-ne v1, v4, :cond_3d
move v1, v0
:goto_2b
const/16 v4, 0x20
if-ge v1, v4, :cond_3d
sget-object v4, Lorg/apache/b/a/c/b/a/a;->y:[I
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
iput-object v2, p0, Lorg/apache/b/a/c/b/a/a;->A:[I
iget-object v2, p0, Lorg/apache/b/a/c/b/a/a;->A:[I
aput v1, v2, v0
iget-object v2, p0, Lorg/apache/b/a/c/b/a/a;->z:Ljava/util/Vector;
iget-object v4, p0, Lorg/apache/b/a/c/b/a/a;->A:[I
invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_57
add-int/lit8 v1, v1, 0x1
goto :goto_42
:cond_5a
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->z:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v1
new-array v2, v1, [[I
move v1, v0
:goto_63
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->z:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-ge v1, v0, :cond_7b
iget-object v0, p0, Lorg/apache/b/a/c/b/a/a;->z:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
check-cast v0, [I
aput-object v0, v2, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_63
:cond_7b
new-instance v0, Lorg/apache/b/a/c/b/a/d;
iget-object v1, p0, Lorg/apache/b/a/c/b/a/a;->c:Lorg/apache/b/a/c/b/a/f;
sget-object v3, Lorg/apache/b/a/c/b/a/a;->q:[Ljava/lang/String;
invoke-direct {v0, v1, v2, v3}, Lorg/apache/b/a/c/b/a/d;-><init>(Lorg/apache/b/a/c/b/a/f;[[I[Ljava/lang/String;)V
return-object v0
.end method
.method public final l()V
.registers 1
return-void
.end method
.method public final m()V
.registers 1
return-void
.end method