.class  Lcom/facebook/bd;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final a:J = 0x6a59fe98cd935affL
.field private final b:Ljava/lang/String;
.field private final c:Lcom/facebook/bk;
.field private final d:Lcom/facebook/a;
.field private final e:Ljava/util/Date;
.field private final f:Z
.field private final g:Lcom/facebook/ax;
.method constructor <init>(Ljava/lang/String;Lcom/facebook/bk;Lcom/facebook/a;Ljava/util/Date;ZLcom/facebook/ax;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/bd;->b:Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/bd;->c:Lcom/facebook/bk;
iput-object p3, p0, Lcom/facebook/bd;->d:Lcom/facebook/a;
iput-object p4, p0, Lcom/facebook/bd;->e:Ljava/util/Date;
iput-boolean p5, p0, Lcom/facebook/bd;->f:Z
iput-object p6, p0, Lcom/facebook/bd;->g:Lcom/facebook/ax;
return-void
.end method
.method private a()Ljava/lang/Object;
.registers 9
new-instance v0, Lcom/facebook/aw;
iget-object v1, p0, Lcom/facebook/bd;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/bd;->c:Lcom/facebook/bk;
iget-object v3, p0, Lcom/facebook/bd;->d:Lcom/facebook/a;
iget-object v4, p0, Lcom/facebook/bd;->e:Ljava/util/Date;
iget-boolean v5, p0, Lcom/facebook/bd;->f:Z
iget-object v6, p0, Lcom/facebook/bd;->g:Lcom/facebook/ax;
const/4 v7, 0x0
invoke-direct/range {v0 .. v7}, Lcom/facebook/aw;-><init>(Ljava/lang/String;Lcom/facebook/bk;Lcom/facebook/a;Ljava/util/Date;ZLcom/facebook/ax;Lcom/facebook/aw$1;)V
return-object v0
.end method