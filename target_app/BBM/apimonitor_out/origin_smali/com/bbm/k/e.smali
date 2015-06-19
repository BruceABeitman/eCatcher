.class final Lcom/bbm/k/e;
.super Ljava/lang/Object;
.source "GroupsCalendarProvider.java"

# interfaces
.implements Lcom/bbm/util/cj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bbm/util/cj",
        "<",
        "Lcom/bbm/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/k/a;


# direct methods
.method constructor <init>(Lcom/bbm/k/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/k/e;->a:Lcom/bbm/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    check-cast p1, Lcom/bbm/g/a;

    const-string v0, ""

    iget-object v1, p1, Lcom/bbm/g/a;->v:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v0, p1, Lcom/bbm/g/a;->v:Ljava/lang/String;

    :cond_a
    return-object v0
.end method
