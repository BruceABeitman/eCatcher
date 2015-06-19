.class final Lcom/userzoom/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/userzoom/bi;


# direct methods
.method constructor <init>(Lcom/userzoom/bi;)V
    .registers 2

    iput-object p1, p0, Lcom/userzoom/bk;->a:Lcom/userzoom/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/userzoom/bk;->a:Lcom/userzoom/bi;

    iget-object v0, v0, Lcom/userzoom/bi;->c:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function() {window[\'uz_til\'].mobileStart("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/userzoom/bk;->a:Lcom/userzoom/bi;

    iget-object v2, v2, Lcom/userzoom/bi;->a:Luserzoom/com/InterceptDialogService;

    invoke-static {v2}, Luserzoom/com/InterceptDialogService;->a(Luserzoom/com/InterceptDialogService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); })()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
