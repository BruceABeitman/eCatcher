.class final Lcom/bbm/ui/widget/m;
.super Ljava/lang/Object;
.source "WidgetMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/widget/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/widget/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/widget/m;->a:Lcom/bbm/ui/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/widget/m;->a:Lcom/bbm/ui/widget/l;

    iget-object v0, v0, Lcom/bbm/ui/widget/l;->a:Lcom/bbm/ui/widget/k;

    iget-object v0, v0, Lcom/bbm/ui/widget/k;->b:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
