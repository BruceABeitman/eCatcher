.class final Lcom/facebook/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/facebook/SessionDefaultAudience;
.field private b:Ljava/util/List;
.field private c:Lcom/facebook/internal/SessionAuthorizationType;
.field private d:Lcom/facebook/widget/e;
.field private e:Lcom/facebook/SessionLoginBehavior;
.field private f:Lcom/facebook/ae;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/facebook/SessionDefaultAudience;->c:Lcom/facebook/SessionDefaultAudience;
iput-object v0, p0, Lcom/facebook/widget/c;->a:Lcom/facebook/SessionDefaultAudience;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/internal/SessionAuthorizationType;
sget-object v0, Lcom/facebook/SessionLoginBehavior;->a:Lcom/facebook/SessionLoginBehavior;
iput-object v0, p0, Lcom/facebook/widget/c;->e:Lcom/facebook/SessionLoginBehavior;
return-void
.end method
.method static synthetic a(Lcom/facebook/widget/c;)Lcom/facebook/SessionDefaultAudience;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->a:Lcom/facebook/SessionDefaultAudience;
return-object v0
.end method
.method static synthetic b(Lcom/facebook/widget/c;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic c(Lcom/facebook/widget/c;)Lcom/facebook/SessionLoginBehavior;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->e:Lcom/facebook/SessionLoginBehavior;
return-object v0
.end method
.method static synthetic d(Lcom/facebook/widget/c;)Lcom/facebook/internal/SessionAuthorizationType;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/internal/SessionAuthorizationType;
return-object v0
.end method
.method static synthetic e(Lcom/facebook/widget/c;)Lcom/facebook/ae;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->f:Lcom/facebook/ae;
return-object v0
.end method
.method static synthetic f(Lcom/facebook/widget/c;)Lcom/facebook/widget/e;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->d:Lcom/facebook/widget/e;
return-object v0
.end method