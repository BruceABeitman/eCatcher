.class Lcom/facebook/widget/m$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/m;->a(Lcom/facebook/ai;ZJ)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/aq;

.field final synthetic b:Lcom/facebook/widget/m;


# direct methods
.method constructor <init>(Lcom/facebook/widget/m;Lcom/facebook/aq;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/widget/m$3;->b:Lcom/facebook/widget/m;

    iput-object p2, p0, Lcom/facebook/widget/m$3;->a:Lcom/facebook/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/m$3;->a:Lcom/facebook/aq;

    invoke-static {v0}, Lcom/facebook/ai;->c(Lcom/facebook/aq;)Lcom/facebook/ap;

    return-void
.end method
