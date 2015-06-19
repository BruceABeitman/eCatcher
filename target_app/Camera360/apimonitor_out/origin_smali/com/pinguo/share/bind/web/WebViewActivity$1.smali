.class Lcom/pinguo/share/bind/web/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/bind/web/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/bind/web/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/bind/web/WebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/web/WebViewActivity$1;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity$1;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    invoke-virtual {v0}, Lcom/pinguo/share/bind/web/WebViewActivity;->finish()V

    return-void
.end method
