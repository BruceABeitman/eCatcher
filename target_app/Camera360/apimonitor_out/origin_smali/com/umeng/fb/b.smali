.class Lcom/umeng/fb/b;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/fb/ContactActivity;


# direct methods
.method constructor <init>(Lcom/umeng/fb/ContactActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/fb/b;->a:Lcom/umeng/fb/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/umeng/fb/b;->a:Lcom/umeng/fb/ContactActivity;

    invoke-static {v0}, Lcom/umeng/fb/ContactActivity;->a(Lcom/umeng/fb/ContactActivity;)Lcom/umeng/fb/FeedbackAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/fb/FeedbackAgent;->getUserInfo()Lcom/umeng/fb/model/UserInfo;

    move-result-object v0

    if-nez v0, :cond_48

    new-instance v0, Lcom/umeng/fb/model/UserInfo;

    invoke-direct {v0}, Lcom/umeng/fb/model/UserInfo;-><init>()V

    move-object v1, v0

    :goto_12
    invoke-virtual {v1}, Lcom/umeng/fb/model/UserInfo;->getContact()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1d
    iget-object v2, p0, Lcom/umeng/fb/b;->a:Lcom/umeng/fb/ContactActivity;

    invoke-static {v2}, Lcom/umeng/fb/ContactActivity;->b(Lcom/umeng/fb/ContactActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "plain"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/umeng/fb/model/UserInfo;->setContact(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/umeng/fb/b;->a:Lcom/umeng/fb/ContactActivity;

    invoke-static {v0}, Lcom/umeng/fb/ContactActivity;->a(Lcom/umeng/fb/ContactActivity;)Lcom/umeng/fb/FeedbackAgent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/fb/FeedbackAgent;->setUserInfo(Lcom/umeng/fb/model/UserInfo;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_43

    :goto_3d
    iget-object v0, p0, Lcom/umeng/fb/b;->a:Lcom/umeng/fb/ContactActivity;

    invoke-virtual {v0}, Lcom/umeng/fb/ContactActivity;->a()V

    return-void

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d

    :cond_48
    move-object v1, v0

    goto :goto_12
.end method
