.class final Lcom/bbm/ui/c/dw;
.super Lcom/bbm/ui/d/a;
.source "MyChannelsFragment.java"
.field final synthetic a:Lcom/bbm/d/ak;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/bbm/ui/c/du;
.method constructor <init>(Lcom/bbm/ui/c/du;Lcom/bbm/d/ak;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/c/dw;->c:Lcom/bbm/ui/c/du;
iput-object p2, p0, Lcom/bbm/ui/c/dw;->a:Lcom/bbm/d/ak;
iput-object p3, p0, Lcom/bbm/ui/c/dw;->b:Ljava/lang/String;
invoke-direct {p0}, Lcom/bbm/ui/d/a;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/c/dw;->a:Lcom/bbm/d/ak;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public final a(I)V
.registers 4
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/bbm/ui/c/dw;->b:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
return-void
.end method