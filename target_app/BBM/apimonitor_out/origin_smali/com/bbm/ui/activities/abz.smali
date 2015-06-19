.class final Lcom/bbm/ui/activities/abz;
.super Lcom/bbm/d/b/m;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/m",
        "<",
        "Lcom/bbm/d/er;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/ui/activities/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ProfileActivity;Lcom/bbm/j/r;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/abz;->b:Lcom/bbm/ui/activities/ProfileActivity;

    iput-object p3, p0, Lcom/bbm/ui/activities/abz;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/bbm/d/er;

    iget-object v0, p1, Lcom/bbm/d/er;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/activities/abz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
