.class public Lorg/apache/b/a/c/e/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Z
.field  b:I
.field  c:I
.field  d:I
.field public e:I
.field protected f:[I
.field protected g:[I
.field protected h:I
.field protected i:I
.field protected j:Z
.field protected k:Z
.field protected l:Ljava/io/Reader;
.field protected m:[C
.field protected n:I
.field protected o:I
.field protected p:I
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 4
const/4 v1, 0x1
const/16 v0, 0x1000
invoke-direct {p0, p1, v1, v1, v0}, Lorg/apache/b/a/c/e/e;-><init>(Ljava/io/InputStream;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;II)V
.registers 5
const/16 v0, 0x1000
invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/b/a/c/e/e;-><init>(Ljava/io/InputStream;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;III)V
.registers 6
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/b/a/c/e/e;-><init>(Ljava/io/Reader;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
const/4 v3, 0x1
const/16 v5, 0x1000
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v4, v3
invoke-direct/range {v0 .. v5}, Lorg/apache/b/a/c/e/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
.registers 11
const/16 v5, 0x1000
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-direct/range {v0 .. v5}, Lorg/apache/b/a/c/e/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
.registers 7
if-nez p2, :cond_b
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
:goto_7
invoke-direct {p0, v0, p3, p4, p5}, Lorg/apache/b/a/c/e/e;-><init>(Ljava/io/Reader;III)V
return-void
:cond_b
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
goto :goto_7
.end method
.method public constructor <init>(Ljava/io/Reader;)V
.registers 4
const/4 v1, 0x1
const/16 v0, 0x1000
invoke-direct {p0, p1, v1, v1, v0}, Lorg/apache/b/a/c/e/e;-><init>(Ljava/io/Reader;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/Reader;II)V
.registers 5
const/16 v0, 0x1000
invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/b/a/c/e/e;-><init>(Ljava/io/Reader;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/Reader;III)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->e:I
iput v1, p0, Lorg/apache/b/a/c/e/e;->h:I
const/4 v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->i:I
iput-boolean v1, p0, Lorg/apache/b/a/c/e/e;->j:Z
iput-boolean v1, p0, Lorg/apache/b/a/c/e/e;->k:Z
iput v1, p0, Lorg/apache/b/a/c/e/e;->n:I
iput v1, p0, Lorg/apache/b/a/c/e/e;->o:I
const/16 v0, 0x8
iput v0, p0, Lorg/apache/b/a/c/e/e;->p:I
iput-object p1, p0, Lorg/apache/b/a/c/e/e;->l:Ljava/io/Reader;
iput p2, p0, Lorg/apache/b/a/c/e/e;->i:I
add-int/lit8 v0, p3, -0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->h:I
iput p4, p0, Lorg/apache/b/a/c/e/e;->b:I
iput p4, p0, Lorg/apache/b/a/c/e/e;->c:I
new-array v0, p4, [C
iput-object v0, p0, Lorg/apache/b/a/c/e/e;->m:[C
new-array v0, p4, [I
iput-object v0, p0, Lorg/apache/b/a/c/e/e;->f:[I
new-array v0, p4, [I
iput-object v0, p0, Lorg/apache/b/a/c/e/e;->g:[I
return-void
.end method
.method protected a()V
.registers 8
const/16 v2, 0x800
const/4 v6, -0x1
const/4 v5, 0x0
iget v0, p0, Lorg/apache/b/a/c/e/e;->n:I
iget v1, p0, Lorg/apache/b/a/c/e/e;->c:I
if-ne v0, v1, :cond_1c
iget v0, p0, Lorg/apache/b/a/c/e/e;->c:I
iget v1, p0, Lorg/apache/b/a/c/e/e;->b:I
if-ne v0, v1, :cond_58
iget v0, p0, Lorg/apache/b/a/c/e/e;->d:I
if-le v0, v2, :cond_4b
iput v5, p0, Lorg/apache/b/a/c/e/e;->n:I
iput v5, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v0, p0, Lorg/apache/b/a/c/e/e;->d:I
iput v0, p0, Lorg/apache/b/a/c/e/e;->c:I
:cond_1c
:try_start_1c
:goto_1c
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->l:Ljava/io/Reader;
iget-object v1, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget v2, p0, Lorg/apache/b/a/c/e/e;->n:I
iget v3, p0, Lorg/apache/b/a/c/e/e;->c:I
iget v4, p0, Lorg/apache/b/a/c/e/e;->n:I
sub-int/2addr v3, v4
invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I
move-result v0
if-ne v0, v6, :cond_74
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->l:Ljava/io/Reader;
invoke-virtual {v0}, Ljava/io/Reader;->close()V
new-instance v0, Ljava/io/IOException;
invoke-direct {v0}, Ljava/io/IOException;-><init>()V
throw v0
:try_end_38
.catch Ljava/io/IOException; {:try_start_1c .. :try_end_38} :catch_38
:catch_38
move-exception v0
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lorg/apache/b/a/c/e/e;->e:I
invoke-virtual {p0, v5}, Lorg/apache/b/a/c/e/e;->c(I)V
iget v1, p0, Lorg/apache/b/a/c/e/e;->d:I
if-ne v1, v6, :cond_4a
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
iput v1, p0, Lorg/apache/b/a/c/e/e;->d:I
:cond_4a
throw v0
:cond_4b
iget v0, p0, Lorg/apache/b/a/c/e/e;->d:I
if-gez v0, :cond_54
iput v5, p0, Lorg/apache/b/a/c/e/e;->n:I
iput v5, p0, Lorg/apache/b/a/c/e/e;->e:I
goto :goto_1c
:cond_54
invoke-virtual {p0, v5}, Lorg/apache/b/a/c/e/e;->a(Z)V
goto :goto_1c
:cond_58
iget v0, p0, Lorg/apache/b/a/c/e/e;->c:I
iget v1, p0, Lorg/apache/b/a/c/e/e;->d:I
if-le v0, v1, :cond_63
iget v0, p0, Lorg/apache/b/a/c/e/e;->b:I
iput v0, p0, Lorg/apache/b/a/c/e/e;->c:I
goto :goto_1c
:cond_63
iget v0, p0, Lorg/apache/b/a/c/e/e;->d:I
iget v1, p0, Lorg/apache/b/a/c/e/e;->c:I
sub-int/2addr v0, v1
if-ge v0, v2, :cond_6f
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lorg/apache/b/a/c/e/e;->a(Z)V
goto :goto_1c
:cond_6f
iget v0, p0, Lorg/apache/b/a/c/e/e;->d:I
iput v0, p0, Lorg/apache/b/a/c/e/e;->c:I
goto :goto_1c
:try_start_74
:cond_74
iget v1, p0, Lorg/apache/b/a/c/e/e;->n:I
add-int/2addr v0, v1
iput v0, p0, Lorg/apache/b/a/c/e/e;->n:I
:try_end_79
.catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_38
return-void
.end method
.method protected a(C)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
iget v0, p0, Lorg/apache/b/a/c/e/e;->h:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->h:I
iget-boolean v0, p0, Lorg/apache/b/a/c/e/e;->k:Z
if-eqz v0, :cond_2a
iput-boolean v2, p0, Lorg/apache/b/a/c/e/e;->k:Z
iget v0, p0, Lorg/apache/b/a/c/e/e;->i:I
iput v1, p0, Lorg/apache/b/a/c/e/e;->h:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->i:I
:cond_16
:goto_16
packed-switch p1, :pswitch_data_5a
:pswitch_19
:goto_19
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->f:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v2, p0, Lorg/apache/b/a/c/e/e;->i:I
aput v2, v0, v1
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->g:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v2, p0, Lorg/apache/b/a/c/e/e;->h:I
aput v2, v0, v1
return-void
:cond_2a
iget-boolean v0, p0, Lorg/apache/b/a/c/e/e;->j:Z
if-eqz v0, :cond_16
iput-boolean v2, p0, Lorg/apache/b/a/c/e/e;->j:Z
const/16 v0, 0xa
if-ne p1, v0, :cond_37
iput-boolean v1, p0, Lorg/apache/b/a/c/e/e;->k:Z
goto :goto_16
:cond_37
iget v0, p0, Lorg/apache/b/a/c/e/e;->i:I
iput v1, p0, Lorg/apache/b/a/c/e/e;->h:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->i:I
goto :goto_16
:pswitch_40
iput-boolean v1, p0, Lorg/apache/b/a/c/e/e;->j:Z
goto :goto_19
:pswitch_43
iput-boolean v1, p0, Lorg/apache/b/a/c/e/e;->k:Z
goto :goto_19
:pswitch_46
iget v0, p0, Lorg/apache/b/a/c/e/e;->h:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->h:I
iget v0, p0, Lorg/apache/b/a/c/e/e;->h:I
iget v1, p0, Lorg/apache/b/a/c/e/e;->p:I
iget v2, p0, Lorg/apache/b/a/c/e/e;->h:I
iget v3, p0, Lorg/apache/b/a/c/e/e;->p:I
rem-int/2addr v2, v3
sub-int/2addr v1, v2
add-int/2addr v0, v1
iput v0, p0, Lorg/apache/b/a/c/e/e;->h:I
goto :goto_19
:pswitch_data_5a
.packed-switch 0x9
:pswitch_46
:pswitch_43
:pswitch_19
:pswitch_19
:pswitch_40
.end packed-switch
.end method
.method protected a(I)V
.registers 2
iput p1, p0, Lorg/apache/b/a/c/e/e;->p:I
return-void
.end method
.method public a(II)V
.registers 11
const/4 v1, 0x0
iget v3, p0, Lorg/apache/b/a/c/e/e;->d:I
iget v0, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v2, p0, Lorg/apache/b/a/c/e/e;->d:I
if-lt v0, v2, :cond_42
iget v0, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v2, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v0, v2
iget v2, p0, Lorg/apache/b/a/c/e/e;->o:I
add-int/2addr v0, v2
add-int/lit8 v0, v0, 0x1
:goto_13
move v5, v1
move v2, v1
:goto_15
if-ge v2, v0, :cond_50
iget-object v4, p0, Lorg/apache/b/a/c/e/e;->f:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->b:I
rem-int v1, v3, v1
aget v4, v4, v1
iget-object v6, p0, Lorg/apache/b/a/c/e/e;->f:[I
add-int/lit8 v3, v3, 0x1
iget v7, p0, Lorg/apache/b/a/c/e/e;->b:I
rem-int v7, v3, v7
aget v6, v6, v7
if-ne v4, v6, :cond_50
iget-object v4, p0, Lorg/apache/b/a/c/e/e;->f:[I
aput p1, v4, v1
iget-object v4, p0, Lorg/apache/b/a/c/e/e;->g:[I
aget v4, v4, v7
add-int/2addr v4, v5
iget-object v6, p0, Lorg/apache/b/a/c/e/e;->g:[I
aget v6, v6, v1
sub-int/2addr v4, v6
iget-object v6, p0, Lorg/apache/b/a/c/e/e;->g:[I
add-int/2addr v5, p2
aput v5, v6, v1
add-int/lit8 v2, v2, 0x1
move v5, v4
goto :goto_15
:cond_42
iget v0, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v2, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v0, v2
iget v2, p0, Lorg/apache/b/a/c/e/e;->e:I
add-int/2addr v0, v2
add-int/lit8 v0, v0, 0x1
iget v2, p0, Lorg/apache/b/a/c/e/e;->o:I
add-int/2addr v0, v2
goto :goto_13
:cond_50
if-ge v2, v0, :cond_88
iget-object v6, p0, Lorg/apache/b/a/c/e/e;->f:[I
add-int/lit8 v4, p1, 0x1
aput p1, v6, v1
iget-object v6, p0, Lorg/apache/b/a/c/e/e;->g:[I
add-int/2addr v5, p2
aput v5, v6, v1
move v5, v4
move v4, v3
:goto_5f
add-int/lit8 v3, v2, 0x1
if-ge v2, v0, :cond_88
iget-object v2, p0, Lorg/apache/b/a/c/e/e;->f:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->b:I
rem-int v1, v4, v1
aget v6, v2, v1
iget-object v7, p0, Lorg/apache/b/a/c/e/e;->f:[I
add-int/lit8 v2, v4, 0x1
iget v4, p0, Lorg/apache/b/a/c/e/e;->b:I
rem-int v4, v2, v4
aget v4, v7, v4
if-eq v6, v4, :cond_81
iget-object v6, p0, Lorg/apache/b/a/c/e/e;->f:[I
add-int/lit8 v4, v5, 0x1
aput v5, v6, v1
move v5, v4
move v4, v2
move v2, v3
goto :goto_5f
:cond_81
iget-object v4, p0, Lorg/apache/b/a/c/e/e;->f:[I
aput v5, v4, v1
move v4, v2
move v2, v3
goto :goto_5f
:cond_88
move v0, v1
iget-object v1, p0, Lorg/apache/b/a/c/e/e;->f:[I
aget v1, v1, v0
iput v1, p0, Lorg/apache/b/a/c/e/e;->i:I
iget-object v1, p0, Lorg/apache/b/a/c/e/e;->g:[I
aget v0, v1, v0
iput v0, p0, Lorg/apache/b/a/c/e/e;->h:I
return-void
.end method
.method public a(Ljava/io/InputStream;)V
.registers 4
const/4 v1, 0x1
const/16 v0, 0x1000
invoke-virtual {p0, p1, v1, v1, v0}, Lorg/apache/b/a/c/e/e;->a(Ljava/io/InputStream;III)V
return-void
.end method
.method public a(Ljava/io/InputStream;II)V
.registers 5
const/16 v0, 0x1000
invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/b/a/c/e/e;->a(Ljava/io/InputStream;III)V
return-void
.end method
.method public a(Ljava/io/InputStream;III)V
.registers 6
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/b/a/c/e/e;->a(Ljava/io/Reader;III)V
return-void
.end method
.method public a(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
const/4 v3, 0x1
const/16 v5, 0x1000
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v4, v3
invoke-virtual/range {v0 .. v5}, Lorg/apache/b/a/c/e/e;->a(Ljava/io/InputStream;Ljava/lang/String;III)V
return-void
.end method
.method public a(Ljava/io/InputStream;Ljava/lang/String;II)V
.registers 11
const/16 v5, 0x1000
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v5}, Lorg/apache/b/a/c/e/e;->a(Ljava/io/InputStream;Ljava/lang/String;III)V
return-void
.end method
.method public a(Ljava/io/InputStream;Ljava/lang/String;III)V
.registers 7
if-nez p2, :cond_b
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
:goto_7
invoke-virtual {p0, v0, p3, p4, p5}, Lorg/apache/b/a/c/e/e;->a(Ljava/io/Reader;III)V
return-void
:cond_b
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
goto :goto_7
.end method
.method public a(Ljava/io/Reader;)V
.registers 4
const/4 v1, 0x1
const/16 v0, 0x1000
invoke-virtual {p0, p1, v1, v1, v0}, Lorg/apache/b/a/c/e/e;->a(Ljava/io/Reader;III)V
return-void
.end method
.method public a(Ljava/io/Reader;II)V
.registers 5
const/16 v0, 0x1000
invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/b/a/c/e/e;->a(Ljava/io/Reader;III)V
return-void
.end method
.method public a(Ljava/io/Reader;III)V
.registers 7
const/4 v1, 0x0
iput-object p1, p0, Lorg/apache/b/a/c/e/e;->l:Ljava/io/Reader;
iput p2, p0, Lorg/apache/b/a/c/e/e;->i:I
add-int/lit8 v0, p3, -0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->h:I
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->m:[C
if-eqz v0, :cond_12
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->m:[C
array-length v0, v0
if-eq p4, v0, :cond_22
:cond_12
iput p4, p0, Lorg/apache/b/a/c/e/e;->b:I
iput p4, p0, Lorg/apache/b/a/c/e/e;->c:I
new-array v0, p4, [C
iput-object v0, p0, Lorg/apache/b/a/c/e/e;->m:[C
new-array v0, p4, [I
iput-object v0, p0, Lorg/apache/b/a/c/e/e;->f:[I
new-array v0, p4, [I
iput-object v0, p0, Lorg/apache/b/a/c/e/e;->g:[I
:cond_22
iput-boolean v1, p0, Lorg/apache/b/a/c/e/e;->j:Z
iput-boolean v1, p0, Lorg/apache/b/a/c/e/e;->k:Z
iput v1, p0, Lorg/apache/b/a/c/e/e;->n:I
iput v1, p0, Lorg/apache/b/a/c/e/e;->o:I
iput v1, p0, Lorg/apache/b/a/c/e/e;->d:I
const/4 v0, -0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->e:I
return-void
.end method
.method protected a(Z)V
.registers 11
const/4 v8, 0x0
iget v0, p0, Lorg/apache/b/a/c/e/e;->b:I
add-int/lit16 v0, v0, 0x800
new-array v0, v0, [C
iget v1, p0, Lorg/apache/b/a/c/e/e;->b:I
add-int/lit16 v1, v1, 0x800
new-array v1, v1, [I
iget v2, p0, Lorg/apache/b/a/c/e/e;->b:I
add-int/lit16 v2, v2, 0x800
new-array v2, v2, [I
if-eqz p1, :cond_82
:try_start_15
iget-object v3, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget v4, p0, Lorg/apache/b/a/c/e/e;->d:I
const/4 v5, 0x0
iget v6, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v7, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v6, v7
invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v3, p0, Lorg/apache/b/a/c/e/e;->m:[C
const/4 v4, 0x0
iget v5, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v6, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v5, v6
iget v6, p0, Lorg/apache/b/a/c/e/e;->e:I
invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->f:[I
iget v3, p0, Lorg/apache/b/a/c/e/e;->d:I
const/4 v4, 0x0
iget v5, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v6, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v5, v6
invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->f:[I
const/4 v3, 0x0
iget v4, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v5, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v4, v5
iget v5, p0, Lorg/apache/b/a/c/e/e;->e:I
invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Lorg/apache/b/a/c/e/e;->f:[I
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->g:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->d:I
const/4 v3, 0x0
iget v4, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v5, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v4, v5
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->g:[I
const/4 v1, 0x0
iget v3, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v4, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v3, v4
iget v4, p0, Lorg/apache/b/a/c/e/e;->e:I
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v2, p0, Lorg/apache/b/a/c/e/e;->g:[I
iget v0, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v1, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v2, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v1, v2
add-int/2addr v0, v1
iput v0, p0, Lorg/apache/b/a/c/e/e;->e:I
iput v0, p0, Lorg/apache/b/a/c/e/e;->n:I
:try_end_75
.catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_75} :catch_b9
:goto_75
iget v0, p0, Lorg/apache/b/a/c/e/e;->b:I
add-int/lit16 v0, v0, 0x800
iput v0, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v0, p0, Lorg/apache/b/a/c/e/e;->b:I
iput v0, p0, Lorg/apache/b/a/c/e/e;->c:I
iput v8, p0, Lorg/apache/b/a/c/e/e;->d:I
return-void
:try_start_82
:cond_82
iget-object v3, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget v4, p0, Lorg/apache/b/a/c/e/e;->d:I
const/4 v5, 0x0
iget v6, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v7, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v6, v7
invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->f:[I
iget v3, p0, Lorg/apache/b/a/c/e/e;->d:I
const/4 v4, 0x0
iget v5, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v6, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v5, v6
invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Lorg/apache/b/a/c/e/e;->f:[I
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->g:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->d:I
const/4 v3, 0x0
iget v4, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v5, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v4, v5
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v2, p0, Lorg/apache/b/a/c/e/e;->g:[I
iget v0, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v1, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v0, v1
iput v0, p0, Lorg/apache/b/a/c/e/e;->e:I
iput v0, p0, Lorg/apache/b/a/c/e/e;->n:I
:try_end_b8
.catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_b8} :catch_b9
goto :goto_75
:catch_b9
move-exception v0
new-instance v1, Ljava/lang/Error;
invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public b()C
.registers 3
const/4 v0, -0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->d:I
invoke-virtual {p0}, Lorg/apache/b/a/c/e/e;->c()C
move-result v0
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
iput v1, p0, Lorg/apache/b/a/c/e/e;->d:I
return v0
.end method
.method protected b(I)I
.registers 3
iget v0, p0, Lorg/apache/b/a/c/e/e;->p:I
return v0
.end method
.method public c()C
.registers 3
iget v0, p0, Lorg/apache/b/a/c/e/e;->o:I
if-lez v0, :cond_1e
iget v0, p0, Lorg/apache/b/a/c/e/e;->o:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->o:I
iget v0, p0, Lorg/apache/b/a/c/e/e;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v1, p0, Lorg/apache/b/a/c/e/e;->b:I
if-ne v0, v1, :cond_17
const/4 v0, 0x0
iput v0, p0, Lorg/apache/b/a/c/e/e;->e:I
:cond_17
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
aget-char v0, v0, v1
:goto_1d
return v0
:cond_1e
iget v0, p0, Lorg/apache/b/a/c/e/e;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v1, p0, Lorg/apache/b/a/c/e/e;->n:I
if-lt v0, v1, :cond_2b
invoke-virtual {p0}, Lorg/apache/b/a/c/e/e;->a()V
:cond_2b
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
aget-char v0, v0, v1
invoke-virtual {p0, v0}, Lorg/apache/b/a/c/e/e;->a(C)V
goto :goto_1d
.end method
.method public c(I)V
.registers 4
iget v0, p0, Lorg/apache/b/a/c/e/e;->o:I
add-int/2addr v0, p1
iput v0, p0, Lorg/apache/b/a/c/e/e;->o:I
iget v0, p0, Lorg/apache/b/a/c/e/e;->e:I
sub-int/2addr v0, p1
iput v0, p0, Lorg/apache/b/a/c/e/e;->e:I
if-gez v0, :cond_13
iget v0, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v1, p0, Lorg/apache/b/a/c/e/e;->b:I
add-int/2addr v0, v1
iput v0, p0, Lorg/apache/b/a/c/e/e;->e:I
:cond_13
return-void
.end method
.method public d()I
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->g:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
aget v0, v0, v1
return v0
.end method
.method public d(I)[C
.registers 7
const/4 v4, 0x0
new-array v0, p1, [C
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
add-int/lit8 v1, v1, 0x1
if-lt v1, p1, :cond_14
iget-object v1, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget v2, p0, Lorg/apache/b/a/c/e/e;->e:I
sub-int/2addr v2, p1
add-int/lit8 v2, v2, 0x1
invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_13
return-object v0
:cond_14
iget-object v1, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget v2, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v3, p0, Lorg/apache/b/a/c/e/e;->e:I
sub-int v3, p1, v3
add-int/lit8 v3, v3, -0x1
sub-int/2addr v2, v3
iget v3, p0, Lorg/apache/b/a/c/e/e;->e:I
sub-int v3, p1, v3
add-int/lit8 v3, v3, -0x1
invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v1, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget v2, p0, Lorg/apache/b/a/c/e/e;->e:I
sub-int v2, p1, v2
add-int/lit8 v2, v2, -0x1
iget v3, p0, Lorg/apache/b/a/c/e/e;->e:I
add-int/lit8 v3, v3, 0x1
invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_13
.end method
.method public e()I
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->f:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
aget v0, v0, v1
return v0
.end method
.method public f()I
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->g:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
aget v0, v0, v1
return v0
.end method
.method public g()I
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->f:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->e:I
aget v0, v0, v1
return v0
.end method
.method public h()I
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->g:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->d:I
aget v0, v0, v1
return v0
.end method
.method public i()I
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/e/e;->f:[I
iget v1, p0, Lorg/apache/b/a/c/e/e;->d:I
aget v0, v0, v1
return v0
.end method
.method public j()Ljava/lang/String;
.registers 7
iget v0, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v1, p0, Lorg/apache/b/a/c/e/e;->d:I
if-lt v0, v1, :cond_17
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget v2, p0, Lorg/apache/b/a/c/e/e;->d:I
iget v3, p0, Lorg/apache/b/a/c/e/e;->e:I
iget v4, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v3, v4
add-int/lit8 v3, v3, 0x1
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
:goto_16
return-object v0
:cond_17
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
new-instance v1, Ljava/lang/String;
iget-object v2, p0, Lorg/apache/b/a/c/e/e;->m:[C
iget v3, p0, Lorg/apache/b/a/c/e/e;->d:I
iget v4, p0, Lorg/apache/b/a/c/e/e;->b:I
iget v5, p0, Lorg/apache/b/a/c/e/e;->d:I
sub-int/2addr v4, v5
invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
new-instance v1, Ljava/lang/String;
iget-object v2, p0, Lorg/apache/b/a/c/e/e;->m:[C
const/4 v3, 0x0
iget v4, p0, Lorg/apache/b/a/c/e/e;->e:I
add-int/lit8 v4, v4, 0x1
invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_16
.end method
.method public k()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/b/a/c/e/e;->m:[C
iput-object v0, p0, Lorg/apache/b/a/c/e/e;->f:[I
iput-object v0, p0, Lorg/apache/b/a/c/e/e;->g:[I
return-void
.end method