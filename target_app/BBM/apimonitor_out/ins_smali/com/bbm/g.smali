.class final Lcom/bbm/g;
.super Lcom/bbm/j/a;
.source "BbmService.java"
.field final synthetic a:Lcom/bbm/BbmService;
.method constructor <init>(Lcom/bbm/BbmService;)V
.registers 2
iput-object p1, p0, Lcom/bbm/g;->a:Lcom/bbm/BbmService;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/bbm/g;->a:Lcom/bbm/BbmService;
invoke-static {v0}, Lcom/bbm/BbmService;->a(Lcom/bbm/BbmService;)Lcom/bbm/f/ad;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/f/ad;->g()Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/ag;
return-object v0
.end method