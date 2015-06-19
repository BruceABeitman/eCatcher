.class public Lcom/flurry/sdk/df;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:J
.field private c:J
.field private d:J
.field private e:Ljava/util/Map;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:I
.field private i:Ljava/lang/String;
.field private j:Landroid/location/Location;
.field private k:I
.field private l:B
.field private m:Ljava/lang/Long;
.field private n:Ljava/util/Map;
.field private o:Ljava/util/List;
.field private p:Z
.field private q:I
.field private r:Ljava/util/List;
.method public constructor <init>()V
.registers 5
const-wide/16 v2, -0x1
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v2, p0, Lcom/flurry/sdk/df;->b:J
iput-wide v2, p0, Lcom/flurry/sdk/df;->c:J
iput-wide v2, p0, Lcom/flurry/sdk/df;->d:J
iput v1, p0, Lcom/flurry/sdk/df;->h:I
iput v1, p0, Lcom/flurry/sdk/df;->k:I
iput-byte v1, p0, Lcom/flurry/sdk/df;->l:B
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/flurry/sdk/df;->p:Z
iput v1, p0, Lcom/flurry/sdk/df;->q:I
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/df;->a:Ljava/lang/String;
return-object v0
.end method
.method public a(B)V
.registers 2
iput-byte p1, p0, Lcom/flurry/sdk/df;->l:B
return-void
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/flurry/sdk/df;->h:I
return-void
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/flurry/sdk/df;->b:J
return-void
.end method
.method public a(Landroid/location/Location;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/df;->j:Landroid/location/Location;
return-void
.end method
.method public a(Ljava/lang/Long;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/df;->m:Ljava/lang/Long;
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/df;->a:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/df;->o:Ljava/util/List;
return-void
.end method
.method public a(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/df;->n:Ljava/util/Map;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/flurry/sdk/df;->p:Z
return-void
.end method
.method public b()J
.registers 3
iget-wide v0, p0, Lcom/flurry/sdk/df;->b:J
return-wide v0
.end method
.method public b(I)V
.registers 2
iput p1, p0, Lcom/flurry/sdk/df;->k:I
return-void
.end method
.method public b(J)V
.registers 3
iput-wide p1, p0, Lcom/flurry/sdk/df;->c:J
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/df;->f:Ljava/lang/String;
return-void
.end method
.method public b(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/df;->r:Ljava/util/List;
return-void
.end method
.method public c()J
.registers 3
iget-wide v0, p0, Lcom/flurry/sdk/df;->c:J
return-wide v0
.end method
.method public c(I)V
.registers 2
iput p1, p0, Lcom/flurry/sdk/df;->q:I
return-void
.end method
.method public c(J)V
.registers 3
iput-wide p1, p0, Lcom/flurry/sdk/df;->d:J
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/df;->g:Ljava/lang/String;
return-void
.end method
.method public d()J
.registers 3
iget-wide v0, p0, Lcom/flurry/sdk/df;->d:J
return-wide v0
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/df;->i:Ljava/lang/String;
return-void
.end method
.method public e()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/df;->e:Ljava/util/Map;
return-object v0
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/df;->f:Ljava/lang/String;
return-object v0
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/df;->g:Ljava/lang/String;
return-object v0
.end method
.method public h()I
.registers 2
iget v0, p0, Lcom/flurry/sdk/df;->h:I
return v0
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/df;->i:Ljava/lang/String;
return-object v0
.end method
.method public j()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/df;->j:Landroid/location/Location;
return-object v0
.end method
.method public k()I
.registers 2
iget v0, p0, Lcom/flurry/sdk/df;->k:I
return v0
.end method
.method public l()B
.registers 2
iget-byte v0, p0, Lcom/flurry/sdk/df;->l:B
return v0
.end method
.method public m()Ljava/lang/Long;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/df;->m:Ljava/lang/Long;
return-object v0
.end method
.method public n()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/df;->n:Ljava/util/Map;
return-object v0
.end method
.method public o()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/df;->o:Ljava/util/List;
return-object v0
.end method
.method public p()Z
.registers 2
iget-boolean v0, p0, Lcom/flurry/sdk/df;->p:Z
return v0
.end method
.method public q()I
.registers 2
iget v0, p0, Lcom/flurry/sdk/df;->q:I
return v0
.end method
.method public r()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/df;->r:Ljava/util/List;
return-object v0
.end method