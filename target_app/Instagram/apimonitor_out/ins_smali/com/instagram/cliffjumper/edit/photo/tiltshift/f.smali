.class final Lcom/instagram/cliffjumper/edit/photo/tiltshift/f;
.super Ljava/lang/Object;
.source "TiltShiftFogAnimator.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/cliffjumper/edit/common/ui/b;
.field final synthetic b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/f;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;
iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/f;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/b;
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b(Lcom/instagram/cliffjumper/edit/common/ui/b;)V
return-void
.end method