.class  Lcom/twidroid/activity/MobileViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/MobileViewActivity;
.method constructor <init>(Lcom/twidroid/activity/MobileViewActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/MobileViewActivity$1;->a:Lcom/twidroid/activity/MobileViewActivity;
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
return-void
.end method
.method public onProgressChanged(Landroid/webkit/WebView;I)V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$1;->a:Lcom/twidroid/activity/MobileViewActivity;
invoke-static {v0, p2}, Lcom/twidroid/activity/MobileViewActivity;->a(Lcom/twidroid/activity/MobileViewActivity;I)V
const/16 v0, 0x64
if-ne p2, v0, :cond_e
iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$1;->a:Lcom/twidroid/activity/MobileViewActivity;
invoke-virtual {v0}, Lcom/twidroid/activity/MobileViewActivity;->b()V
:cond_e
return-void
.end method