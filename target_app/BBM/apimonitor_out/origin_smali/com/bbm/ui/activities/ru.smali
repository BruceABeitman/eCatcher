.class final Lcom/bbm/ui/activities/ru;
.super Ljava/lang/Object;
.source "GroupPictureCommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/i;

.field final synthetic b:Lcom/bbm/ui/activities/rt;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/rt;Lcom/bbm/ui/b/i;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/ru;->b:Lcom/bbm/ui/activities/rt;

    iput-object p2, p0, Lcom/bbm/ui/activities/ru;->a:Lcom/bbm/ui/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/ru;->b:Lcom/bbm/ui/activities/rt;

    iget-object v1, v0, Lcom/bbm/ui/activities/rt;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    iget-object v0, p0, Lcom/bbm/ui/activities/ru;->a:Lcom/bbm/ui/b/i;

    iget-object v0, v0, Lcom/bbm/ui/b/i;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ru;->a:Lcom/bbm/ui/b/i;

    invoke-virtual {v0}, Lcom/bbm/ui/b/i;->dismiss()V

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method
