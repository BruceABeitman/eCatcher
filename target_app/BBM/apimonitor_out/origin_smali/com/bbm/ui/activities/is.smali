.class final Lcom/bbm/ui/activities/is;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ir;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ir;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/is;->a:Lcom/bbm/ui/activities/ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/is;->a:Lcom/bbm/ui/activities/ir;

    iget-object v0, v0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bbm/ui/activities/is;->a:Lcom/bbm/ui/activities/ir;

    iget-object v0, v0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;

    sget-object v1, Lcom/bbm/ui/bl;->b:Lcom/bbm/ui/bl;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V

    :cond_13
    return-void
.end method
