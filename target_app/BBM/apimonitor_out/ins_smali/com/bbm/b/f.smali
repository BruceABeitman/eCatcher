.class final Lcom/bbm/b/f;
.super Ljava/lang/Object;
.source "AdUtils.java"
.implements Lcom/bbm/ui/b/f;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/bbm/b/aj;
.field final synthetic d:Landroid/app/Activity;
.field final synthetic e:Lcom/bbm/ui/b/a;
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Landroid/app/Activity;Lcom/bbm/ui/b/a;)V
.registers 6
iput-object p1, p0, Lcom/bbm/b/f;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/bbm/b/f;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/b/f;->c:Lcom/bbm/b/aj;
iput-object p4, p0, Lcom/bbm/b/f;->d:Landroid/app/Activity;
iput-object p5, p0, Lcom/bbm/b/f;->e:Lcom/bbm/ui/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/bbm/b/f;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/b/f;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/b/f;->c:Lcom/bbm/b/aj;
iget-object v3, p0, Lcom/bbm/b/f;->d:Landroid/app/Activity;
invoke-static {v0, v1, v2, v3}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Landroid/app/Activity;)V
iget-object v0, p0, Lcom/bbm/b/f;->e:Lcom/bbm/ui/b/a;
invoke-virtual {v0}, Lcom/bbm/ui/b/a;->dismiss()V
return-void
.end method