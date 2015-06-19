.class public final Lcom/facebook/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/content/Context;
.field private b:Ljava/net/URI;
.field private c:Lcom/facebook/internal/r;
.field private d:Z
.field private e:Ljava/lang/Object;
.method public constructor <init>(Landroid/content/Context;Ljava/net/URI;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "imageUrl"
invoke-static {p2, v0}, Lcom/facebook/internal/ak;->a(Ljava/lang/Object;Ljava/lang/String;)V
iput-object p1, p0, Lcom/facebook/internal/q;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/internal/q;->b:Ljava/net/URI;
return-void
.end method
.method static synthetic a(Lcom/facebook/internal/q;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/q;->a:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/facebook/internal/q;)Ljava/net/URI;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/q;->b:Ljava/net/URI;
return-object v0
.end method
.method static synthetic c(Lcom/facebook/internal/q;)Lcom/facebook/internal/r;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/q;->c:Lcom/facebook/internal/r;
return-object v0
.end method
.method static synthetic d(Lcom/facebook/internal/q;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/internal/q;->d:Z
return v0
.end method
.method static synthetic e(Lcom/facebook/internal/q;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/q;->e:Ljava/lang/Object;
return-object v0
.end method
.method public final a()Lcom/facebook/internal/p;
.registers 3
new-instance v0, Lcom/facebook/internal/p;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/facebook/internal/p;-><init>(Lcom/facebook/internal/q;B)V
return-object v0
.end method
.method public final a(Lcom/facebook/internal/r;)Lcom/facebook/internal/q;
.registers 2
iput-object p1, p0, Lcom/facebook/internal/q;->c:Lcom/facebook/internal/r;
return-object p0
.end method
.method public final a(Ljava/lang/Object;)Lcom/facebook/internal/q;
.registers 2
iput-object p1, p0, Lcom/facebook/internal/q;->e:Ljava/lang/Object;
return-object p0
.end method
.method public final a(Z)Lcom/facebook/internal/q;
.registers 2
iput-boolean p1, p0, Lcom/facebook/internal/q;->d:Z
return-object p0
.end method