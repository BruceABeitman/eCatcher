.class final Lcom/mobileapptracker/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobileapptracker/h;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/mobileapptracker/h;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/mobileapptracker/q;->a:Lcom/mobileapptracker/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mobileapptracker/q;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    new-instance v1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mobileapptracker/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    iget-object v1, p0, Lcom/mobileapptracker/q;->a:Lcom/mobileapptracker/h;

    invoke-static {v1, v0}, Lcom/mobileapptracker/h;->a(Lcom/mobileapptracker/h;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_1d
.end method
