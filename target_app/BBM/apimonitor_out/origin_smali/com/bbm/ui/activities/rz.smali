.class final Lcom/bbm/ui/activities/rz;
.super Ljava/lang/Object;
.source "GroupPictureCommentsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v7, 0x1

    const-string v0, "comment long click"

    const-class v1, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->e(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v0, p3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->c(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;I)I

    iget-object v0, p0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->e(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v0, p0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->f(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/ui/activities/sg;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/sg;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ag;

    iget-object v0, v0, Lcom/bbm/g/ag;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v2

    iget-object v6, p0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    new-instance v0, Lcom/bbm/ui/activities/sa;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    move-object v1, p0

    move-object v4, v2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/activities/sa;-><init>(Lcom/bbm/ui/activities/rz;Lcom/bbm/g/o;Lcom/bbm/d/a;Lcom/bbm/g/o;I)V

    invoke-static {v6, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Lcom/bbm/util/d/d;)Lcom/bbm/util/d/d;

    iget-object v0, p0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->g(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/util/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/d/d;->c()V

    return v7
.end method
