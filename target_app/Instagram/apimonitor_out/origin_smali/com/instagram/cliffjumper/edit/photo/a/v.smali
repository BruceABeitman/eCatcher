.class final Lcom/instagram/cliffjumper/edit/photo/a/v;
.super Landroid/os/AsyncTask;
.source "PhotoFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/v;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/v;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    return-void
.end method

.method private static varargs a()Ljava/lang/Boolean;
    .registers 1

    invoke-static {}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Boolean;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/v;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->v()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "failed_to_load_library_filter_fragment"

    const-string v1, "failed_to_load_library_filter_fragment"

    invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/v;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->not_installed_correctly:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/a/w;

    invoke-direct {v2, p0}, Lcom/instagram/cliffjumper/edit/photo/a/w;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/v;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_8

    :cond_45
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/v;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->q(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    goto :goto_8
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/a/v;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/v;->a(Ljava/lang/Boolean;)V

    return-void
.end method
