.class final Lcom/bbm/ui/e/aa;
.super Ljava/lang/Object;
.source "FileTransferHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/s;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/s;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/aa;->a:Lcom/bbm/ui/e/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Cancel Clicked"

    const-class v1, Lcom/bbm/ui/e/s;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/e/aa;->a:Lcom/bbm/ui/e/s;

    invoke-static {v0}, Lcom/bbm/ui/e/s;->i(Lcom/bbm/ui/e/s;)Lcom/bbm/ui/e/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/e/aa;->a:Lcom/bbm/ui/e/s;

    invoke-static {v1}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/ui/e/s;)Lcom/bbm/d/fg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bbm/ui/e/bh;->c(Lcom/bbm/d/fg;)V

    return-void
.end method
