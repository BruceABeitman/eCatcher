.class final Lcom/bbm/ui/activities/ut;
.super Lcom/bbm/j/u;
.source "InviteActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/InviteActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/InviteActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 13

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->f(Lcom/bbm/ui/activities/InviteActivity;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v0

    if-eqz v0, :cond_139

    move v0, v1

    :goto_1e
    invoke-static {}, Lcom/bbm/ui/activities/InviteActivity;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    move v4, v2

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/fg;

    iget v6, v0, Lcom/bbm/ui/activities/fg;->c:I

    packed-switch v6, :pswitch_data_13c

    :cond_39
    move v0, v4

    move v4, v0

    goto :goto_28

    :pswitch_3c
    iget-object v0, v0, Lcom/bbm/ui/activities/fg;->b:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    iget-object v6, v6, Lcom/bbm/ui/activities/InviteActivity;->a:Lcom/bbm/d;

    iget-object v6, v6, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v6, v0}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;

    move-result-object v6

    iget-object v0, v6, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;

    sget-object v10, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v10, :cond_53

    move v3, v1

    goto :goto_28

    :cond_53
    iget-object v0, v6, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;

    sget-object v10, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v10, :cond_39

    iget-object v0, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->f(Lcom/bbm/ui/activities/InviteActivity;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_69
    :goto_69
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gs;

    iget-object v0, v0, Lcom/bbm/d/gs;->c:Ljava/lang/String;

    iget-object v11, v6, Lcom/bbm/d/fv;->b:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, v6, Lcom/bbm/d/fv;->a:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/bbm/d/fv;->b:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v1

    goto :goto_69

    :cond_8b
    if-eqz v3, :cond_8e

    :goto_8d
    return v2

    :cond_8e
    if-eqz v4, :cond_126

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_db

    iget-object v0, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    const v3, 0x7f0e026d

    invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_a0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_e6

    iget-object v0, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    const v4, 0x7f0e0280

    invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_b0
    const-string v0, ""

    move v5, v2

    :goto_b3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-object v0, v6

    goto :goto_b3

    :cond_db
    iget-object v0, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    const v3, 0x7f0e0267

    invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_a0

    :cond_e6
    iget-object v0, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    const v4, 0x7f0e026a

    invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_b0

    :cond_f1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e0553

    new-instance v3, Lcom/bbm/ui/activities/uu;

    invoke-direct {v3, p0, v9, v7}, Lcom/bbm/ui/activities/uu;-><init>(Lcom/bbm/ui/activities/ut;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e0171

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_123
    :goto_123
    move v2, v1

    goto/16 :goto_8d

    :cond_126
    iget-object v0, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->g(Lcom/bbm/ui/activities/InviteActivity;)Z

    move-result v0

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0, v7}, Lcom/bbm/ui/activities/InviteActivity;->a(Lcom/bbm/ui/activities/InviteActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/InviteActivity;->finish()V

    goto :goto_123

    :cond_139
    move v0, v2

    goto/16 :goto_1e

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_3c
    .end packed-switch
.end method
