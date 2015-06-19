.class final Lcom/bbm/util/by;
.super Lcom/bbm/util/b;
.source "HttpLoader.java"
.field private final a:Lcom/bbm/util/bo;
.field private final b:Ljava/net/URL;
.field private final c:Lcom/bbm/util/bx;
.method public constructor <init>(Lcom/bbm/util/bo;Ljava/net/URL;Lcom/bbm/util/bx;)V
.registers 4
invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V
iput-object p1, p0, Lcom/bbm/util/by;->a:Lcom/bbm/util/bo;
iput-object p2, p0, Lcom/bbm/util/by;->b:Ljava/net/URL;
iput-object p3, p0, Lcom/bbm/util/by;->c:Lcom/bbm/util/bx;
return-void
.end method
.method private varargs b()Lcom/bbm/d/fd;
.registers 4
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/bbm/util/by;->a:Lcom/bbm/util/bo;
iget-object v2, p0, Lcom/bbm/util/by;->b:Ljava/net/URL;
invoke-virtual {v1, v2}, Lcom/bbm/util/bo;->b(Ljava/net/URL;)[B
:try_end_8
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_c
move-result-object v1
:goto_9
if-nez v1, :cond_12
:goto_b
return-object v0
:catch_c
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
move-object v1, v0
goto :goto_9
:cond_12
new-instance v0, Lcom/bbm/d/fd;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {v0, v2, v1}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;[B)V
goto :goto_b
.end method
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/bbm/util/by;->b()Lcom/bbm/d/fd;
move-result-object v0
return-object v0
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/bbm/d/fd;
iget-object v0, p0, Lcom/bbm/util/by;->c:Lcom/bbm/util/bx;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/bbm/util/by;->c:Lcom/bbm/util/bx;
invoke-interface {v0, p1}, Lcom/bbm/util/bx;->a(Lcom/bbm/d/fd;)V
:cond_b
return-void
.end method