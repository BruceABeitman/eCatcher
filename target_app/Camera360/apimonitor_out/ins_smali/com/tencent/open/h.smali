.class public abstract Lcom/tencent/open/h;
.super Landroid/app/Dialog;
.source "ProGuard"
.field protected jsBridge:Lcom/tencent/open/a;
.field protected final mChromeClient:Landroid/webkit/WebChromeClient;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/tencent/open/e;
invoke-direct {v0, p0}, Lcom/tencent/open/e;-><init>(Lcom/tencent/open/h;)V
iput-object v0, p0, Lcom/tencent/open/h;->mChromeClient:Landroid/webkit/WebChromeClient;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;I)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
new-instance v0, Lcom/tencent/open/e;
invoke-direct {v0, p0}, Lcom/tencent/open/e;-><init>(Lcom/tencent/open/h;)V
iput-object v0, p0, Lcom/tencent/open/h;->mChromeClient:Landroid/webkit/WebChromeClient;
return-void
.end method
.method protected abstract onConsoleMessage(Ljava/lang/String;)V
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/tencent/open/a;
invoke-direct {v0}, Lcom/tencent/open/a;-><init>()V
iput-object v0, p0, Lcom/tencent/open/h;->jsBridge:Lcom/tencent/open/a;
return-void
.end method