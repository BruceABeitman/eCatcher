.class final Lcom/cropimage/p;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/cropimage/o;


# direct methods
.method constructor <init>(Lcom/cropimage/o;)V
    .registers 2

    iput-object p1, p0, Lcom/cropimage/p;->a:Lcom/cropimage/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cropimage/p;->a:Lcom/cropimage/o;

    iget-object v0, v0, Lcom/cropimage/o;->a:Lcom/bbm/ui/activities/ajy;

    iget-object v1, p0, Lcom/cropimage/p;->a:Lcom/cropimage/o;

    iget-object v0, v0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cropimage/p;->a:Lcom/cropimage/o;

    iget-object v0, v0, Lcom/cropimage/o;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/cropimage/p;->a:Lcom/cropimage/o;

    iget-object v0, v0, Lcom/cropimage/o;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1c
    return-void
.end method
