.class final Lcom/bbm/ui/activities/i;
.super Ljava/lang/Object;
.source "AddChannelPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/AddChannelPostActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/i;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/i;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->finish()V

    return-void
.end method
