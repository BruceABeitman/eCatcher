.class final Lcom/bbm/ui/activities/rs;
.super Lcom/bbm/j/u;
.source "GroupPictureCommentsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/rs;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v3, p0, Lcom/bbm/ui/activities/rs;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v2

    iget-object v3, v2, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v3, v4, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v4, p0, Lcom/bbm/ui/activities/rs;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->c(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/rs;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    iget-object v5, v5, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/bbm/g/am;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/af;

    move-result-object v3

    iget-object v4, v3, Lcom/bbm/g/af;->m:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v4, v5, :cond_16

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v3, v3, Lcom/bbm/g/af;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v3

    iget-object v4, v3, Lcom/bbm/g/o;->g:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v4, v5, :cond_16

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v4}, Lcom/bbm/d/a;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/bbm/g/o;->e:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/bbm/g/a;->j:Z

    if-nez v2, :cond_59

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_59
    iget-object v0, p0, Lcom/bbm/ui/activities/rs;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->b(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Z)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/rs;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    iget-object v2, p0, Lcom/bbm/ui/activities/rs;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->y(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V

    :goto_67
    move v0, v1

    goto :goto_16

    :cond_69
    iget-object v2, p0, Lcom/bbm/ui/activities/rs;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v2, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->b(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Z)Z

    goto :goto_67
.end method
