.class public Lorg/apache/b/a/f/k;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/b/a/f/e;
.implements Lorg/apache/b/a/f/m;
.field private final o:Lorg/apache/b/a/f/h;
.field private final p:Ljava/util/LinkedList;
.field private q:I
.field private r:Lorg/apache/b/a/f/d;
.field private s:I
.field private t:Lorg/apache/b/a/d/a;
.field private u:Lorg/apache/b/a/d/l;
.method public constructor <init>()V
.registers 2
new-instance v0, Lorg/apache/b/a/f/h;
invoke-direct {v0}, Lorg/apache/b/a/f/h;-><init>()V
invoke-direct {p0, v0}, Lorg/apache/b/a/f/k;-><init>(Lorg/apache/b/a/f/h;)V
return-void
.end method
.method protected constructor <init>(Lorg/apache/b/a/f/h;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lorg/apache/b/a/f/k;->p:Ljava/util/LinkedList;
const/4 v0, -0x1
iput v0, p0, Lorg/apache/b/a/f/k;->q:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/b/a/f/k;->s:I
iput-object p1, p0, Lorg/apache/b/a/f/k;->o:Lorg/apache/b/a/f/h;
return-void
.end method
.method public static final a()Lorg/apache/b/a/f/k;
.registers 2
new-instance v0, Lorg/apache/b/a/f/h;
invoke-direct {v0}, Lorg/apache/b/a/f/h;-><init>()V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lorg/apache/b/a/f/h;->a(Z)V
new-instance v1, Lorg/apache/b/a/f/k;
invoke-direct {v1, v0}, Lorg/apache/b/a/f/k;-><init>(Lorg/apache/b/a/f/h;)V
return-object v1
.end method
.method public static final b(I)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lorg/apache/b/a/f/b;->a(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final b()Lorg/apache/b/a/f/k;
.registers 2
new-instance v0, Lorg/apache/b/a/f/h;
invoke-direct {v0}, Lorg/apache/b/a/f/h;-><init>()V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lorg/apache/b/a/f/h;->b(Z)V
new-instance v1, Lorg/apache/b/a/f/k;
invoke-direct {v1, v0}, Lorg/apache/b/a/f/k;-><init>(Lorg/apache/b/a/f/h;)V
return-object v1
.end method
.method private b(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 10
iget-object v0, p0, Lorg/apache/b/a/f/k;->p:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
new-instance v0, Lorg/apache/b/a/d/l;
invoke-direct {v0, p1}, Lorg/apache/b/a/d/l;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Lorg/apache/b/a/f/k;->u:Lorg/apache/b/a/d/l;
new-instance v0, Lorg/apache/b/a/d/a;
iget-object v1, p0, Lorg/apache/b/a/f/k;->u:Lorg/apache/b/a/d/l;
const/16 v2, 0x1000
iget-object v3, p0, Lorg/apache/b/a/f/k;->o:Lorg/apache/b/a/f/h;
invoke-virtual {v3}, Lorg/apache/b/a/f/h;->c()I
move-result v3
invoke-direct {v0, v1, v2, v3}, Lorg/apache/b/a/d/a;-><init>(Ljava/io/InputStream;II)V
iput-object v0, p0, Lorg/apache/b/a/f/k;->t:Lorg/apache/b/a/d/a;
iget v0, p0, Lorg/apache/b/a/f/k;->s:I
packed-switch v0, :pswitch_data_58
:goto_22
iget-object v0, p0, Lorg/apache/b/a/f/k;->p:Ljava/util/LinkedList;
iget-object v1, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
invoke-interface {v0}, Lorg/apache/b/a/f/d;->a()I
move-result v0
iput v0, p0, Lorg/apache/b/a/f/k;->q:I
return-void
:pswitch_32
new-instance v0, Lorg/apache/b/a/f/l;
iget-object v1, p0, Lorg/apache/b/a/f/k;->t:Lorg/apache/b/a/d/a;
invoke-direct {v0, v1}, Lorg/apache/b/a/f/l;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
goto :goto_22
:pswitch_3c
new-instance v0, Lorg/apache/b/a/f/g;
iget-object v1, p0, Lorg/apache/b/a/f/k;->u:Lorg/apache/b/a/d/l;
iget-object v2, p0, Lorg/apache/b/a/f/k;->t:Lorg/apache/b/a/d/a;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x1
iget-object v6, p0, Lorg/apache/b/a/f/k;->o:Lorg/apache/b/a/f/h;
invoke-direct/range {v0 .. v6}, Lorg/apache/b/a/f/g;-><init>(Lorg/apache/b/a/d/l;Lorg/apache/b/a/d/a;Lorg/apache/b/a/b/a;IILorg/apache/b/a/f/h;)V
iget v1, p0, Lorg/apache/b/a/f/k;->s:I
invoke-virtual {v0, v1}, Lorg/apache/b/a/f/g;->b(I)V
if-eqz p2, :cond_54
invoke-virtual {v0, p2}, Lorg/apache/b/a/f/g;->a(Ljava/lang/String;)V
:cond_54
iput-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
goto :goto_22
nop
:pswitch_data_58
.packed-switch 0x0
:pswitch_3c
:pswitch_3c
:pswitch_32
:pswitch_3c
.end packed-switch
.end method
.method public a(I)V
.registers 3
iput p1, p0, Lorg/apache/b/a/f/k;->s:I
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
if-eqz v0, :cond_b
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
invoke-interface {v0, p1}, Lorg/apache/b/a/f/d;->b(I)V
:cond_b
return-void
.end method
.method public a(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lorg/apache/b/a/f/k;->b(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Content type may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-direct {p0, p1, p2}, Lorg/apache/b/a/f/k;->b(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public c()Z
.registers 3
iget v0, p0, Lorg/apache/b/a/f/k;->s:I
const/4 v1, 0x2
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public d()I
.registers 2
iget v0, p0, Lorg/apache/b/a/f/k;->s:I
return v0
.end method
.method public e()V
.registers 2
iget-object v0, p0, Lorg/apache/b/a/f/k;->t:Lorg/apache/b/a/d/a;
invoke-virtual {v0}, Lorg/apache/b/a/d/a;->h()V
iget-object v0, p0, Lorg/apache/b/a/f/k;->u:Lorg/apache/b/a/d/l;
invoke-virtual {v0}, Lorg/apache/b/a/d/l;->b()V
return-void
.end method
.method public f()I
.registers 2
iget v0, p0, Lorg/apache/b/a/f/k;->q:I
return v0
.end method
.method public g()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
invoke-interface {v0}, Lorg/apache/b/a/f/d;->j()Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public h()Ljava/io/InputStream;
.registers 4
invoke-virtual {p0}, Lorg/apache/b/a/f/k;->j()Lorg/apache/b/a/b/a;
move-result-object v0
invoke-interface {v0}, Lorg/apache/b/a/b/a;->f()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
invoke-interface {v1}, Lorg/apache/b/a/f/d;->j()Ljava/io/InputStream;
move-result-object v1
invoke-static {v0}, Lorg/apache/b/a/g/g;->c(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_1a
new-instance v0, Lorg/apache/b/a/a/b;
invoke-direct {v0, v1}, Lorg/apache/b/a/a/b;-><init>(Ljava/io/InputStream;)V
:goto_19
return-object v0
:cond_1a
invoke-static {v0}, Lorg/apache/b/a/g/g;->d(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_26
new-instance v0, Lorg/apache/b/a/a/i;
invoke-direct {v0, v1}, Lorg/apache/b/a/a/i;-><init>(Ljava/io/InputStream;)V
goto :goto_19
:cond_26
move-object v0, v1
goto :goto_19
.end method
.method public i()Ljava/io/Reader;
.registers 4
invoke-virtual {p0}, Lorg/apache/b/a/f/k;->j()Lorg/apache/b/a/b/a;
move-result-object v0
invoke-interface {v0}, Lorg/apache/b/a/b/a;->e()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_12
const-string v1, ""
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_22
:cond_12
const-string v0, "US-ASCII"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
:goto_18
invoke-virtual {p0}, Lorg/apache/b/a/f/k;->h()Ljava/io/InputStream;
move-result-object v1
new-instance v2, Ljava/io/InputStreamReader;
invoke-direct {v2, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
return-object v2
:cond_22
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
goto :goto_18
.end method
.method public j()Lorg/apache/b/a/b/a;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
invoke-interface {v0}, Lorg/apache/b/a/f/d;->e()Lorg/apache/b/a/b/a;
move-result-object v0
return-object v0
.end method
.method public k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
invoke-interface {v0}, Lorg/apache/b/a/f/d;->f()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public l()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
invoke-interface {v0}, Lorg/apache/b/a/f/d;->g()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public m()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
invoke-interface {v0}, Lorg/apache/b/a/f/d;->h()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public n()I
.registers 4
const/4 v2, -0x1
iget v0, p0, Lorg/apache/b/a/f/k;->q:I
if-eq v0, v2, :cond_9
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
if-nez v0, :cond_21
:cond_9
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No more tokens are available."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
iget-object v0, p0, Lorg/apache/b/a/f/k;->p:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
iget-object v0, p0, Lorg/apache/b/a/f/k;->p:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_43
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
:goto_21
:cond_21
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
if-eqz v0, :cond_55
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
invoke-interface {v0}, Lorg/apache/b/a/f/d;->i()Lorg/apache/b/a/f/d;
move-result-object v0
if-eqz v0, :cond_34
iget-object v1, p0, Lorg/apache/b/a/f/k;->p:Ljava/util/LinkedList;
invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
iput-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
:cond_34
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
invoke-interface {v0}, Lorg/apache/b/a/f/d;->a()I
move-result v0
iput v0, p0, Lorg/apache/b/a/f/k;->q:I
iget v0, p0, Lorg/apache/b/a/f/k;->q:I
if-eq v0, v2, :cond_11
iget v0, p0, Lorg/apache/b/a/f/k;->q:I
:goto_42
return v0
:cond_43
iget-object v0, p0, Lorg/apache/b/a/f/k;->p:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/f/d;
iput-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
iget-object v0, p0, Lorg/apache/b/a/f/k;->r:Lorg/apache/b/a/f/d;
iget v1, p0, Lorg/apache/b/a/f/k;->s:I
invoke-interface {v0, v1}, Lorg/apache/b/a/f/d;->b(I)V
goto :goto_21
:cond_55
iput v2, p0, Lorg/apache/b/a/f/k;->q:I
iget v0, p0, Lorg/apache/b/a/f/k;->q:I
goto :goto_42
.end method