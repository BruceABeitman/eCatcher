.class final Lcom/bbm/util/ek;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/util/ej;


# direct methods
.method constructor <init>(Lcom/bbm/util/ej;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/ek;->a:Lcom/bbm/util/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/bbm/util/ek;->a:Lcom/bbm/util/ej;

    iget-object v0, v0, Lcom/bbm/util/ej;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbm/util/ek;->a:Lcom/bbm/util/ej;

    iget-object v1, v1, Lcom/bbm/util/ej;->b:Lcom/bbm/d/gp;

    iget-object v2, p0, Lcom/bbm/util/ek;->a:Lcom/bbm/util/ej;

    iget-object v2, v2, Lcom/bbm/util/ej;->c:Lcom/bbm/d/ga;

    iget-object v3, p0, Lcom/bbm/util/ek;->a:Lcom/bbm/util/ej;

    iget-object v3, v3, Lcom/bbm/util/ej;->d:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/bbm/util/dy;->a(Landroid/app/Activity;Lcom/bbm/d/gp;Lcom/bbm/d/ga;)V

    return-void
.end method
