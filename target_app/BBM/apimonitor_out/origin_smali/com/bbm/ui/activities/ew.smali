.class final Lcom/bbm/ui/activities/ew;
.super Ljava/lang/Object;
.source "ChildActivity.java"

# interfaces
.implements Lcom/slidingmenu/lib/i;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ev;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ev;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ew;->a:Lcom/bbm/ui/activities/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "Sliding menu closed"

    const-class v1, Lcom/bbm/ui/activities/ev;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ew;->a:Lcom/bbm/ui/activities/ev;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ev;->a()V

    return-void
.end method
