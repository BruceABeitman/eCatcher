.class final Lcom/userzoom/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/userzoom/ay;


# direct methods
.method constructor <init>(Lcom/userzoom/ay;)V
    .registers 2

    iput-object p1, p0, Lcom/userzoom/bd;->a:Lcom/userzoom/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    const-string v0, "InterceptDialog"

    const-string v1, "**** closeBrowser **** "

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/userzoom/bd;->a:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v0}, Luserzoom/com/InterceptDialog;->f(Luserzoom/com/InterceptDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/userzoom/bd;->a:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
