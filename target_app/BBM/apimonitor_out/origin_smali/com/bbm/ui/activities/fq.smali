.class final Lcom/bbm/ui/activities/fq;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/bbm/ui/b/ah;


# instance fields
.field final synthetic a:Lcom/bbm/n/a;

.field final synthetic b:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/n/a;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/fq;->b:Lcom/bbm/ui/activities/ConversationActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/fq;->a:Lcom/bbm/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/fq;->a:Lcom/bbm/n/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bbm/n/a;->a(I)V

    return-void
.end method