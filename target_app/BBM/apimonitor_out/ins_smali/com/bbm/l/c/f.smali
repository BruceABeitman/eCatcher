.class final Lcom/bbm/l/c/f;
.super Lcom/bbm/l/c/h;
.source "AsyncStickerPackListFetcher.java"
.field final synthetic a:Lcom/bbm/util/bo;
.field final synthetic b:Lcom/bbm/l/c/i;
.method constructor <init>(Lcom/bbm/util/bo;Lcom/bbm/l/c/i;)V
.registers 4
iput-object p1, p0, Lcom/bbm/l/c/f;->a:Lcom/bbm/util/bo;
iput-object p2, p0, Lcom/bbm/l/c/f;->b:Lcom/bbm/l/c/i;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/l/c/h;-><init>(B)V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 4
check-cast p1, Ljava/net/URL;
iget-object v0, p0, Lcom/bbm/l/c/f;->a:Lcom/bbm/util/bo;
iget-object v1, p0, Lcom/bbm/l/c/f;->b:Lcom/bbm/l/c/i;
invoke-static {p1, v0, v1}, Lcom/bbm/l/c/e;->a(Ljava/net/URL;Lcom/bbm/util/bo;Lcom/bbm/l/c/i;)V
return-void
.end method