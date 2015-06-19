.class public final Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;
.super Lcom/instagram/cliffjumper/edit/common/ui/c;
.source "TiltShiftInfo.java"
.field private a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;
.field private b:Landroid/content/res/Resources;
.method public constructor <init>(Landroid/content/res/Resources;)V
.registers 4
sget v0, Lcom/facebook/az;->tiltshift:I
invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
sget v1, Lcom/facebook/au;->tool_tilt:I
invoke-direct {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/c;-><init>(Ljava/lang/String;I)V
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;->b:Landroid/content/res/Resources;
return-void
.end method
.method public final d()Lcom/instagram/cliffjumper/edit/common/ui/a;
.registers 3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;
if-nez v0, :cond_d
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;->b:Landroid/content/res/Resources;
invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;-><init>(Landroid/content/res/Resources;)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;
:cond_d
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;
return-object v0
.end method