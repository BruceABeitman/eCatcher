.class final Lcom/bbm/ui/c/el;
.super Ljava/lang/Object;
.source "OwnProfileDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/ej;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ej;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/el;->a:Lcom/bbm/ui/c/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "mOnClickListener onClick"

    const-class v1, Lcom/bbm/ui/c/ej;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/el;->a:Lcom/bbm/ui/c/ej;

    invoke-virtual {v0}, Lcom/bbm/ui/c/ej;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/el;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->c(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/c/ev;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bbm/ui/c/el;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->c(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/c/ev;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/ui/c/ev;->a()V

    :cond_22
    return-void
.end method
