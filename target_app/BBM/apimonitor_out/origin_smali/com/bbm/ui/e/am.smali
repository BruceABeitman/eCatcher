.class final Lcom/bbm/ui/e/am;
.super Ljava/lang/Object;
.source "InviteHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/ak;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/ak;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/am;->a:Lcom/bbm/ui/e/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "Reject Clicked"

    const-class v1, Lcom/bbm/ui/e/ak;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/e/am;->a:Lcom/bbm/ui/e/ak;

    iget-object v1, v0, Lcom/bbm/ui/e/ak;->a:Lcom/bbm/d/a;

    iget-object v0, v0, Lcom/bbm/ui/e/ak;->b:Lcom/bbm/d/fg;

    iget-object v0, v0, Lcom/bbm/d/fg;->d:Ljava/lang/String;

    sget-object v2, Lcom/bbm/d/bf;->b:Lcom/bbm/d/bf;

    invoke-static {v0, v2}, Lcom/bbm/d/z;->a(Ljava/lang/String;Lcom/bbm/d/bf;)Lcom/bbm/d/be;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    return-void
.end method
