.class final Lcom/bbm/ui/activities/yf;
.super Ljava/lang/Object;
.source "NewChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/yf;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 7

    const/16 v3, 0xa

    if-nez p2, :cond_4f

    iget-object v0, p0, Lcom/bbm/ui/activities/yf;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->m(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/bbm/ui/activities/yf;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->m(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/yf;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->m(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/yf;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/NewChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0306

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/yf;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->m(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/yf;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->m(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lcom/bbm/ui/activities/yf;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->m(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/yf;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->m(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_4e
.end method
