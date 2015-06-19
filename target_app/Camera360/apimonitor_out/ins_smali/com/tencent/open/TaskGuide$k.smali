.class  Lcom/tencent/open/TaskGuide$k;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/tencent/open/TaskGuide;
.method private constructor <init>(Lcom/tencent/open/TaskGuide;)V
.registers 2
iput-object p1, p0, Lcom/tencent/open/TaskGuide$k;->a:Lcom/tencent/open/TaskGuide;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$4;)V
.registers 3
invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide$k;-><init>(Lcom/tencent/open/TaskGuide;)V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/tencent/open/TaskGuide$k;->a:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->q(Lcom/tencent/open/TaskGuide;)V
return-void
.end method