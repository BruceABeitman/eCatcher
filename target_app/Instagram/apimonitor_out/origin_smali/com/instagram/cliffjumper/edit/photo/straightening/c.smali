.class final Lcom/instagram/cliffjumper/edit/photo/straightening/c;
.super Ljava/lang/Object;
.source "StraighteningController.java"

# interfaces
.implements Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    :cond_1f
    return-void
.end method

.method public final a(F)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;F)F

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    :cond_28
    return-void
.end method
