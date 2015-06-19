.class final Lcom/bbm/ui/activities/rv;
.super Ljava/lang/Object;
.source "GroupPictureCommentsActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/rv;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 6
packed-switch p2, :pswitch_data_22
:goto_3
iget-object v0, p0, Lcom/bbm/ui/activities/rv;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
return-void
:pswitch_e
iget-object v0, p0, Lcom/bbm/ui/activities/rv;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->A(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/rv;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/rv;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
const v2, 0x7f0e0247
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_3
:pswitch_data_22
.packed-switch 0x0
:pswitch_e
.end packed-switch
.end method