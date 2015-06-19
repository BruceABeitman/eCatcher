.class final Lcom/bbm/ui/activities/zm;
.super Ljava/lang/Object;
.source "NewListItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/k;

.field final synthetic b:Lcom/bbm/ui/activities/zl;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/zl;Lcom/bbm/ui/b/k;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/zm;->b:Lcom/bbm/ui/activities/zl;

    iput-object p2, p0, Lcom/bbm/ui/activities/zm;->a:Lcom/bbm/ui/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "mItemCategory onSpinnerItemClicked Dialog Left Button Clicked"

    const-class v1, Lcom/bbm/ui/activities/NewListItemActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/zm;->b:Lcom/bbm/ui/activities/zl;

    iget-object v0, v0, Lcom/bbm/ui/activities/zl;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;

    iget-object v1, p0, Lcom/bbm/ui/activities/zm;->b:Lcom/bbm/ui/activities/zl;

    iget-object v1, v1, Lcom/bbm/ui/activities/zl;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->b:I

    iput v1, v0, Lcom/bbm/ui/l;->a:I

    iget-object v0, p0, Lcom/bbm/ui/activities/zm;->b:Lcom/bbm/ui/activities/zl;

    iget-object v0, v0, Lcom/bbm/ui/activities/zl;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/NewListItemActivity;->h:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/zm;->b:Lcom/bbm/ui/activities/zl;

    iget-object v1, v1, Lcom/bbm/ui/activities/zl;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/zm;->a:Lcom/bbm/ui/b/k;

    invoke-virtual {v0}, Lcom/bbm/ui/b/k;->dismiss()V

    return-void
.end method
