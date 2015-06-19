.class final Lcom/bbm/ui/activities/x;
.super Ljava/lang/Object;
.source "AvatarViewerActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/AvatarViewerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/x;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 5
const-string v0, "slide menu onItemClick"
const-class v1, Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/x;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/x;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->c(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
return-void
.end method