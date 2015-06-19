.class final Lcom/bbm/ui/activities/jo;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"
.implements Lcom/bbm/ui/p;
.field final synthetic a:Lcom/bbm/ui/activities/FilePickerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/FilePickerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/jo;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 3
invoke-static {}, Lcom/bbm/ui/activities/kc;->values()[Lcom/bbm/ui/activities/kc;
move-result-object v0
aget-object v0, v0, p1
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->a(Lcom/bbm/ui/activities/kc;)Lcom/bbm/ui/activities/kc;
iget-object v0, p0, Lcom/bbm/ui/activities/jo;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->a(Lcom/bbm/ui/activities/FilePickerActivity;)Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/jo;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->b(Lcom/bbm/ui/activities/FilePickerActivity;)V
:cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/jo;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->c(Lcom/bbm/ui/activities/FilePickerActivity;)Z
return-void
.end method