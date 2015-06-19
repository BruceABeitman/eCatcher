.class Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/InnerCircleManagementActivity$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/InnerCircleManagementActivity$1;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iput-object p2, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/twidroid/activity/h;
    .registers 8

    const/4 v5, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v0, v0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->c(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v0, v0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->c(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    iget-object v4, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v4, v4, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v4}, Lcom/twidroid/activity/InnerCircleManagementActivity;->c(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/b/a/b;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/twidroid/b/a/b;->c(I)Z

    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v0, v0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->c(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    if-nez v1, :cond_7d

    iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v1, v1, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v0

    if-eqz v0, :cond_9a

    iget v1, v0, Lcom/twidroid/model/twitter/User;->j:I

    if-ne v1, v5, :cond_9a

    move-object v1, v0

    :cond_62
    :goto_62
    if-eqz v1, :cond_68

    iget v0, v1, Lcom/twidroid/model/twitter/User;->j:I

    if-nez v0, :cond_77

    :cond_68
    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v0, v0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->c(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->c(I)Z

    :cond_77
    new-instance v0, Lcom/twidroid/activity/h;

    invoke-direct {v0, v1}, Lcom/twidroid/activity/h;-><init>(Lcom/twidroid/model/twitter/User;)V

    :goto_7c
    return-object v0

    :cond_7d
    iget-object v4, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v4, v4, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v4}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v0

    if-eqz v0, :cond_99

    iget v4, v0, Lcom/twidroid/model/twitter/User;->j:I
    :try_end_95
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_1 .. :try_end_95} :catch_9c

    if-ne v4, v5, :cond_99

    move-object v1, v0

    goto :goto_62

    :cond_99
    move-object v0, v1

    :cond_9a
    move-object v1, v0

    goto :goto_1e

    :catch_9c
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V

    new-instance v0, Lcom/twidroid/activity/h;

    invoke-direct {v0, v1}, Lcom/twidroid/activity/h;-><init>(Lcom/ubermedia/net/a/a/a;)V

    goto :goto_7c
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->a([Ljava/lang/Void;)Lcom/twidroid/activity/h;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twidroid/activity/h;)V
    .registers 6

    iget-object v0, p1, Lcom/twidroid/activity/h;->a:Lcom/twidroid/model/twitter/User;

    if-nez v0, :cond_67

    iget-object v0, p1, Lcom/twidroid/activity/h;->b:Lcom/ubermedia/net/a/a/a;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/twidroid/activity/h;->b:Lcom/ubermedia/net/a/a/a;

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_da

    :pswitch_11
    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v0, v0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v1, v1, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    const v2, 0x7f0c0027

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_28
    :goto_28
    return-void

    :pswitch_29
    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v0, v0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v2, v2, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v2}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v2, v2, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    const v3, 0x7f0c017d

    invoke-virtual {v2, v3}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_28

    :cond_67
    iget-object v0, p1, Lcom/twidroid/activity/h;->a:Lcom/twidroid/model/twitter/User;

    if-eqz v0, :cond_9b

    iget-object v0, p1, Lcom/twidroid/activity/h;->a:Lcom/twidroid/model/twitter/User;

    iget v0, v0, Lcom/twidroid/model/twitter/User;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9b

    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v0, v0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->c(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p1, Lcom/twidroid/activity/h;->a:Lcom/twidroid/model/twitter/User;

    iget-object v2, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v2, v2, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v2}, Lcom/twidroid/activity/InnerCircleManagementActivity;->c(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/User;I)Z

    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v0, v0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    iget-object v1, p1, Lcom/twidroid/activity/h;->a:Lcom/twidroid/model/twitter/User;

    iget-object v2, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->a:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;Lcom/twidroid/model/twitter/User;Landroid/view/View;)V

    goto :goto_28

    :cond_9b
    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v0, v0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v2, v2, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    const v3, 0x7f0c0328

    invoke-virtual {v2, v3}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->b:Lcom/twidroid/activity/InnerCircleManagementActivity$1;

    iget-object v2, v2, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v2}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_28

    :pswitch_data_da
    .packed-switch 0x3
        :pswitch_29
        :pswitch_11
        :pswitch_29
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/twidroid/activity/h;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->a(Lcom/twidroid/activity/h;)V

    return-void
.end method
