.class final Lcom/bbm/ui/activities/zo;
.super Ljava/lang/Object;
.source "NewListItemActivity.java"

# interfaces
.implements Lcom/bbm/ui/p;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewListItemActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewListItemActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/zo;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    if-nez p1, :cond_2d

    new-instance v0, Lcom/bbm/ui/b/k;

    iget-object v1, p0, Lcom/bbm/ui/activities/zo;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    invoke-direct {v0, v1}, Lcom/bbm/ui/b/k;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e03b1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->setTitle(I)V

    const v1, 0x7f0e03ac

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->c(I)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->d(I)V

    new-instance v1, Lcom/bbm/ui/activities/zp;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/zp;-><init>(Lcom/bbm/ui/activities/zo;Lcom/bbm/ui/b/k;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->a(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/bbm/ui/activities/zq;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/zq;-><init>(Lcom/bbm/ui/activities/zo;Lcom/bbm/ui/b/k;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->b(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/bbm/ui/b/k;->show()V

    :cond_2d
    return-void
.end method
