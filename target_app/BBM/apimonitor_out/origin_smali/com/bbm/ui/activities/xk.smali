.class final Lcom/bbm/ui/activities/xk;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;J)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/xk;->b:Lcom/bbm/ui/activities/MainActivity;

    iput-wide p2, p0, Lcom/bbm/ui/activities/xk;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_18

    iget-object v1, p0, Lcom/bbm/ui/activities/xk;->b:Lcom/bbm/ui/activities/MainActivity;

    iget-wide v1, p0, Lcom/bbm/ui/activities/xk;->a:J

    invoke-static {v0, v1, v2}, Lcom/bbm/ui/activities/MainActivity;->a(ZJ)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v1

    sget-object v2, Lcom/bbm/c/p;->b:Lcom/bbm/c/p;

    invoke-virtual {v1, v2}, Lcom/bbm/c/c;->a(Lcom/bbm/c/p;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
