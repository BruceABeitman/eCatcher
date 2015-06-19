.class final Lcom/bbm/ui/e/v;
.super Ljava/lang/Object;
.source "FileTransferHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/s;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/s;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/v;->a:Lcom/bbm/ui/e/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 4

    const-string v0, "onLongClick"

    const-class v1, Lcom/bbm/ui/e/s;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/e/v;->a:Lcom/bbm/ui/e/s;

    invoke-static {v0}, Lcom/bbm/ui/e/s;->f(Lcom/bbm/ui/e/s;)Lcom/bbm/ui/e/bi;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/e/v;->a:Lcom/bbm/ui/e/s;

    invoke-static {v1}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/ui/e/s;)Lcom/bbm/d/fg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bbm/ui/e/bi;->a(Lcom/bbm/d/fg;)V

    const/4 v0, 0x1

    return v0
.end method
