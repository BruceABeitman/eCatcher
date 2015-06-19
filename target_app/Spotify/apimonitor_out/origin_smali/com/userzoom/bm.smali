.class public final Lcom/userzoom/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/webkit/WebView;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/userzoom/bm;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/userzoom/bm;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/userzoom/bm;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/userzoom/bm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
