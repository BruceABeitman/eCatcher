.class final Lcom/bbm/ui/activities/hz;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/hy;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/hy;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/hz;->a:Lcom/bbm/ui/activities/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/hz;->a:Lcom/bbm/ui/activities/hy;

    iget-object v0, v0, Lcom/bbm/ui/activities/hy;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->b(Lcom/bbm/ui/activities/ConversationActivity;Z)Z

    return-void
.end method
