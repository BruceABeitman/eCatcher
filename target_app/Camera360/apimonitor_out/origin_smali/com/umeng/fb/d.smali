.class Lcom/umeng/fb/d;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/fb/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/umeng/fb/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/fb/d;->a:Lcom/umeng/fb/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/fb/d;)Lcom/umeng/fb/ConversationActivity;
    .registers 2

    iget-object v0, p0, Lcom/umeng/fb/d;->a:Lcom/umeng/fb/ConversationActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/umeng/fb/d;->a:Lcom/umeng/fb/ConversationActivity;

    const-class v2, Lcom/umeng/fb/ContactActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/umeng/fb/d;->a:Lcom/umeng/fb/ConversationActivity;

    invoke-virtual {v1, v0}, Lcom/umeng/fb/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_20

    new-instance v0, Lcom/umeng/fb/e;

    invoke-direct {v0, p0}, Lcom/umeng/fb/e;-><init>(Lcom/umeng/fb/d;)V

    iget-object v1, p0, Lcom/umeng/fb/d;->a:Lcom/umeng/fb/ConversationActivity;

    invoke-virtual {v0, v1}, Lcom/umeng/fb/e;->a(Landroid/app/Activity;)V

    :cond_20
    return-void
.end method
