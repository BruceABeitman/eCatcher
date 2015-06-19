.class final Lcom/instagram/cliffjumper/edit/photo/a/aa;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/aa;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->b:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->b:Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/filter/IgFilter;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    :cond_1b
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v1

    iget-boolean v1, v1, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-nez v1, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->w(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/filter/IgFilter;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->w(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->w(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->b:Z

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    goto :goto_a

    :cond_54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_a

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a()V

    goto :goto_a
.end method
