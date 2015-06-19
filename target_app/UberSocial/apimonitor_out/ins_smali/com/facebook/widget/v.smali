.class  Lcom/facebook/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/content/Context;
.field private b:Ljava/net/URL;
.field private c:Lcom/facebook/widget/w;
.field private d:Z
.field private e:Ljava/lang/Object;
.method constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "imageUrl"
invoke-static {p2, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
iput-object p1, p0, Lcom/facebook/widget/v;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/widget/v;->b:Ljava/net/URL;
return-void
.end method
.method static synthetic a(Lcom/facebook/widget/v;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/v;->a:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/facebook/widget/v;)Ljava/net/URL;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/v;->b:Ljava/net/URL;
return-object v0
.end method
.method static synthetic c(Lcom/facebook/widget/v;)Lcom/facebook/widget/w;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/v;->c:Lcom/facebook/widget/w;
return-object v0
.end method
.method static synthetic d(Lcom/facebook/widget/v;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/widget/v;->d:Z
return v0
.end method
.method static synthetic e(Lcom/facebook/widget/v;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/v;->e:Ljava/lang/Object;
return-object v0
.end method
.method  a()Lcom/facebook/widget/u;
.registers 3
new-instance v0, Lcom/facebook/widget/u;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/facebook/widget/u;-><init>(Lcom/facebook/widget/v;Lcom/facebook/widget/u$1;)V
return-object v0
.end method
.method  a(Lcom/facebook/widget/w;)Lcom/facebook/widget/v;
.registers 2
iput-object p1, p0, Lcom/facebook/widget/v;->c:Lcom/facebook/widget/w;
return-object p0
.end method
.method  a(Ljava/lang/Object;)Lcom/facebook/widget/v;
.registers 2
iput-object p1, p0, Lcom/facebook/widget/v;->e:Ljava/lang/Object;
return-object p0
.end method
.method  a(Z)Lcom/facebook/widget/v;
.registers 2
iput-boolean p1, p0, Lcom/facebook/widget/v;->d:Z
return-object p0
.end method