.class final Lcom/bbm/ui/activities/tg;
.super Lcom/bbm/d/b/m;
.source "GroupSelectNewAdminActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/m",
        "<",
        "Lcom/bbm/g/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;Lcom/bbm/j/r;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/tg;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/bbm/g/ac;

    iget-boolean v0, p1, Lcom/bbm/g/ac;->a:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
