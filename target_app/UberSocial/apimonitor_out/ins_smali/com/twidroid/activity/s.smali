.class  Lcom/twidroid/activity/s;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.field private final b:Ljava/lang/Exception;
.field private final c:Z
.field private d:Z
.method public constructor <init>(Lcom/twidroid/activity/SendTweet;Ljava/lang/Exception;ZZ)V
.registers 6
iput-object p1, p0, Lcom/twidroid/activity/s;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/activity/s;->d:Z
iput-object p2, p0, Lcom/twidroid/activity/s;->b:Ljava/lang/Exception;
iput-boolean p3, p0, Lcom/twidroid/activity/s;->c:Z
iput-boolean p4, p0, Lcom/twidroid/activity/s;->d:Z
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/s;)Ljava/lang/Exception;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/s;->b:Ljava/lang/Exception;
return-object v0
.end method
.method public a()Ljava/lang/Exception;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/s;->b:Ljava/lang/Exception;
return-object v0
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/activity/s;->c:Z
return v0
.end method
.method public c()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/activity/s;->d:Z
return v0
.end method