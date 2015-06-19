.class final Lcom/bbm/ui/activities/mp;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/mo;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/mo;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/mp;->a:Lcom/bbm/ui/activities/mo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/mp;->a:Lcom/bbm/ui/activities/mo;

    iget-object v0, v0, Lcom/bbm/ui/activities/mo;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->u(Lcom/bbm/ui/activities/GroupConversationActivity;)V

    return-void
.end method
