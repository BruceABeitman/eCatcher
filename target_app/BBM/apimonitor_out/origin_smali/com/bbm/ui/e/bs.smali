.class final Lcom/bbm/ui/e/bs;
.super Ljava/lang/Object;
.source "ReinviteHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/bp;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/bp;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/bs;->a:Lcom/bbm/ui/e/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Reject Clicked"

    const-class v1, Lcom/bbm/ui/e/bp;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/e/bs;->a:Lcom/bbm/ui/e/bp;

    iget-object v1, v0, Lcom/bbm/ui/e/bp;->a:Lcom/bbm/d/a;

    iget-object v0, v0, Lcom/bbm/ui/e/bp;->b:Lcom/bbm/d/fg;

    iget-object v0, v0, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/d/z;->c(Ljava/lang/String;)Lcom/bbm/d/bj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    return-void
.end method
