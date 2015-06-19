.class final Lcom/bbm/ui/e/bn;
.super Ljava/lang/Object;
.source "RealtimeLocationHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/bm;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/bm;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/bn;->a:Lcom/bbm/ui/e/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/e/bn;->a:Lcom/bbm/ui/e/bm;

    iget-object v0, v0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;

    check-cast v0, Lcom/bbm/ui/activities/ConversationActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->a(I)V

    return-void
.end method
