.class  Lcom/facebook/ay;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final a:J = -0x79685fde6eced24fL
.field private final b:Lcom/facebook/bj;
.field private final c:I
.field private d:Z
.field private final e:Ljava/util/List;
.field private final f:Ljava/lang/String;
.field private final g:Ljava/lang/String;
.field private final h:Ljava/lang/String;
.method private constructor <init>(Lcom/facebook/bj;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/ay;->b:Lcom/facebook/bj;
iput p2, p0, Lcom/facebook/ay;->c:I
iput-object p3, p0, Lcom/facebook/ay;->e:Ljava/util/List;
iput-object p4, p0, Lcom/facebook/ay;->f:Ljava/lang/String;
iput-boolean p5, p0, Lcom/facebook/ay;->d:Z
iput-object p6, p0, Lcom/facebook/ay;->g:Ljava/lang/String;
iput-object p7, p0, Lcom/facebook/ay;->h:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/bj;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/aw$1;)V
.registers 9
invoke-direct/range {p0 .. p7}, Lcom/facebook/ay;-><init>(Lcom/facebook/bj;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private a()Ljava/lang/Object;
.registers 10
new-instance v0, Lcom/facebook/ax;
iget-object v1, p0, Lcom/facebook/ay;->b:Lcom/facebook/bj;
iget v2, p0, Lcom/facebook/ay;->c:I
iget-object v3, p0, Lcom/facebook/ay;->e:Ljava/util/List;
iget-object v4, p0, Lcom/facebook/ay;->f:Ljava/lang/String;
iget-boolean v5, p0, Lcom/facebook/ay;->d:Z
iget-object v6, p0, Lcom/facebook/ay;->g:Ljava/lang/String;
iget-object v7, p0, Lcom/facebook/ay;->h:Ljava/lang/String;
const/4 v8, 0x0
invoke-direct/range {v0 .. v8}, Lcom/facebook/ax;-><init>(Lcom/facebook/bj;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/aw$1;)V
return-object v0
.end method