.class final Lcom/bbm/ui/activities/nl;
.super Ljava/lang/Object;
.source "GroupEventsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupEventsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupEventsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/nl;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "addEventButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "addEvent onClick"

    const-class v1, Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/nl;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->a(Lcom/bbm/ui/activities/GroupEventsActivity;)V

    return-void
.end method
