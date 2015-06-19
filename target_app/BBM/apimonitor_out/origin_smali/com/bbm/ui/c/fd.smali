.class final Lcom/bbm/ui/c/fd;
.super Ljava/lang/Object;
.source "PeopleYouKnowFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/ey;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ey;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/fd;->a:Lcom/bbm/ui/c/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    if-eqz p2, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/c/fd;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v0}, Lcom/bbm/ui/c/ey;->h(Lcom/bbm/ui/c/ey;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_c
    iget-object v0, p0, Lcom/bbm/ui/c/fd;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v0}, Lcom/bbm/ui/c/ey;->e(Lcom/bbm/ui/c/ey;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/bbm/ui/c/fd;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v0}, Lcom/bbm/ui/c/ey;->h(Lcom/bbm/ui/c/ey;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/fd;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v1}, Lcom/bbm/ui/c/ey;->i(Lcom/bbm/ui/c/ey;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_c
.end method
