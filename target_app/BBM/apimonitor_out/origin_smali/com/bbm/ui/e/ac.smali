.class final Lcom/bbm/ui/e/ac;
.super Ljava/lang/Object;
.source "FileTransferHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/b/a/l;

.field final synthetic b:Lcom/bbm/ui/e/s;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/s;Lcom/google/b/a/l;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/e/ac;->b:Lcom/bbm/ui/e/s;

    iput-object p2, p0, Lcom/bbm/ui/e/ac;->a:Lcom/google/b/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "ContactPin Clicked"

    const-class v1, Lcom/bbm/ui/e/s;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/e/ac;->b:Lcom/bbm/ui/e/s;

    invoke-static {v0}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbm/ui/e/ac;->a:Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/h/aq;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
