.class final Lcom/bbm/ui/e/ab;
.super Ljava/lang/Object;
.source "FileTransferHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/s;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/s;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/ab;->a:Lcom/bbm/ui/e/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/e/ab;->a:Lcom/bbm/ui/e/s;

    invoke-static {v0}, Lcom/bbm/ui/e/s;->b(Lcom/bbm/ui/e/s;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/e/ab;->a:Lcom/bbm/ui/e/s;

    invoke-static {v1}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/ui/e/s;)Lcom/bbm/d/fg;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/fg;->m:Ljava/lang/String;

    new-instance v2, Lcom/bbm/d/cl;

    invoke-direct {v2, v1}, Lcom/bbm/d/cl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    return-void
.end method
