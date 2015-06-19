.class public Lcom/facebook/widget/WebDialog$Builder;
.super Lcom/facebook/widget/WebDialog$BuilderBase;
.source "WebDialog.java"
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public bridge synthetic build()Lcom/facebook/widget/WebDialog;
.registers 2
invoke-super {p0}, Lcom/facebook/widget/WebDialog$BuilderBase;->build()Lcom/facebook/widget/WebDialog;
move-result-object v0
return-object v0
.end method