.class final Lcom/bbm/ui/c/bb;
.super Ljava/lang/Object;
.source "ChatsFragment.java"

# interfaces
.implements Lcom/bbm/util/d/c;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/bbm/ui/c/at;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/at;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/bb;->b:Lcom/bbm/ui/c/at;

    iput-object p2, p0, Lcom/bbm/ui/c/bb;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bb;->b:Lcom/bbm/ui/c/at;

    iget-object v0, p0, Lcom/bbm/ui/c/bb;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->a(Ljava/util/List;)V

    return-void
.end method
