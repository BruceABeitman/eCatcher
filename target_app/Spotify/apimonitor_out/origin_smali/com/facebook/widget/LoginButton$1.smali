.class final Lcom/facebook/widget/LoginButton$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/facebook/internal/aj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/widget/LoginButton;


# direct methods
.method constructor <init>(Lcom/facebook/widget/LoginButton;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/widget/LoginButton$1;->b:Lcom/facebook/widget/LoginButton;

    iput-object p2, p0, Lcom/facebook/widget/LoginButton$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/LoginButton$1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;Z)Lcom/facebook/internal/aj;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/facebook/internal/aj;

    iget-object v0, p0, Lcom/facebook/widget/LoginButton$1;->b:Lcom/facebook/widget/LoginButton;

    invoke-static {v0, p1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;Lcom/facebook/internal/aj;)V

    return-void
.end method
