.class final Lcom/bbm/k/c;
.super Lcom/bbm/d/b/l;
.source "GroupsCalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/l",
        "<",
        "Lcom/bbm/g/b;",
        "Lcom/bbm/k/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lcom/bbm/k/a;


# direct methods
.method constructor <init>(Lcom/bbm/k/a;Lcom/bbm/j/r;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/k/c;->d:Lcom/bbm/k/a;

    iput-object p3, p0, Lcom/bbm/k/c;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/l;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lcom/bbm/g/b;

    new-instance v0, Lcom/bbm/k/g;

    iget-object v1, p0, Lcom/bbm/k/c;->d:Lcom/bbm/k/a;

    iget-object v2, p0, Lcom/bbm/k/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/bbm/k/g;-><init>(Lcom/bbm/k/a;Lcom/bbm/g/b;Ljava/lang/String;)V

    return-object v0
.end method
