.class final Lcom/bbm/ui/activities/uc;
.super Ljava/lang/Object;
.source "ImageViewerActivity.java"
.implements Lcom/slidingmenu/lib/k;
.field final synthetic a:Lcom/slidingmenu/lib/SlidingMenu;
.field final synthetic b:Lcom/bbm/ui/activities/ImageViewerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ImageViewerActivity;Lcom/slidingmenu/lib/SlidingMenu;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/uc;->b:Lcom/bbm/ui/activities/ImageViewerActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/uc;->a:Lcom/slidingmenu/lib/SlidingMenu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/uc;->a:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchInterceptEnabled(Z)V
return-void
.end method