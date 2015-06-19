.class final Lcom/bbm/ui/activities/ky;
.super Ljava/lang/Object;
.source "GroupAdminEditActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupAdminEditActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupAdminEditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ky;->a:Lcom/bbm/ui/activities/GroupAdminEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/activities/ky;->a:Lcom/bbm/ui/activities/GroupAdminEditActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->a:Lcom/bbm/ui/activities/lb;

    invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/lb;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ac;

    iget-object v1, v0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/f/ae;->a:Ljava/lang/String;

    if-eqz v1, :cond_34

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/bbm/ui/activities/ky;->a:Lcom/bbm/ui/activities/GroupAdminEditActivity;

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/GroupAdminEditActivity;->a(Lcom/bbm/ui/activities/GroupAdminEditActivity;Lcom/bbm/g/ac;)Lcom/bbm/g/ac;

    iget-object v0, p0, Lcom/bbm/ui/activities/ky;->a:Lcom/bbm/ui/activities/GroupAdminEditActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupAdminEditActivity;->o()V

    :cond_34
    const/4 v0, 0x0

    return v0
.end method
