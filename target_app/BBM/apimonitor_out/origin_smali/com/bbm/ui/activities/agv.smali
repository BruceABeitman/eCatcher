.class final Lcom/bbm/ui/activities/agv;
.super Lcom/bbm/d/b/n;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/n",
        "<",
        "Lcom/bbm/d/gp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ShareActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ShareActivity;Lcom/bbm/j/r;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/agv;->a:Lcom/bbm/ui/activities/ShareActivity;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/n;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    check-cast p1, Lcom/bbm/d/gp;

    invoke-static {p1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
