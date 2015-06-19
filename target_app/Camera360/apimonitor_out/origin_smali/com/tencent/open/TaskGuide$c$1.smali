.class Lcom/tencent/open/TaskGuide$c$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/TaskGuide$c;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/TaskGuide$c;


# direct methods
.method constructor <init>(Lcom/tencent/open/TaskGuide$c;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/open/TaskGuide$c$1;->a:Lcom/tencent/open/TaskGuide$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/open/TaskGuide$c$1;->a:Lcom/tencent/open/TaskGuide$c;

    iget-object v0, v0, Lcom/tencent/open/TaskGuide$c;->a:Lcom/tencent/open/TaskGuide;

    const/4 v1, 0x2

    sget-object v2, Lcom/tencent/open/TaskGuide$d;->a:Lcom/tencent/open/TaskGuide$d;

    invoke-static {v0, v1, v2}, Lcom/tencent/open/TaskGuide;->a(Lcom/tencent/open/TaskGuide;ILcom/tencent/open/TaskGuide$d;)V

    return-void
.end method
