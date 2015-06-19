.class final Lcom/bbm/ui/activities/rw;
.super Lcom/bbm/j/k;
.source "GroupPictureCommentsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/rw;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    iget-object v1, p0, Lcom/bbm/ui/activities/rw;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v2, p0, Lcom/bbm/ui/activities/rw;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/g/am;->e(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;I)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/rw;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->e(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/bbm/ui/activities/rx;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/rx;-><init>(Lcom/bbm/ui/activities/rw;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_68

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/af;

    iget-object v0, v0, Lcom/bbm/g/af;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/rw;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->c(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/bbm/ui/activities/rw;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v0, v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->b(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;I)I

    :cond_64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_43

    :cond_68
    return-void
.end method
