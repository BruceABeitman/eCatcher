.class abstract Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;
.super Ljava/lang/Object;
.source "TiltShiftFogAnimator.java"
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;
.field private final b:Lcom/instagram/cliffjumper/edit/common/ui/b;
.field private c:J
.field private d:J
.field private e:F
.field private f:F
.field private g:Z
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFF)V
.registers 9
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->b:Lcom/instagram/cliffjumper/edit/common/ui/b;
iput-wide p3, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->d:J
iput p5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->e:F
iput p6, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->f:F
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->c:J
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V
.registers 8
invoke-direct/range {p0 .. p6}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFF)V
return-void
.end method
.method final a()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->g:Z
return-void
.end method
.method public final a(J)V
.registers 8
iget-wide v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->c:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_a
iput-wide p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->c:J
:cond_a
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->e:F
iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->f:F
iget v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->e:F
sub-float/2addr v1, v2
iget-wide v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->c:J
sub-long v2, p1, v2
long-to-float v2, v2
mul-float/2addr v1, v2
iget-wide v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->d:J
long-to-float v2, v2
div-float/2addr v1, v2
add-float/2addr v0, v1
iget-wide v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->c:J
sub-long v1, p1, v1
iget-wide v3, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->d:J
cmp-long v1, v1, v3
if-gez v1, :cond_2a
iget-boolean v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->g:Z
if-eqz v1, :cond_3b
:cond_2a
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->f:F
:goto_2c
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c(F)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->b:Lcom/instagram/cliffjumper/edit/common/ui/b;
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V
return-void
:cond_3b
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->b()V
goto :goto_2c
.end method
.method protected abstract b()V
.end method