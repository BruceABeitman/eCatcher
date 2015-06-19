.class final Lcom/instagram/filterkit/b/d;
.super Ljava/lang/Object;
.source "IgGLProgram.java"
.field final synthetic a:Lcom/instagram/filterkit/b/b;
.field private b:I
.field private c:Lcom/instagram/filterkit/b/c;
.method constructor <init>(Lcom/instagram/filterkit/b/b;ILcom/instagram/filterkit/b/c;)V
.registers 4
iput-object p1, p0, Lcom/instagram/filterkit/b/d;->a:Lcom/instagram/filterkit/b/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lcom/instagram/filterkit/b/d;->b:I
iput-object p3, p0, Lcom/instagram/filterkit/b/d;->c:Lcom/instagram/filterkit/b/c;
return-void
.end method
.method static synthetic a(Lcom/instagram/filterkit/b/d;)I
.registers 2
iget v0, p0, Lcom/instagram/filterkit/b/d;->b:I
return v0
.end method
.method static synthetic b(Lcom/instagram/filterkit/b/d;)Lcom/instagram/filterkit/b/c;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/b/d;->c:Lcom/instagram/filterkit/b/c;
return-object v0
.end method