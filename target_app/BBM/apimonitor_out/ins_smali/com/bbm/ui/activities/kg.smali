.class final Lcom/bbm/ui/activities/kg;
.super Ljava/lang/Object;
.source "FileSearchActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/FileSearchActivity;
.method constructor <init>(Lcom/bbm/ui/activities/FileSearchActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/kg;->a:Lcom/bbm/ui/activities/FileSearchActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/kg;->a:Lcom/bbm/ui/activities/FileSearchActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FileSearchActivity;->b(Lcom/bbm/ui/activities/FileSearchActivity;)Lcom/bbm/ui/ListHeaderView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/kg;->a:Lcom/bbm/ui/activities/FileSearchActivity;
const v2, 0x7f0e0338
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/FileSearchActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/ListHeaderView;->setRightLabel(Ljava/lang/String;)V
return-void
.end method