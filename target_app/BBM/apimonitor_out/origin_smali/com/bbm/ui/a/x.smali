.class final Lcom/bbm/ui/a/x;
.super Ljava/lang/Object;
.source "GroupMessageListAdapter.java"


# instance fields
.field final a:Lcom/bbm/g/ad;

.field final b:Lcom/bbm/g/o;

.field final c:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Lcom/bbm/d/gp;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Z

.field final synthetic f:Lcom/bbm/ui/a/s;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/a/s;Lcom/bbm/g/ad;ZZLcom/bbm/g/o;Lcom/google/b/a/l;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/g/ad;",
            "ZZ",
            "Lcom/bbm/g/o;",
            "Lcom/google/b/a/l",
            "<",
            "Lcom/bbm/d/gp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/bbm/ui/a/x;->f:Lcom/bbm/ui/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/bbm/ui/a/x;->d:Z

    iput-boolean v0, p0, Lcom/bbm/ui/a/x;->e:Z

    iput-object p2, p0, Lcom/bbm/ui/a/x;->a:Lcom/bbm/g/ad;

    iput-boolean p3, p0, Lcom/bbm/ui/a/x;->d:Z

    iput-boolean p4, p0, Lcom/bbm/ui/a/x;->e:Z

    iput-object p5, p0, Lcom/bbm/ui/a/x;->b:Lcom/bbm/g/o;

    iput-object p6, p0, Lcom/bbm/ui/a/x;->c:Lcom/google/b/a/l;

    return-void
.end method
