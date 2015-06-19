.class final Lcom/bbm/ui/activities/ur;
.super Ljava/lang/Object;
.source "InviteActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/InviteActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/InviteActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ur;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 10

    const/4 v5, 0x0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_46

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/bbm/ui/activities/ur;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0487

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bbm/ui/activities/InviteActivity;->a()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/bbm/ui/activities/fg;

    invoke-direct {v3, v1, v0, v5}, Lcom/bbm/ui/activities/fg;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/bbm/ui/activities/ur;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->e(Lcom/bbm/ui/activities/InviteActivity;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_46
    return v5

    :cond_47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {}, Lcom/bbm/ui/activities/InviteActivity;->a()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/fg;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v2, v0, v3, v4}, Lcom/bbm/ui/activities/fg;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ur;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->d(Lcom/bbm/ui/activities/InviteActivity;)I

    goto :goto_3c
.end method
