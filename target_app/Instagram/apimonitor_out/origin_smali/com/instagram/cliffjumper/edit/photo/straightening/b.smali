.class final Lcom/instagram/cliffjumper/edit/photo/straightening/b;
.super Ljava/lang/Object;
.source "StraighteningController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/b;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/b;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->v_()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/b;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/b;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;I)I

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/b;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    return-void
.end method
