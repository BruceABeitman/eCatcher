.class public Lcom/instagram/creation/b/a/a;
.super Ljava/lang/Object;
.source "ClipInfo.java"
.field private a:Ljava/lang/String;
.field private b:J
.field private c:I
.field private d:I
.field private e:F
.field private f:I
.field private g:I
.field private h:I
.field private i:I
.field private j:F
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/instagram/creation/b/a/a;->b:J
const/high16 v0, 0x3f00
iput v0, p0, Lcom/instagram/creation/b/a/a;->e:F
return-void
.end method
.method public final a(F)Lcom/instagram/creation/b/a/a;
.registers 2
iput p1, p0, Lcom/instagram/creation/b/a/a;->e:F
return-object p0
.end method
.method public final a(I)Lcom/instagram/creation/b/a/a;
.registers 2
iput p1, p0, Lcom/instagram/creation/b/a/a;->c:I
return-object p0
.end method
.method public final a(J)Lcom/instagram/creation/b/a/a;
.registers 3
iput-wide p1, p0, Lcom/instagram/creation/b/a/a;->b:J
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/creation/b/a/a;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/a;->a:Ljava/lang/String;
return-object p0
.end method
.method public final a(II)V
.registers 5
iput p1, p0, Lcom/instagram/creation/b/a/a;->h:I
iput p2, p0, Lcom/instagram/creation/b/a/a;->i:I
int-to-float v0, p1
int-to-float v1, p2
div-float/2addr v0, v1
iput v0, p0, Lcom/instagram/creation/b/a/a;->j:F
return-void
.end method
.method public final a()Z
.registers 3
iget v0, p0, Lcom/instagram/creation/b/a/a;->h:I
iget v1, p0, Lcom/instagram/creation/b/a/a;->i:I
if-ge v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final b(I)Lcom/instagram/creation/b/a/a;
.registers 2
iput p1, p0, Lcom/instagram/creation/b/a/a;->d:I
return-object p0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/a;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b(II)V
.registers 5
iget v0, p0, Lcom/instagram/creation/b/a/a;->d:I
const/4 v1, 0x1
if-eq v0, v1, :cond_a
iget v0, p0, Lcom/instagram/creation/b/a/a;->d:I
const/4 v1, 0x3
if-ne v0, v1, :cond_e
:cond_a
invoke-virtual {p0, p2, p1}, Lcom/instagram/creation/b/a/a;->a(II)V
:goto_d
return-void
:cond_e
invoke-virtual {p0, p1, p2}, Lcom/instagram/creation/b/a/a;->a(II)V
goto :goto_d
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/a;->c:I
return v0
.end method
.method public final c(I)Lcom/instagram/creation/b/a/a;
.registers 2
iput p1, p0, Lcom/instagram/creation/b/a/a;->f:I
return-object p0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/a;->d:I
return v0
.end method
.method public final d(I)Lcom/instagram/creation/b/a/a;
.registers 2
iput p1, p0, Lcom/instagram/creation/b/a/a;->g:I
return-object p0
.end method
.method public final e()F
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/a;->e:F
return v0
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/a;->f:I
return v0
.end method
.method public final g()I
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/a;->g:I
return v0
.end method
.method public final h()J
.registers 3
iget-wide v0, p0, Lcom/instagram/creation/b/a/a;->b:J
return-wide v0
.end method
.method public final i()I
.registers 3
iget v0, p0, Lcom/instagram/creation/b/a/a;->g:I
iget v1, p0, Lcom/instagram/creation/b/a/a;->f:I
sub-int/2addr v0, v1
return v0
.end method
.method public final j()F
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/a;->j:F
return v0
.end method
.method public final k()I
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/a;->h:I
return v0
.end method
.method public final l()I
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/a;->i:I
return v0
.end method