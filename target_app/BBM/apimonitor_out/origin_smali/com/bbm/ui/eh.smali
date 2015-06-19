.class final Lcom/bbm/ui/eh;
.super Ljava/lang/Object;
.source "ObservableValueAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/ef;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ef;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/eh;->a:Lcom/bbm/ui/ef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/eh;->a:Lcom/bbm/ui/ef;

    invoke-static {v0}, Lcom/bbm/ui/ef;->d(Lcom/bbm/ui/ef;)Ljava/util/List;

    iget-object v0, p0, Lcom/bbm/ui/eh;->a:Lcom/bbm/ui/ef;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/ui/ef;->a(Lcom/bbm/ui/ef;Z)Z

    iget-object v0, p0, Lcom/bbm/ui/eh;->a:Lcom/bbm/ui/ef;

    invoke-virtual {v0}, Lcom/bbm/ui/ef;->notifyDataSetChanged()V

    return-void
.end method
