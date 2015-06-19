.class public final Lcom/bbm/ui/b/ai;
.super Ljava/lang/Object;
.source "SystemMessageDialog.java"
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
.registers 9
const/4 v1, 0x0
const/4 v6, -0x1
new-instance v0, Lcom/bbm/ui/BbmWebView;
invoke-direct {v0, p0}, Lcom/bbm/ui/BbmWebView;-><init>(Landroid/content/Context;)V
const/16 v2, 0x8c
const/4 v3, 0x1
invoke-virtual {v0, v2, v3}, Lcom/bbm/ui/BbmWebView;->setSetting(IZ)V
const-string v2, "bbm"
invoke-virtual {v0, v2}, Lcom/bbm/ui/BbmWebView;->a(Ljava/lang/String;)V
const-string v2, "bbmi"
invoke-virtual {v0, v2}, Lcom/bbm/ui/BbmWebView;->a(Ljava/lang/String;)V
const-string v2, "pin"
invoke-virtual {v0, v2}, Lcom/bbm/ui/BbmWebView;->a(Ljava/lang/String;)V
const-string v2, "http"
invoke-virtual {v0, v2}, Lcom/bbm/ui/BbmWebView;->a(Ljava/lang/String;)V
const-string v2, "https"
invoke-virtual {v0, v2}, Lcom/bbm/ui/BbmWebView;->a(Ljava/lang/String;)V
const-string v3, "text/html"
const-string v4, "UTF-8"
move-object v2, p1
move-object v5, v1
invoke-virtual/range {v0 .. v5}, Lcom/bbm/ui/BbmWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Landroid/app/AlertDialog$Builder;
invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
new-instance v2, Landroid/widget/RelativeLayout;
invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0b038e
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v4
invoke-direct {v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v4, 0xd
invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
invoke-virtual {v0, v3}, Lcom/bbm/ui/BbmWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0e0553
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
new-instance v2, Lcom/bbm/ui/b/aj;
invoke-direct {v2}, Lcom/bbm/ui/b/aj;-><init>()V
invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
move-result-object v0
return-object v0
.end method