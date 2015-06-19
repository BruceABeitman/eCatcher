.class final Lcom/fasterxml/jackson/a/e/c;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"
.field public final a:I
.field public final b:I
.field public final c:[I
.field public final d:[Lcom/fasterxml/jackson/a/e/f;
.field public final e:[Lcom/fasterxml/jackson/a/e/b;
.field public final f:I
.field public final g:I
.field public final h:I
.method public constructor <init>(I[I[Lcom/fasterxml/jackson/a/e/f;)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Lcom/fasterxml/jackson/a/e/c;->a:I
iput p1, p0, Lcom/fasterxml/jackson/a/e/c;->b:I
iput-object p2, p0, Lcom/fasterxml/jackson/a/e/c;->c:[I
iput-object p3, p0, Lcom/fasterxml/jackson/a/e/c;->d:[Lcom/fasterxml/jackson/a/e/f;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/c;->e:[Lcom/fasterxml/jackson/a/e/b;
iput v1, p0, Lcom/fasterxml/jackson/a/e/c;->f:I
iput v1, p0, Lcom/fasterxml/jackson/a/e/c;->g:I
iput v1, p0, Lcom/fasterxml/jackson/a/e/c;->h:I
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/a/e/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget v0, p1, Lcom/fasterxml/jackson/a/e/a;->d:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/c;->a:I
iget v0, p1, Lcom/fasterxml/jackson/a/e/a;->f:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/c;->b:I
iget-object v0, p1, Lcom/fasterxml/jackson/a/e/a;->g:[I
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/c;->c:[I
iget-object v0, p1, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/c;->d:[Lcom/fasterxml/jackson/a/e/f;
iget-object v0, p1, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/c;->e:[Lcom/fasterxml/jackson/a/e/b;
iget v0, p1, Lcom/fasterxml/jackson/a/e/a;->j:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/c;->f:I
iget v0, p1, Lcom/fasterxml/jackson/a/e/a;->k:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/c;->g:I
iget v0, p1, Lcom/fasterxml/jackson/a/e/a;->e:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/c;->h:I
return-void
.end method