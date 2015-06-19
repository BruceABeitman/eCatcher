.class Lcom/umeng/fb/f;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/fb/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/umeng/fb/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/fb/f;->a:Lcom/umeng/fb/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/fb/f;->a:Lcom/umeng/fb/ConversationActivity;

    invoke-virtual {v0}, Lcom/umeng/fb/ConversationActivity;->finish()V

    return-void
.end method
