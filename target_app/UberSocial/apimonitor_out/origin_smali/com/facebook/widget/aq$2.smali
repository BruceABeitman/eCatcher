.class Lcom/facebook/widget/aq$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/aq;->A()Ljava/util/Timer;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/aq;


# direct methods
.method constructor <init>(Lcom/facebook/widget/aq;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/aq$2;->a:Lcom/facebook/widget/aq;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/aq$2;->a:Lcom/facebook/widget/aq;

    invoke-static {v0}, Lcom/facebook/widget/aq;->a(Lcom/facebook/widget/aq;)V

    return-void
.end method
