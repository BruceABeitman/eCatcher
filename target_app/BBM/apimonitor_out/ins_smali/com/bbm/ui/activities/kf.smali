.class final Lcom/bbm/ui/activities/kf;
.super Ljava/lang/Object;
.source "FileSearchActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/bbm/ui/activities/FileSearchActivity;
.method constructor <init>(Lcom/bbm/ui/activities/FileSearchActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/kf;->a:Lcom/bbm/ui/activities/FileSearchActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 7
const/16 v1, 0x8
const/4 v2, 0x0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
iget-object v0, p0, Lcom/bbm/ui/activities/kf;->a:Lcom/bbm/ui/activities/FileSearchActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FileSearchActivity;->b(Lcom/bbm/ui/activities/FileSearchActivity;)Lcom/bbm/ui/ListHeaderView;
move-result-object v4
if-eqz v3, :cond_34
move v0, v1
:goto_10
invoke-virtual {v4, v0}, Lcom/bbm/ui/ListHeaderView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/kf;->a:Lcom/bbm/ui/activities/FileSearchActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FileSearchActivity;->c(Lcom/bbm/ui/activities/FileSearchActivity;)Landroid/widget/GridView;
move-result-object v0
if-eqz v3, :cond_36
:goto_1b
invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V
if-nez v3, :cond_33
new-instance v0, Lcom/bbm/ui/activities/kj;
iget-object v1, p0, Lcom/bbm/ui/activities/kf;->a:Lcom/bbm/ui/activities/FileSearchActivity;
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/activities/kj;-><init>(Lcom/bbm/ui/activities/FileSearchActivity;B)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/kj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_33
return-void
:cond_34
move v0, v2
goto :goto_10
:cond_36
move v1, v2
goto :goto_1b
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method