.class final Lcom/bbm/ui/activities/if;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/if;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/if;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->a(I)V

    return-void
.end method
