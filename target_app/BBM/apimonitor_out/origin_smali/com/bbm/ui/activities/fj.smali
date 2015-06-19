.class final Lcom/bbm/ui/activities/fj;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/fi;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/fi;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/fj;->a:Lcom/bbm/ui/activities/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "mAttachmentView RemoveAttachment Clicked"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fj;->a:Lcom/bbm/ui/activities/fi;

    iget-object v0, v0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->f()V

    return-void
.end method
