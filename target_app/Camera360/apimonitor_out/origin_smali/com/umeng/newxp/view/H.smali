.class Lcom/umeng/newxp/view/h;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/f;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/f;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->d(Lcom/umeng/newxp/view/f;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->d(Lcom/umeng/newxp/view/f;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_11
    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    :cond_1e
    :goto_1e
    return-void

    :pswitch_1f
    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->e(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/a$a;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    iget-object v1, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v1}, Lcom/umeng/newxp/view/f;->e(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;Lcom/umeng/newxp/controller/a$a;)V

    goto :goto_1e

    :pswitch_33
    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->f(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/a$a;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    iget-object v1, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v1}, Lcom/umeng/newxp/view/f;->f(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;Lcom/umeng/newxp/controller/a$a;)V

    goto :goto_1e

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_33
    .end packed-switch
.end method
