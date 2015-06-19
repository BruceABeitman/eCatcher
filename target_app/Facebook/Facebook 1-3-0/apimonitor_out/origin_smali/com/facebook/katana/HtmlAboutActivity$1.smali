.class Lcom/facebook/katana/HtmlAboutActivity$1;
.super Ljava/lang/Object;
.source "HtmlAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/HtmlAboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/HtmlAboutActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/HtmlAboutActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/HtmlAboutActivity$1;->this$0:Lcom/facebook/katana/HtmlAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/katana/HtmlAboutActivity$1;->this$0:Lcom/facebook/katana/HtmlAboutActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.facebook.com/terms.php"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/HtmlAboutActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
