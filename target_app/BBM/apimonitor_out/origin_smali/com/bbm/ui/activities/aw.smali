.class public final Lcom/bbm/ui/activities/aw;
.super Lcom/bbm/ui/ef;
.source "BroadcastActivity.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ef",
        "<",
        "Lcom/bbm/d/er;",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/activities/BroadcastActivity;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;Lcom/bbm/j/r;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/er;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/activities/aw;->b:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/aw;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    new-instance v1, Lcom/bbm/ui/activities/ax;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ax;-><init>(Lcom/bbm/ui/activities/aw;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aw;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ae

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a041b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/bbm/ui/activities/ax;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a041c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/activities/ax;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/d/er;

    iget-object v0, p1, Lcom/bbm/d/er;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/bbm/d/er;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ax;

    iget-object v1, p0, Lcom/bbm/ui/activities/aw;->b:Lcom/bbm/ui/activities/BroadcastActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/BroadcastActivity;->b:Lcom/bbm/d/a;

    iget-object v2, p2, Lcom/bbm/d/er;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v0, v0, Lcom/bbm/ui/activities/ax;->b:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
