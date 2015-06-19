.class final Lcom/bbm/ui/activities/og;
.super Ljava/lang/Object;
.source "GroupListItemsActivity.java"

# interfaces
.implements Lcom/bbm/ui/p;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupListItemsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/og;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/activities/og;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;

    invoke-static {v0, p1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;I)I

    iget-object v0, p0, Lcom/bbm/ui/activities/og;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->m(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    return-void
.end method
