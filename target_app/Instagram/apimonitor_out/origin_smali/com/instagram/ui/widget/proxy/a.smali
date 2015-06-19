.class final Lcom/instagram/ui/widget/proxy/a;
.super Ljava/lang/Object;
.source "ProxyFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;


# direct methods
.method constructor <init>(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/ui/widget/proxy/a;->a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/ui/widget/proxy/a;->a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;

    invoke-static {v0}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->a(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/instagram/ui/widget/proxy/a;->a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;

    invoke-static {v0}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->b(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/instagram/ui/widget/proxy/a;->a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;

    invoke-static {v0}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->c(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/instagram/ui/widget/proxy/a;->a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;

    invoke-static {v0}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->b(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_33
    return-void
.end method
