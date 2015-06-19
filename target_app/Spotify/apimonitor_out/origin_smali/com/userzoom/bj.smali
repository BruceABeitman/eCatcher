.class final Lcom/userzoom/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/userzoom/bi;


# direct methods
.method constructor <init>(Lcom/userzoom/bi;)V
    .registers 2

    iput-object p1, p0, Lcom/userzoom/bj;->a:Lcom/userzoom/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/userzoom/bj;->a:Lcom/userzoom/bi;

    iget-object v0, v0, Lcom/userzoom/bi;->c:Landroid/webkit/WebView;

    const-string v1, "https://s.userzoom.com"

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "https://s.userzoom.com"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
