.class  Lcom/facebook/AuthorizationClient$AuthDialogBuilder;
.super Lcom/facebook/widget/WebDialog$Builder;
.source "AuthorizationClient.java"
.field private static final OAUTH_DIALOG:Ljava/lang/String; = "oauth"
.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 5
const-string v0, "oauth"
invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public build()Lcom/facebook/widget/WebDialog;
.registers 7
invoke-virtual {p0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->getParameters()Landroid/os/Bundle;
move-result-object v3
const-string v0, "redirect_uri"
const-string v1, "fbconnect://success"
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "client_id"
invoke-virtual {p0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->getApplicationId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/widget/WebDialog;
invoke-virtual {p0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->getContext()Landroid/content/Context;
move-result-object v1
const-string v2, "oauth"
invoke-virtual {p0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->getTheme()I
move-result v4
invoke-virtual {p0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->getListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;
move-result-object v5
invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V
return-object v0
.end method