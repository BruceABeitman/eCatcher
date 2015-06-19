.class  Lcom/facebook/g;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final a:J = 0x1L
.field private final transient b:Lcom/facebook/p;
.field private c:Lcom/facebook/bj;
.field private d:I
.field private e:Z
.field private f:Ljava/util/List;
.field private g:Lcom/facebook/bi;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.method constructor <init>(Lcom/facebook/bj;IZLjava/util/List;Lcom/facebook/bi;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/p;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/g;->e:Z
iput-object p1, p0, Lcom/facebook/g;->c:Lcom/facebook/bj;
iput p2, p0, Lcom/facebook/g;->d:I
iput-boolean p3, p0, Lcom/facebook/g;->e:Z
iput-object p4, p0, Lcom/facebook/g;->f:Ljava/util/List;
iput-object p5, p0, Lcom/facebook/g;->g:Lcom/facebook/bi;
iput-object p6, p0, Lcom/facebook/g;->h:Ljava/lang/String;
iput-object p7, p0, Lcom/facebook/g;->i:Ljava/lang/String;
iput-object p8, p0, Lcom/facebook/g;->b:Lcom/facebook/p;
return-void
.end method
.method  a()Lcom/facebook/p;
.registers 2
iget-object v0, p0, Lcom/facebook/g;->b:Lcom/facebook/p;
return-object v0
.end method
.method  a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/facebook/g;->f:Ljava/util/List;
return-void
.end method
.method  a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/g;->e:Z
return-void
.end method
.method  b()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/g;->f:Ljava/util/List;
return-object v0
.end method
.method  c()Lcom/facebook/bj;
.registers 2
iget-object v0, p0, Lcom/facebook/g;->c:Lcom/facebook/bj;
return-object v0
.end method
.method  d()I
.registers 2
iget v0, p0, Lcom/facebook/g;->d:I
return v0
.end method
.method  e()Lcom/facebook/bi;
.registers 2
iget-object v0, p0, Lcom/facebook/g;->g:Lcom/facebook/bi;
return-object v0
.end method
.method  f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/g;->h:Ljava/lang/String;
return-object v0
.end method
.method  g()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/g;->e:Z
return v0
.end method
.method  h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/g;->i:Ljava/lang/String;
return-object v0
.end method
.method  i()Z
.registers 2
iget-object v0, p0, Lcom/facebook/g;->i:Ljava/lang/String;
if-eqz v0, :cond_a
iget-boolean v0, p0, Lcom/facebook/g;->e:Z
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method