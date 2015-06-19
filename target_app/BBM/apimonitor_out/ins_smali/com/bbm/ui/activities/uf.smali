.class final Lcom/bbm/ui/activities/uf;
.super Ljava/lang/Object;
.source "ImageViewerActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/ue;
.method constructor <init>(Lcom/bbm/ui/activities/ue;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/uf;->a:Lcom/bbm/ui/activities/ue;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/uf;->a:Lcom/bbm/ui/activities/ue;
iget-object v0, v0, Lcom/bbm/ui/activities/ue;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/bbm/ui/activities/ImageViewerActivity;)Lcom/bbm/ui/FooterActionBar;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
return-void
.end method