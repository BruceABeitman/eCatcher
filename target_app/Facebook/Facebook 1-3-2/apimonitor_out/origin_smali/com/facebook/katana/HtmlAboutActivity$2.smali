.class Lcom/facebook/katana/HtmlAboutActivity$2;
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

    iput-object p1, p0, Lcom/facebook/katana/HtmlAboutActivity$2;->this$0:Lcom/facebook/katana/HtmlAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/HtmlAboutActivity$2;->this$0:Lcom/facebook/katana/HtmlAboutActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/HtmlAboutActivity;->finish()V

    return-void
.end method
