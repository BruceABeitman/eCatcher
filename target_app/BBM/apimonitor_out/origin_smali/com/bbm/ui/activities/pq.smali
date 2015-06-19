.class final Lcom/bbm/ui/activities/pq;
.super Lcom/bbm/d/b/m;
.source "GroupLobbyActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/m",
        "<",
        "Lcom/bbm/g/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/pp;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/pp;Lcom/bbm/j/r;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/pq;->a:Lcom/bbm/ui/activities/pp;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/bbm/g/q;

    iget-object v0, p1, Lcom/bbm/g/q;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/activities/pq;->a:Lcom/bbm/ui/activities/pp;

    iget-object v1, v1, Lcom/bbm/ui/activities/pp;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
