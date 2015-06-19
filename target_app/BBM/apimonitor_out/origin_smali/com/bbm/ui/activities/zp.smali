.class final Lcom/bbm/ui/activities/zp;
.super Ljava/lang/Object;
.source "NewListItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/k;

.field final synthetic b:Lcom/bbm/ui/activities/zo;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/zo;Lcom/bbm/ui/b/k;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/zp;->b:Lcom/bbm/ui/activities/zo;

    iput-object p2, p0, Lcom/bbm/ui/activities/zp;->a:Lcom/bbm/ui/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "mItemAssignTo onSpinnerItemClicked Dialog Right Button Clicked"

    const-class v1, Lcom/bbm/ui/activities/NewListItemActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/zp;->a:Lcom/bbm/ui/b/k;

    invoke-virtual {v0}, Lcom/bbm/ui/b/k;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/zp;->b:Lcom/bbm/ui/activities/zo;

    iget-object v1, v1, Lcom/bbm/ui/activities/zo;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/l;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/bbm/ui/activities/zp;->b:Lcom/bbm/ui/activities/zo;

    iget-object v2, v2, Lcom/bbm/ui/activities/zo;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    invoke-virtual {v2, v0, v1}, Lcom/bbm/ui/l;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_37
    iget-object v1, p0, Lcom/bbm/ui/activities/zp;->b:Lcom/bbm/ui/activities/zo;

    iget-object v1, v1, Lcom/bbm/ui/activities/zo;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/zp;->b:Lcom/bbm/ui/activities/zo;

    iget-object v0, v0, Lcom/bbm/ui/activities/zo;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/NewListItemActivity;->i:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/zp;->b:Lcom/bbm/ui/activities/zo;

    iget-object v1, v1, Lcom/bbm/ui/activities/zo;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/zp;->a:Lcom/bbm/ui/b/k;

    invoke-virtual {v0}, Lcom/bbm/ui/b/k;->dismiss()V

    return-void
.end method
